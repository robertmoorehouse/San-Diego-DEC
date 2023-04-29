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

public partial class join : BasePage
    {
    string pagename = "San Diego District Export Council";
    string urlidentifier = "";
    string pageID = "1";
    string metadatakeywords = "San Diego District Export Council";
    string metadatadescription = "San Diego District Export Council";
    string pageheadimage = "";
    string pagemenutitle = "J O I N";
    string pagetitle = "";
    string pagemenumaster = "";

    Boolean loginrequired = false;

    protected override void OnPreInit(EventArgs e)
        {
        pageID = "1";
        }

    protected void Page_Load(object sender, EventArgs e)
        {

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

    protected void btnRegister_Click(object sender, EventArgs e)
        {
        string firstname = "" +  "" + txtFirstName.Text.ToString();
        string lasname = "" +  txtLastName.Text.ToString();
        string email = "" +  txtEmail.Text.ToString();
        string password = "" +  txtPassword.Text.ToString();
        string password1 = "" +  txtPasswordConfirm.Text.ToString();
        Boolean newsletter = chkNewsletter.Checked;
        string prefix = "" +  ddlPrefix.SelectedValue.ToString();
        string ipaddress = "" +  Request.ServerVariables["remote_addr"].ToString();
        int memberID = 0;
        string returntext = "" +  "";
        string position = "" +  txtPosition.Text.ToString();
        string company = "" +  txtCompany.Text.ToString();
        string address1 = "" +  txtAddress1.Text.ToString();
        string address2 = "" +  txtAddress2.Text.ToString();
        string city = "" +  txtCity.Text.ToString();
        string state = "" +  txtState.Text.ToString();
        string country = "" +  txtCountry.Text.ToString();
        string zip = "" +  txtZip.Text.ToString();
        string phone = "" +  txtPhone.Text.ToString();
        string fax = "" +  txtFax.Text.ToString();

        if (string.IsNullOrEmpty(firstname) || string.IsNullOrEmpty(lasname) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
            lblnewsletter.Text = "Please ensure all required fields are completed.<br /><br />";
            }
        else
            {
            if (password.ToString() != password1.ToString())
                {
                lblnewsletter.Text = "Both password fields contain different values please correct.<br /><br />";
                }
            else
                {
                pnlRegistered.Visible = true;
                pnlRegister.Visible = false;

                returntext = Helpers.savemember(ref memberID, "web registration", prefix, firstname, lasname, email, password, newsletter, position, company, phone, fax, ipaddress,"0");
                
                string addresstype = "postal";
                string addressdescription = "postal address";

                returntext = Helpers.saveaddress(0, Convert.ToInt32(memberID), addresstype, addressdescription, address1, address2, city, state, zip, country, 1, ipaddress);
                addresstype = "billing";
                addressdescription = "billing address";

                returntext = Helpers.saveaddress(0, Convert.ToInt32(memberID), addresstype, addressdescription, address1, address2, city, state, zip, country, 1, ipaddress);
                

                switch (returntext.ToString())
                    {
                    case "101":
                        returntext = "Sorry we are unable to register you as this email address is already registered.<br><br>Please login instead.";
                        break;
                    case "102":
                        returntext = "Member record Updated.";
                        break;
                    case "103":
                        returntext = "Thank you for registering, we will be in touch shortly.";
                        break;
                    default:
                        returntext = "Sorry we have encountered an error please try again.";
                        break;
                    }
                lblnewsletter.Text = returntext.ToString();
                }
            }
        }
    }

