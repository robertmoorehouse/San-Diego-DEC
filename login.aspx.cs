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

public partial class login : BasePage
    {
    string pagename = "San Diego District Export Council";
    string urlidentifier = "";
    string pageID = "1";
    string metadatakeywords = "San Diego District Export Council";
    string metadatadescription = "San Diego District Export Council";
    string pageheadimage = "";
    string pagemenutitle = "L O G I N";
    string pagetitle = "";
    string pagemenumaster = "";

    Boolean loginrequired = false;

    protected override void OnPreInit(EventArgs e)
        {
        pageID = "1";      
        }

    protected void Page_Load(object sender, EventArgs e)
        {        
        if (Page.IsPostBack)
            {
            string strEmail = txtEmail.Text.ToString();
            string strpassword = txtPassword.Text.ToString();
            string ipaddress = Request.ServerVariables["remote_addr"].ToString();

            string returntext = Helpers.loginmember(strEmail.ToString(), strpassword.ToString(), ipaddress.ToString());

            switch (returntext.ToString())
                {
                case "100":
                    Session["member"] = "false";
                    Session["admin"] = "false";
                    returntext = "We do not have this email address registered please join.";
                    break;
                case "101":
                    Session["member"] = "true";
                    Session["admin"] = "false";
                    Response.Redirect("default.aspx?pageID=22&pagename=memberarea"); 
                    break;
                case "102":
                    Session["member"] = "false";
                    Session["admin"] = "false";
                    returntext = "The password is incorrect please try again.";
                    break;
                case "103":
                    Session["member"] = "false";
                    Session["admin"] = "false";
                    returntext = "Your member application has not yet been approved please wait for confirmation before trying to log in.";
                    break;
                default:
                    Session["member"] = "false";
                    Session["admin"] = "false"; 
                    returntext = "Sorry we have encountered an error please try again.";
                    break;
                }
            lblError.Text = returntext.ToString();

            }

        populatePageContent();
        populateHeaderMenuLinks();
        populatePageHead();

        }

    protected void populatePageContent()
        {        
        pageID = "1";            
        SqlDataReader rdr = Helpers.GetPage(pageID);

        while (rdr.Read())
            {
            pagename = rdr["page_title"].ToString();
            pagetitle = rdr["page_title"].ToString();
            urlidentifier = rdr["url_identifier"].ToString();
            metadatakeywords = rdr["meta_data_keywords"].ToString();
            metadatadescription = rdr["meta_data_description"].ToString();
            HttpContext.Current.Session["created"] = rdr["created"].ToString();
            HttpContext.Current.Session["modified"] = rdr["modified"].ToString();
            pageheadimage = rdr["page_head_image"].ToString();
            pagemenutitle = rdr["page_menu_title"].ToString();
            loginrequired = Convert.ToBoolean(rdr["login_required"].ToString());
            pagemenumaster = rdr["page_menu_master"].ToString();
            }
        try
            {
            rdr.Close();
            }
        catch
            {
            }
        if (string.IsNullOrEmpty(pagemenumaster))
            {
            pagemenumaster = "1";
            }

        ltMenu.Text = HttpUtility.HtmlDecode(Helpers.generateNewMenu(pagemenumaster, pagemenutitle, pageID));

        img_head_bigpic.ImageUrl = "~/userfiles/image/websitebranding/pageheaders/" + pageheadimage.ToString();

        }

    protected void populateHeaderMenuLinks()
        {
        //get the top level menu items

        string onoff = "off";
        string menunumber = "1";
        string menutitle = "";
        string menulink = "";

        SqlDataReader rdr = Helpers.GetMenuItems(0);
        while (rdr.Read())
            {
            menunumber = rdr["id"].ToString();
            menutitle = rdr["menu_title"].ToString();
            menulink = "~/default.aspx?pageID=" + rdr["pagelink"].ToString() + "&pagename=" + menutitle + "&mn=" + menunumber.ToString() + "&pn=" + pagemenumaster.ToString();
            if (menunumber.ToString() == pagemenumaster.ToString())
                {
                onoff = "_on";
                menulink = "";
                }
            else
                {
                onoff = "";
                }
            try
                {
                HyperLink hyp = (HyperLink)Master.FindControl("hyp_head_menu_" + menunumber.ToString());
                Image img = (Image)Master.FindControl("img_head_menu_" + menunumber.ToString());
                img.ImageUrl = "userfiles/image/websitebranding/headermenuitems/menu_" + menutitle + onoff + ".gif";
                hyp.NavigateUrl = menulink.ToString();
                }
            catch (Exception ex)
                {
                ltMenu.Text = ex.Message;
                }

            }
        try
            {
            rdr.Close();
            }
        catch
            {
            }
        }

    protected void populatePageHead()
        {
        HtmlHead Header = (HtmlHead)Master.FindControl("head1");
        Header.Title = pagename;

        HtmlMeta a = (HtmlMeta)Master.FindControl("metaDesc");
        a.Content = metadatadescription;

        HtmlMeta b = (HtmlMeta)Master.FindControl("metaKeywords");
        b.Content = metadatakeywords;

        }

    protected void populateSideMenu()
        {

        }
    }

