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

public partial class admin_cms_menueditor : System.Web.UI.Page
{
    string menuID = "0";

    protected void Page_Load(object sender, EventArgs e)
        {

       
        if (!Page.IsPostBack)
            {
            if (Request.QueryString["menu"] == "new")
                {
                populateDropdowns();
                lblPageTitle.Text = "Ceate New Menu Item";
                txtmenuID.Text = "0";
                }
            else
                {

                try
                    {
                    menuID = Request.QueryString["menu"];
                    txtmenuID.Text = menuID;

                    populateData(menuID);
                    }
                catch (Exception ex)
                    {
                    Response.Write(ex.ToString());
                    txtmenuID.Text = "0";
                    }
                }
            }
        else
            {
            lblPageTitle.Text = "Posted Back";
            }
        }

    protected void populateDropdowns()
        {
        SqlDataReader rdr = Helpers.GetMenuItems(999); //999 = get all
        ListItem newlistitem = new ListItem("No Parent : Top Menu Item", "0");
        ddlMenuitems.Items.Add(newlistitem);
        while (rdr.Read())
            {
            ListItem newitem = new ListItem(rdr["menu_title"].ToString(), rdr["id"].ToString());
            ddlMenuitems.Items.Add(newitem);
            }

        try
            {
            rdr.Close();
            }
        catch
            {
            }
        rdr = Helpers.GetPageListSDR();
        newlistitem = new ListItem("Select CMS Page", "0");
        ddlPages.Items.Add(newlistitem);

        while (rdr.Read())
            {
            ListItem newitem = new ListItem(rdr["page_title"].ToString(), rdr["id"].ToString());
            ddlPages.Items.Add(newitem);
            }
        try
            {
            rdr.Close();
            }
        catch
            {
            }
        }

    protected void populateData(string menuID)
        {
        SqlDataReader rdr = Helpers.GetMenuItem(menuID);
        // iterate through results, printing each to console
        string parentID = "";
        string link = "";

        while (rdr.Read())
            {
            link = rdr["pagelink"].ToString();
            if (link.IndexOf(".") >0)
                {
                txtlink.Text = link;
                }
            txtmenuID.Text = rdr["id"].ToString();
            txtmenu_title.Text = rdr["menu_title"].ToString();
            parentID = rdr["parent_menu"].ToString();
            }
        try
            {
            rdr.Close();
            }
        catch
            {
            }
        populateDropdowns();

        try
            {
            ddlMenuitems.ClearSelection();
            ddlMenuitems.Items.FindByValue(parentID).Selected = true;
            }
        catch
        { }

        try
            {            
            ddlPages.ClearSelection();
            ddlPages.Items.FindByValue(link).Selected = true;
            }
        catch
        { }

        }

    protected void btnReset_Click(object sender, EventArgs e)
        {
        Response.Redirect("cms_menueditor.aspx?menu=" + txtmenuID.Text.ToString());
        }

    protected void btnBack_Click(object sender, EventArgs e)
        {
        Response.Redirect("cms_managemenus.aspx");
        }

    protected void btnSubmit_Click(object sender, EventArgs e)
        {
        string pagelink = txtlink.Text;
        if (!String.IsNullOrEmpty(pagelink) || ddlPages.SelectedValue.ToString() != "0")
            {
            Boolean completed = savepage();
            if (completed)
                {
                Response.Redirect("cms_managemenus.aspx");
                }
            }
        }

    protected void btnDelete_Click(object sender, EventArgs e)
        {
        string menuID = txtmenuID.Text;
        if (!String.IsNullOrEmpty(menuID))
            {
            Helpers.deleteMenu(menuID);
            Response.Redirect("cms_managemenus.aspx");   
            }
        }
    
    protected Boolean savepage()
        {
        string menuID = txtmenuID.Text.ToString();
        string title = txtmenu_title.Text;
        string parentMenu = ddlMenuitems.SelectedValue.ToString();
        string pageID = ddlPages.SelectedValue.ToString();
        string pagelink = txtlink.Text;
        
        Boolean savedworked = false;

        //if txtlink then save as is else look up page details and save with them
        if (String.IsNullOrEmpty(pagelink))
            {
            SqlDataReader rdr = Helpers.GetMenuItem(menuID);
            rdr = Helpers.GetPage(pageID);
            while (rdr.Read())
                {
                title = rdr["page_menu_text"].ToString();
                }
            pagelink = pageID;
            try
                {
                rdr.Close();
                }
            catch
                {
                }
            }
        else
            {
            //save with existing values
            }

        try
            {

            //Response.Write(menuID + " | " + title + " | " + parentMenu + " | " + pagelink);
            savedworked = Helpers.SaveMenu(menuID,title, parentMenu, pagelink);

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
}
