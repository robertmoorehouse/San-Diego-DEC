using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.IO;
using System.Text;

public partial class admin_cms_pageeditor : System.Web.UI.Page
    {
    string pageID = "0";

    protected void Page_Load(object sender, EventArgs e)
        {

        btnPreview.Attributes.Add("OnClientClick", "javascript:window.open('../preview.aspx', '', 'menubar=1,resizable=1,fullscreen=no, scrollbars=auto')");
        
        setupFCKEditor();

        if (!Page.IsPostBack)
            {
            if (Request.QueryString["page"] == "new")
                {
                lblPageTitle.Text = "Ceate New Page";
                txtPageID.Text = "0";
                showHeaderImageFiles();
                populateMenu("1"); 
                }
            else
                {
                
                try
                    {
                    pageID = Request.QueryString["page"];
                    txtPageID.Text = pageID;
                    //Response.Write(pageID);
                    
                    populateData(pageID);
                    }
                catch(Exception ex)
                    {
                    Response.Write(ex.ToString());
                    txtPageID.Text = "0";
                    }
                }
            }
        else
            {
            lblPageTitle.Text = "Posted Back";
            }
        }

    private string GetBasePath()
        {
        string path = Request.Url.AbsolutePath;
        int index = path.LastIndexOf("/fckeditor/");
        return path.Remove(index, path.Length - index);
        }

    protected void setupFCKEditor()
        {
        FCKeditor1.BasePath = "~/fckeditor/";//this.GetBasePath();

        if (Request.QueryString["lang"] != null)
            {
            // Disable the language automatic detection (note that we always use strings).
            FCKeditor1.Config["AutoDetectLanguage"] = "false";

            // Set the language to the querystring value.
            FCKeditor1.Config["DefaultLanguage"] = Request.QueryString["lang"];
            }
        else
            {
            // Enable language automatic detection (default).
            FCKeditor1.Config["AutoDetectLanguage"] = "true";

            // Set the default language to English (default). Used if the user
            //language is not available in FCKeditor.
            FCKeditor1.Config["DefaultLanguage"] = "en";
            }
        FCKeditor1.Height = 400;

        }

    protected void PopulateEditor()
        {
        string page = Request.QueryString["page"];
        if (page == "" | page == null)
            {
            page = "blank.txt";
            }
        FCKeditor1.Value = HttpUtility.HtmlDecode(Helpers.populateContent(page));
        }

    protected void btnSubmit_Click(object sender, EventArgs e)
        {
        Boolean completed = savepage();
        if (completed)
            {
            Response.Redirect("cms_managepages.aspx");
            }
        }

    protected void btnSaveandContinue_Click(object sender, EventArgs e)
        {
        Boolean completed = savepage();
        }

    protected void btnSaveasNew_Click(object sender, EventArgs e)
        {
        txtPageID.Text = "0";
        Boolean completed = savepage();
        if (completed)
            {
            Response.Redirect("cms_managepages.aspx");
            }
        }

    protected Boolean savepage()
        {
        string content = HttpUtility.HtmlEncode(FCKeditor1.Value);
        string title = txtpage_title.Text;
        string identifier = txtpage_identifier.Text;
        string status = ddlpage_is_active.SelectedValue.ToString();
        string keywords = txtpage_meta_keywords.Text;
        string description = txtpage_meta_description.Text;
        string template = ddlpage_style_template.SelectedValue.ToString();
        string pageID = txtPageID.Text;
        string headerimagefile = txtCurrentImage.Text.ToString();
        string loginrequired = ddlloginrequired.SelectedValue.ToString();
        string menutext = txtMenuText.Text.ToString();
        string menutitle = txtMenuTitle.Text.ToString();
        string menumaster = ddlpage_menu_master.SelectedValue.ToString();
        foreach (RepeaterItem rptItem in rptImages.Items)
            {
            CheckBox chk = (CheckBox)rptItem.FindControl("chkBox");
            if (chk.Checked)
                {
                TextBox txtimgname = (TextBox)rptItem.FindControl("txtthisImage");
                headerimagefile = txtimgname.Text.ToString();
                }
            }
        txtCurrentImage.Text = headerimagefile.ToString();
        Boolean savedworked = false;
        try
            {
            
           // Response.Write(pageID + " | " + content + " | " +  title + " | " +  identifier + " | " +  status + " | " +  keywords + " | " +  description + " | " +  template + " | " +  headerimagefile + " | " +  loginrequired + " | " +  menutext + " | " +  menutitle + " | " +  menumaster);
            savedworked = Helpers.SavePage(pageID, content, title, identifier, status, keywords, description, template, headerimagefile, loginrequired, menutext, menutitle, menumaster);

            if (savedworked)
                {
                lblPageTitle.Text = "Saved.";
                }
            else
                {
                lblPageTitle.Text = "Saved Failed!";
                }
            }
        catch (Exception ex)
            {
            lblPageTitle.Text = ex.ToString();
            }

        return savedworked;

        }

    protected void btnReset_Click(object sender, EventArgs e)
        {
        Response.Redirect("cms_pageeditor.aspx?page=" + txtPageID.Text.ToString());
        }

    protected void btnBack_Click(object sender, EventArgs e)
        {
        Response.Redirect("cms_managepages.aspx");
        }

    protected void populateData(string pageID)
        {
        SqlDataReader rdr = Helpers.GetPage(pageID);
        // iterate through results, printing each to console
        string loginrequired = "0";
        string active = "0";
        string menumaster = "1";

        while (rdr.Read())
            {
            FCKeditor1.Value = HttpUtility.HtmlDecode(rdr["page_content"].ToString());
            txtpage_title.Text = rdr["page_title"].ToString();
            txtpage_identifier.Text = rdr["url_identifier"].ToString();
            active = rdr["status"].ToString();
            txtpage_meta_keywords.Text = rdr["meta_data_keywords"].ToString();
            txtpage_meta_description.Text = rdr["meta_data_description"].ToString();
            ddlpage_style_template.SelectedValue = rdr["page_template"].ToString();
            lblPageTitle.Text = "Edit '" + txtpage_identifier.Text + "'";
            //imgHeadSelected.ImageUrl = "~/images/pageheaders" + rdr["page_head_image"].ToString();
            txtCurrentImage.Text = rdr["page_head_image"].ToString();
            loginrequired = rdr["login_required"].ToString();
            txtMenuText.Text = rdr["page_menu_text"].ToString();
            txtMenuTitle.Text = rdr["page_menu_title"].ToString();
            menumaster = rdr["page_menu_master"].ToString();
            }
        rdr.Close();
        if (loginrequired.ToLower() == "true")
            {
            loginrequired = "1";
            }
        else
            {
            loginrequired = "0";
            }

        if (active.ToLower() == "true")
            {
            active = "1";
            }
        else
            {
            active = "0";
            }
        
        ddlpage_is_active.ClearSelection();
        ddlpage_is_active.Items.FindByValue(active).Selected = true;
        
        ddlloginrequired.ClearSelection();
        ddlloginrequired.Items.FindByValue(loginrequired).Selected = true;

        populateMenu(menumaster);        
        
        showHeaderImageFiles();

        }

    protected void populateMenu(string menumaster)
        {
        //populate the ddl for menus first
        SqlDataReader rdr = Helpers.GetMenuItems(999); //999 = get all
        while(rdr.Read())
            {
            ListItem newitem = new ListItem(rdr["menu_title"].ToString(), rdr["id"].ToString());
            ddlpage_menu_master.Items.Add(newitem);
            }
        rdr.Close();
        try
            {
            ddlpage_menu_master.ClearSelection();
            ddlpage_menu_master.Items.FindByValue(menumaster).Selected = true;
            }
        catch
            {
            }
        }
    protected void showHeaderImageFiles()
        {
        try
            {
            string diLoc = HttpContext.Current.Server.MapPath("~/userfiles/image/websitebranding/pageheaders");
            DirectoryInfo di = new DirectoryInfo(diLoc);
            FileInfo[] allFiles = di.GetFiles("*.*");

            ArrayList aryFiles = new ArrayList();

            foreach (FileInfo f in allFiles)
                {
                FileInfo Name = (FileInfo)f;
                
                aryFiles.Add(Name);
                }
            rptImages.DataSource = aryFiles;
            rptImages.DataBind();
            }
        catch (Exception ex)
            {
            Response.Write(ex.ToString());
            }
        }

    public string getimageurl(string name)
        {
        return "~/userfiles/image/websitebranding/pageheaders/" + name.ToString();
        }

    public Boolean getimagechecked(string name)
        {
        if (txtCurrentImage.Text.ToString() == name.ToString())
            {
            return true;
            }
        else
            {
            return false;
            }
        }

    protected void btnPreview_Click(object sender, EventArgs e)
        {

        string content = HttpUtility.HtmlEncode(FCKeditor1.Value);
        string title = txtpage_title.Text;
        string identifier = txtpage_identifier.Text;
        string status = ddlpage_is_active.SelectedValue.ToString();
        string keywords = txtpage_meta_keywords.Text;
        string description = txtpage_meta_description.Text;
        string template = ddlpage_style_template.SelectedValue.ToString();
        string pageID = txtPageID.Text;
        string headerimagefile = txtCurrentImage.Text.ToString();
        string loginrequired = ddlloginrequired.SelectedValue.ToString();
        string menutext = txtMenuText.Text.ToString();
        string menutitle = txtMenuTitle.Text.ToString();
        string menumaster = ddlpage_menu_master.SelectedValue.ToString();
        foreach(RepeaterItem rptItem in rptImages.Items)
            {
            CheckBox chk = (CheckBox)rptItem.FindControl("chkBox");
            if(chk.Checked)
                {
                TextBox txtimgname = (TextBox)rptItem.FindControl("txtthisImage");
                headerimagefile = txtimgname.Text.ToString();
                }
            }

        Session["templatepage"] = template;
        Session["status"] = status;
        Session["page_content"] = content;
        Session["page_title"] = title;
        Session["url_identifier"] = identifier;
        Session["meta_data_keywords"] = keywords;
        Session["meta_data_description"] = description;
        Session["page_head_image"] = headerimagefile;
        Session["page_menu_title"] = menutitle;
        Session["page_menu_master"] = menumaster;



        string strScript = "<script language=JavaScript>";
        strScript += "window.open(window.open('../preview.aspx', '', 'menubar=1,resizable=1,fullscreen=no, scrollbars=auto');";
        strScript += "</script>";

        if((!Page.IsStartupScriptRegistered("clientScript")))
            {
            Page.RegisterStartupScript("clientScript", strScript);
            }


        }
    }


