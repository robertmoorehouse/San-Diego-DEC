using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Text;

public partial class preview : BasePage
    {
    string pagecontent = "";
    string pagename = "San Diego District Export Council";
    string urlidentifier = "";
    string pageID = "1";
    string status = "0";
    string metadatakeywords = "San Diego District Export Council";
    string metadatadescription = "San Diego District Export Council";
    string pageheadimage = "";
    string pagemenutitle = "";
    string pagetitle = "";
    string pagemenumaster = "";

    Boolean loginrequired = false;

    protected override void OnPreInit(EventArgs e)
        {
        
        string masterpage = "MasterPage.master";

        masterpage = Session["templatepage"].ToString();
        if(masterpage=="MC")
            { 
            masterpage = "MasterPageWide.master"; 
            } 
        else 
            {
            masterpage = "MasterPage.master";
            }
        status = Session["status"].ToString();

        this.MasterPageFile = masterpage;

        }

    protected void Page_Load(object sender, EventArgs e)
        {

        populatePageContent();
        populateHeaderMenuLinks();
        populatePageHead();

        }

    protected void populatePageContent()
        {
        pagecontent = HttpUtility.HtmlDecode(Session["page_content"].ToString());
        pagename = Session["page_title"].ToString();
        pagetitle = Session["page_title"].ToString();
        urlidentifier = Session["url_identifier"].ToString();
        metadatakeywords = Session["meta_data_keywords"].ToString();
        metadatadescription = Session["meta_data_description"].ToString();
        pageheadimage = Session["page_head_image"].ToString();
        pagemenutitle = Session["page_menu_title"].ToString();
        pagemenumaster = Session["page_menu_master"].ToString();
           
        //add into pagecontent any dynamic elements
        if(!string.IsNullOrEmpty(pagecontent))
            {

            string tmp = "";
            //short events table
            if(pagecontent.Contains("&lt;#ShortEventTable#&gt;</span>") || pagecontent.Contains("<#ShortEventTable#></span>"))
                {
                tmp = Helpers.getShortEventsTable();
                pagecontent = pagecontent.ToString().Replace("&lt;#ShortEventTable#&gt;</span>", "</span>" + tmp);
                pagecontent = pagecontent.ToString().Replace("<#ShortEventTable#></span>", "</span>" + tmp);
                }
            if(pagecontent.Contains("&lt;#ShortEventTable#&gt;") || pagecontent.Contains("<#ShortEventTable#>"))
                {
                tmp = Helpers.getShortEventsTable();
                pagecontent = pagecontent.ToString().Replace("&lt;#ShortEventTable#&gt;", tmp);
                pagecontent = pagecontent.ToString().Replace("<#ShortEventTable#>", tmp);
                }

            if(pagecontent.Contains("&lt;#EventTable#&gt;</span>") || pagecontent.Contains("<#EventTable#></span>"))
                {
                tmp = Helpers.getLongEventsTable("1");
                string newdata1 = HttpUtility.HtmlDecode(tmp);
                pagecontent = pagecontent.ToString().Replace("&lt;#EventTable#&gt;</span>", "</span>" + newdata1.ToString());
                pagecontent = pagecontent.ToString().Replace("<#EventTable#></span>", "</span>" + newdata1.ToString());
                }
            if(pagecontent.Contains("&lt;#EventTable#&gt;") || pagecontent.Contains("<#EventTable#>"))
                {
                tmp = Helpers.getLongEventsTable("1");
                string newdata1 = HttpUtility.HtmlDecode(tmp);
                pagecontent = pagecontent.ToString().Replace("&lt;#EventTable#&gt;", newdata1.ToString());
                pagecontent = pagecontent.ToString().Replace("<#EventTable#>", newdata1.ToString());
                }
            if(!string.IsNullOrEmpty((string)Session["eventpageheader"]))
                {
                img_head_bigpic.ImageUrl = "~/userfiles/image/websitebranding/eventheaders/" + Session["eventpageheader"].ToString();
                Session["eventpageheader"] = "";
                }
            else
                {
                img_head_bigpic.ImageUrl = "~/userfiles/image/websitebranding/pageheaders/" + pageheadimage.ToString();
                }

            ltContent.Text = pagecontent;
            }
       
        if(string.IsNullOrEmpty(pagemenumaster))
            {
            pagemenumaster = "1";
            }

        ltMenu.Text = HttpUtility.HtmlDecode(Helpers.generateNewMenu(pagemenumaster, pagemenutitle, pageID));

       
        }

    protected void populateHeaderMenuLinks()
        {
        //get the top level menu items

        string onoff = "off";
        string menunumber = "1";
        string menutitle = "";
        string menulink = "";

        SqlDataReader rdr = Helpers.GetMenuItems(0);
        while(rdr.Read())
            {
            menunumber = rdr["id"].ToString();
            menutitle = rdr["menu_title"].ToString();
            menulink = "~/default.aspx?pageID=" + rdr["pagelink"].ToString() + "&pagename=" + menutitle + "&mn=" + menunumber.ToString() + "&pn=" + pagemenumaster.ToString();
            if(menunumber.ToString() == pagemenumaster.ToString())
                {
                onoff = "_on";
                //menulink = "";
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
            catch(Exception ex)
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