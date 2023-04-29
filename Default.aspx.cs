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

public partial class _Default : BasePage
    {
    string pagecontent = "";
    string pagename = "San Diego District Export Council";
    //string pagemenu = "";
    string urlidentifier = "";
    string pageID = "1";
    string status = "0";
    string metadatakeywords = "San Diego District Export Council";
    string metadatadescription = "San Diego District Export Council";
    //string pagetemplate = "";
    //string created = "";
    //string modified = "";
    string pageheadimage = "";
    string pagemenutitle = "";
    //string templatepage = "";
    string pagetitle = "";
    string pagemenumaster = "";

    Boolean loginrequired = false;

    protected override void OnPreInit(EventArgs e)
        {
        try
            {
            pageID = HttpContext.Current.Request.QueryString["pageID"].ToLower();
            }
        catch
            {
            pageID = "1";
            }

        SqlDataReader rdr = Helpers.GetPage(pageID);
        string masterpage = "MasterPage.master";

        while (rdr.Read())
            {
            masterpage = rdr["templatepage"].ToString();
            status = rdr["status"].ToString();
            }
        try
            {
            rdr.Close();
            }
        catch
            {
            }
        this.MasterPageFile = masterpage;
        if (status == "0")
            {
            Response.Redirect("default.aspx?pagenotactive");
            }
        }

    protected void Page_Load(object sender, EventArgs e)
        {

        populatePageContent();
        populateHeaderMenuLinks();
        populatePageHead();

        }

    protected void populatePageContent()
        {

        try
            {
            pageID = Request.QueryString["pageid"];
            if (String.IsNullOrEmpty(pageID))
                {
                pageID = "1";
                }
            }
        catch
            {
            pageID = "1";
            }

        SqlDataReader rdr = Helpers.GetPage(pageID);


        while (rdr.Read())
            {
            pagecontent = HttpUtility.HtmlDecode(rdr["page_content"].ToString());
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
        //add into pagecontent any dynamic elements
        if (!string.IsNullOrEmpty(pagecontent))
            {
            //if (pageID != "60")
            //    {
                string tmp = "";
                //short events table
                if (pagecontent.Contains("&lt;#ShortEventTable#&gt;</span>") || pagecontent.Contains("<#ShortEventTable#></span>"))
                    {
                    tmp = Helpers.getShortEventsTable();
                    pagecontent = pagecontent.ToString().Replace("&lt;#ShortEventTable#&gt;</span>", "</span>" + tmp);
                    pagecontent = pagecontent.ToString().Replace("<#ShortEventTable#></span>", "</span>" + tmp);
                    }
                if (pagecontent.Contains("&lt;#ShortEventTable#&gt;") || pagecontent.Contains("<#ShortEventTable#>"))
                    {
                    tmp = Helpers.getShortEventsTable();
                    pagecontent = pagecontent.ToString().Replace("&lt;#ShortEventTable#&gt;", tmp);
                    pagecontent = pagecontent.ToString().Replace("<#ShortEventTable#>", tmp);
                    }

                //single event table fixed page ID of 60
            //    }
            //else
            //    {
                //string eventpageheader = "";
                //StringBuilder eventsTable = new StringBuilder();
                //DataSet ds = default(DataSet);
                //int norecs = 0;
                //ds = Helpers.GetEvent(Request.QueryString["event"].ToString());
                //eventsTable.AppendLine("<table cellspacing='1' cellpadding='1' border='0' align='left' >");
                //eventsTable.AppendLine("<tbody>");
                //eventsTable.AppendLine("<tr>");
                //eventsTable.AppendLine("<td colspan='2'>&nbsp;</td>");
                //eventsTable.AppendLine("</tr>");

                //foreach (DataRow row in ds.Tables[0].Rows)
                //    {
                //    eventpageheader = row["headerimagefile"].ToString();
                //    norecs = +1;
                //    eventsTable.AppendLine("<tr>");
                //    eventsTable.AppendLine("<td colspan='2'><span class='table_content_title_blue'>" + row["title"].ToString() + "</span></td>");
                //    eventsTable.AppendLine("</tr>");
                //    eventsTable.AppendLine("<tr>");
                //    eventsTable.AppendLine("<td colspan='2'>&nbsp;</td>");
                //    eventsTable.AppendLine("</tr>");
                //    eventsTable.AppendLine("<tr>");
                //    eventsTable.AppendLine("<td width='60%' valign='top'><span class='table_content_grey'>" + row["description"].ToString() + "</span></td>");
                //    eventsTable.AppendLine("<td width='40%' valign='top'><span class='table_content_title_grey'>Date :</span><br/><span class='table_content_grey'>" + row["eventdate"].ToString() + "</span>");
                //    eventsTable.AppendLine("<br/>");
                //    eventsTable.AppendLine("<br/>");
                //    eventsTable.AppendLine("<span class='table_content_title_grey'>Time :</span><br/><span class='table_content_grey'>" + row["eventtime"].ToString() + "</span>");
                //    eventsTable.AppendLine("<br/>");
                //    eventsTable.AppendLine("<br/>");
                //    eventsTable.AppendLine("<span class='table_content_title_grey'>Where :</span><br/><span class='table_content_grey'>" + row["location_name"].ToString() + "</span>");
                //    eventsTable.AppendLine("<br/>");
                //    eventsTable.AppendLine("<br/>");
                //    eventsTable.AppendLine("<span class='table_content_title_grey'>Telephone :</span><br/><span class='table_content_grey'>" + row["location_telephone"].ToString() + "</span>");
                //    eventsTable.AppendLine("<br/>");
                //    eventsTable.AppendLine("<br/>");
                //    eventsTable.AppendLine("<span class='table_content_title_grey'>Cost :</span><br/><span class='table_content_grey'>" + row["costdescription"].ToString() + "</span>");
                //    eventsTable.AppendLine("<br/>");
                //    eventsTable.AppendLine("<br/>");
                //    if (!string.IsNullOrEmpty(row["maplink"].ToString()))
                //        {
                //        eventsTable.AppendLine("<span class='table_content_grey'><a href='" + row["maplink"].ToString() + "' target='_blank'>Click for MAP</a></span>");
                //        }
                //    else
                //        {
                //        eventsTable.AppendLine("");
                //        }
                //    eventsTable.AppendLine("<br/>");
                //    eventsTable.AppendLine("<br/>");

                //    if (row["showbook"].ToString() == "True")
                //        {
                //        if (!string.IsNullOrEmpty(row["bookingurl"].ToString()))
                //            {
                //            eventsTable.AppendLine("<span class='table_content_grey'><a href='" + row["bookingurl"].ToString() + "' target='_blank'>Click Here to Book</a></span>");
                //            }
                //        else
                //            {
                //            eventsTable.AppendLine("");
                //            }
                //        }

                //    eventsTable.AppendLine("</td>");
                //    eventsTable.AppendLine("</tr>");
                //    eventsTable.AppendLine("<tr>");
                //    eventsTable.AppendLine("<td colsapn='2'><span class='table_content_title_grey'>Contacts</span></td>");
                //    eventsTable.AppendLine("");
                //    eventsTable.AppendLine("</tr>");
                //    eventsTable.AppendLine("<tr>");
                //    eventsTable.AppendLine("<td><span class='table_content_grey'>Name : " + row["contact_name"].ToString() + "</span></td>");
                //    eventsTable.AppendLine("<td><span class='table_content_grey'>Name : " + row["contact1_name"].ToString() + "</span></td>");
                //    eventsTable.AppendLine("</tr>");
                //    eventsTable.AppendLine("<tr>");
                //    eventsTable.AppendLine("<td><span class='table_content_grey'>Telephone : " + row["contact_phone"].ToString() + "</span></td>");
                //    eventsTable.AppendLine("<td><span class='table_content_grey'>Telephone : " + row["contact1_phone"].ToString() + "</span></td>");
                //    eventsTable.AppendLine("</tr>");
                //    eventsTable.AppendLine("<tr>");
                //    eventsTable.AppendLine("<td><span class='table_content_grey'>Email : " + row["contact_email"].ToString() + "</span></td>");
                //    eventsTable.AppendLine("<td><span class='table_content_grey'>Email : " + row["contact1_email"].ToString() + "</span></td>");
                //    eventsTable.AppendLine("</tr>");
                //    eventsTable.AppendLine("<tr>");
                //    eventsTable.AppendLine("<td colspan='2'>&nbsp;</td>");
                //    eventsTable.AppendLine("</tr>");
                //    }

                //if (norecs == 0)
                //    {
                //    eventsTable.AppendLine("<tr>");
                //    eventsTable.AppendLine("<td colspan='2'><span class='table_content_grey'>We currently have no events available, please check back in the future or join our newsletter to be notified of the next event when it is added.</span></td>");
                //    eventsTable.AppendLine("</tr>");
                //    }
                //eventsTable.AppendLine("</tbody></table>");

                
                //
                if (pagecontent.Contains("&lt;#EventTable#&gt;</span>") || pagecontent.Contains("<#EventTable#></span>"))
                    {
                    tmp = Helpers.getLongEventsTable(Request.QueryString["event"].ToString());
                    string newdata1 = HttpUtility.HtmlDecode(tmp);
                    pagecontent = pagecontent.ToString().Replace("&lt;#EventTable#&gt;</span>", "</span>" + newdata1.ToString());
                    pagecontent = pagecontent.ToString().Replace("<#EventTable#></span>", "</span>" + newdata1.ToString());
                    }
                if (pagecontent.Contains("&lt;#EventTable#&gt;") || pagecontent.Contains("<#EventTable#>"))
                    {
                    tmp = Helpers.getLongEventsTable(Request.QueryString["event"].ToString());
                    string newdata1 = HttpUtility.HtmlDecode(tmp);
                    pagecontent = pagecontent.ToString().Replace("&lt;#EventTable#&gt;", newdata1.ToString());
                    pagecontent = pagecontent.ToString().Replace("<#EventTable#>", newdata1.ToString());
                    }
                if (!string.IsNullOrEmpty((string)Session["eventpageheader"]))
                    {
                    img_head_bigpic.ImageUrl = "~/userfiles/image/websitebranding/eventheaders/" + Session["eventpageheader"].ToString();
                    Session["eventpageheader"] = "";
                    }
                else
                    {
                    img_head_bigpic.ImageUrl = "~/userfiles/image/websitebranding/pageheaders/" + pageheadimage.ToString();
                    }
                }
            //}

        if (loginrequired)
            {
            if ((string)Session["member"] != "true")
                {
                ltContent.Text = "You must be logged in to view this page";
                }
            else
                {
                ltContent.Text = pagecontent;
                }
            }
        else
            {
            ltContent.Text = pagecontent;
            }


        if (string.IsNullOrEmpty(pagename))
            {
            pagename = "home.txt";
            }

        if (string.IsNullOrEmpty(pagemenumaster))
            {
            pagemenumaster = "1";
            }

        ltMenu.Text = HttpUtility.HtmlDecode(Helpers.generateNewMenu(pagemenumaster, pagemenutitle, pageID));

        if (pageID != "60")
            {
            img_head_bigpic.ImageUrl = "~/userfiles/image/websitebranding/pageheaders/" + pageheadimage.ToString();
            }
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