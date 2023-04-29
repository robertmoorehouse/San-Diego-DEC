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

public partial class admin_cms_eventeditor : System.Web.UI.Page
{
    string eventID = "0";

    protected void Page_Load(object sender, EventArgs e)
        {

        setupFCKEditor();
        

        if (!Page.IsPostBack)
            {
            ddlCountry.DataSource = Helpers.GetCountries();
            ddlCountry.DataBind();
            startdate.TimeVisible = false;
            startdate.Caption = "";
            lastbookingdate.TimeVisible = false;
            lastbookingdate.Caption = "";

            if (Request.QueryString["event"] == "new" || Request.QueryString["event"] == "0")
                {
                lblEventTitle.Text = "Ceate New Event";
                ddlCountry.Items.FindByValue("United States").Selected = true;
                txtEventID.Text = "0";
                showHeaderImageFiles();
                }
            else
                {

                try
                    {
                    eventID = Request.QueryString["event"];
                    txtEventID.Text = eventID;
                    //Response.Write(eventID);

                    populateData(eventID);
                    }
                catch (Exception ex)
                    {
                    Response.Write(ex.ToString());
                    txtEventID.Text = "0";
                    }
                }
            }
        else
            {
            lblEventTitle.Text = "Posted Back";
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

    protected void btnSubmit_Click(object sender, EventArgs e)
        {
        Boolean completed = savepage();
        if (completed)
            {
            Response.Redirect("cms_manageevents.aspx");
            }
        }

    protected void btnSaveandContinue_Click(object sender, EventArgs e)
        {
        Boolean completed = savepage();
        }

    protected void btnSaveasNew_Click(object sender, EventArgs e)
        {
        txtEventID.Text = "0";
        Boolean completed = savepage();
        if (completed)
            {
            Response.Redirect("cms_manageevents.aspx");
            }
        }

    protected Boolean savepage()
        {
        string eventid = txtEventID.Text.ToString();
        string title = txtevent_title.Text.ToString();
        string short_description = HttpUtility.HtmlEncode(txtshort_description.Text.ToString().Replace(Environment.NewLine,"<br/>"));
        string description = HttpUtility.HtmlEncode(FCKeditor1.Value);
        string eventdate = txteventdate.Text.ToString();
        string eventtime = txtEventTime.Text.ToString();
        string location_name = txtLocation_Name.Text.ToString();
        string location_telephone = txtLocation_telephone.Text.ToString();
        string cost = txtCost.Text.ToString();
        string costdescription = txtCostDescription.Text.ToString();
        string maplink = txtMapLink.Text.ToString();
        string contact_name = txtcontact_name.Text.ToString();
        string contact_phone = txtcontact_phone.Text.ToString();
        string contact_email = txtcontact_email.Text.ToString();
        string contact1_name = txtcontact1_name.Text.ToString();
        string contact1_phone = txtcontact1_phone.Text.ToString();
        string contact1_email = txtcontact1_email.Text.ToString();
        string location_address = txtlocation_address.Text.ToString();
        string loaction_address1 = txtlocation_address1.Text.ToString();
        string loaction_city = txtlocation_city.Text.ToString();
        string location_state = txtlocation_state.Text.ToString();
        string location_zip = txtlocation_zip.Text.ToString();
        string location_country = ddlCountry.SelectedItem.Value.ToString();
        string strstartdate = startdate.DateTimeValue.ToString();
        string strbooktilldate = lastbookingdate.DateTimeValue.ToString();
        if(string.IsNullOrEmpty(strbooktilldate)) strbooktilldate = strstartdate;
        string places = txtPlaces.Text.ToString();
        string headerimagefile = "";
        foreach (RepeaterItem rptItem in rptHeaderImages.Items)
            {
            CheckBox chk = (CheckBox)rptItem.FindControl("chkBox");
            if (chk.Checked)
                {
                TextBox txtimgname = (TextBox)rptItem.FindControl("txtthisImage");
                headerimagefile = txtimgname.Text.ToString();
                }
            }
        txtCurrentHeaderImage.Text = headerimagefile.ToString();

        string sideimagefile = "";
        foreach (RepeaterItem rptItem in rptSideImages.Items)
            {
            CheckBox chk = (CheckBox)rptItem.FindControl("chkBox");
            if (chk.Checked)
                {
                TextBox txtimgname = (TextBox)rptItem.FindControl("txtthisImage");
                sideimagefile = txtimgname.Text.ToString();
                }
            }
        txtCurrentSideImage.Text = sideimagefile.ToString();
        Boolean showbook = chkBook.Checked;
        string bookingurl = txtBookingURL.Text.ToString();
                
        Boolean savedworked = false;
        try
            {

           savedworked = Helpers.SaveEvent(eventid,
         title,
         short_description,
         description,
         eventdate,
         eventtime,
         location_name,
         location_telephone,
         cost,
         costdescription,
         maplink,
         contact_name,
         contact_phone,
         contact_email,
         contact1_name,
         contact1_phone,
         contact1_email,
         location_address,
         loaction_address1,
         loaction_city,
         location_state,
         location_zip,
         location_country,
         strstartdate,
         strbooktilldate,
         places,
         headerimagefile,
         sideimagefile,
         showbook,
         bookingurl);

            if (savedworked)
                {
                lblEventTitle.Text = "Saved.";
                }
            else
                {
                lblEventTitle.Text = "Saved Failed!";
                }
            }
        catch (Exception ex)
            {
            lblEventTitle.Text = ex.ToString();
            }

        return savedworked;

        }

    protected void btnReset_Click(object sender, EventArgs e)
        {
        Response.Redirect("cms_eventeditor.aspx?event=" + txtEventID.Text.ToString());
        }

    protected void btnBack_Click(object sender, EventArgs e)
        {
        Response.Redirect("cms_manageevents.aspx");
        }

    protected void populateData(string eventID)
        {
        DataSet ds = default(DataSet);
        ds = Helpers.GetEvent(eventID);

        foreach (DataRow rdr in ds.Tables[0].Rows)
            {
            FCKeditor1.Value = HttpUtility.HtmlDecode(rdr["description"].ToString());
            string eventid = txtEventID.Text = rdr["id"].ToString();
            txtevent_title.Text = rdr["title"].ToString();
            string shrtext = rdr["short_description"].ToString().Replace("<br/>", Environment.NewLine);
            txtshort_description.Text = HttpUtility.HtmlDecode(shrtext);
            txteventdate.Text = rdr["eventdate"].ToString();
            txtEventTime.Text = rdr["eventtime"].ToString();
            txtLocation_Name.Text = rdr["location_name"].ToString();
            txtLocation_telephone.Text = rdr["location_telephone"].ToString();
            txtCost.Text = rdr["cost"].ToString();
            txtCostDescription.Text = rdr["costdescription"].ToString();
            txtMapLink.Text = rdr["maplink"].ToString();
            txtcontact_name.Text = rdr["contact_name"].ToString();
            txtcontact_phone.Text = rdr["contact_phone"].ToString();
            txtcontact_email.Text = rdr["contact_email"].ToString();
            txtcontact1_name.Text = rdr["contact1_name"].ToString();
            txtcontact1_phone.Text = rdr["contact1_phone"].ToString();
            txtcontact1_email.Text = rdr["contact1_email"].ToString();
            txtlocation_address.Text = rdr["location_address"].ToString();
            txtlocation_address1.Text = rdr["loaction_address1"].ToString();
            txtlocation_city.Text = rdr["loaction_city"].ToString();
            txtlocation_state.Text = rdr["location_state"].ToString();
            txtlocation_zip.Text = rdr["location_zip"].ToString();
            try
                { ddlCountry.Items.FindByValue(rdr["location_country"].ToString()).Selected = true; }
            catch
            { ddlCountry.Items.FindByValue("United States").Selected = true; }
            txtPlaces.Text = rdr["places"].ToString();
            txtCurrentHeaderImage.Text = rdr["headerimagefile"].ToString();
            try
            { startdate.DateValue = rdr["startdate"].ToString(); }
            catch
            {}
            try
            { lastbookingdate.DateValue = rdr["booktilldate"].ToString(); }
            catch
            { }
            txtCurrentSideImage.Text = rdr["sideimagefile"].ToString();
            chkBook.Checked = (bool)rdr["showbook"];
            txtBookingURL.Text = rdr["bookingurl"].ToString();


            lblEventTitle.Text = "Event ID: " + txtEventID.Text.ToString() + " Date: " + startdate.DateTimeValue.ToString();
            }

        showHeaderImageFiles();
        showSideImageFiles();
        }

    
    protected void showHeaderImageFiles()
        {
        try
            {
            string diLoc = HttpContext.Current.Server.MapPath("~/userfiles/image/websitebranding/eventheaders");
            DirectoryInfo di = new DirectoryInfo(diLoc);
            FileInfo[] allFiles = di.GetFiles("*.*");

            ArrayList aryFiles = new ArrayList();

            foreach (FileInfo f in allFiles)
                {
                FileInfo Name = (FileInfo)f;

                aryFiles.Add(Name);
                }
            rptHeaderImages.DataSource = aryFiles;
            rptHeaderImages.DataBind();
            }
        catch (Exception ex)
            {
            Response.Write(ex.ToString());
            }
        }

    public string getheaderimageurl(string name)
        {
        return "~/userfiles/image/websitebranding/eventheaders/" + name.ToString();
        }

    public Boolean getheaderimagechecked(string name)
        {
        if (txtCurrentHeaderImage.Text.ToString() == name.ToString())
            {
            return true;
            }
        else
            {
            return false;
            }
        }

    protected void showSideImageFiles()
        {
        try
            {
            string disideLoc = HttpContext.Current.Server.MapPath("~/userfiles/image/websitebranding/eventsides");
            DirectoryInfo diside = new DirectoryInfo(disideLoc);
            FileInfo[] allsideFiles = diside.GetFiles("*.*");

            ArrayList arysideFiles = new ArrayList();

            foreach (FileInfo f in allsideFiles)
                {
                FileInfo Name = (FileInfo)f;

                arysideFiles.Add(Name);
                }
            rptSideImages.DataSource = arysideFiles;
            rptSideImages.DataBind();
            }
        catch (Exception ex)
            {
            Response.Write(ex.ToString());
            }
        }

    public string getsideimageurl(string name)
        {
        return "~/userfiles/image/websitebranding/eventsides/" + name.ToString();
        }

    public Boolean getsideimagechecked(string name)
        {
        if (txtCurrentSideImage.Text.ToString() == name.ToString())
            {
            return true;
            }
        else
            {
            return false;
            }
        }
    }


