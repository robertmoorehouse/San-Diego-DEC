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

public partial class rmtest1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
        {
        startdate.TimeVisible = false;
        enddate.TimeVisible = false;

        if(!Page.IsPostBack)
            {
            BindGrid();
            }
        }

    void BindGrid()
        {
        string qspropertyID = Request.QueryString["propertyID"] + "";
        qspropertyID = qspropertyID.Replace("ukc4991","");

        DataSet ds = default(DataSet);
        //ds = Helpers.GetBookings(qspropertyID);

        //gvBookings.DataSource = ds;
        //gvBookings.DataBind();

        ds = Helpers.GetPrices(qspropertyID);
        gvPrices.DataSource = ds;
        gvPrices.DataBind();

        ds = Helpers.GetSiteDetails(qspropertyID);
        try
            {
            //txtBasePrice.Text = ds.Tables[0].Rows[0]["BasePrice"].ToString();
            }
        catch { }
        }

    //protected void gvBookings_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //    {
    //    gvBookings.PageIndex = e.NewPageIndex;
    //    BindGrid();
    //    }

    protected void gvPrices_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
        gvPrices.PageIndex = e.NewPageIndex;
        BindGrid();
        }

    //protected void DeleteBookingButton_OnCommand(object sender, CommandEventArgs e)
    //    {
    //    if(e.CommandName == "DeleteBooking")
    //        {
    //        string bookref = e.CommandArgument.ToString();
    //        Helpers.DeleteBooking(bookref);
    //        BindGrid();
    //        }
    //    }

    protected void DeletePriceButton_OnCommand(object sender, CommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            string qspropertyID = Request.QueryString["propertyID"] + "";
            qspropertyID = qspropertyID.Replace("ukc4991", "");
        if (e.CommandName == "DeletePrice")
            {            
            Helpers.DeletePrice(ID, qspropertyID);
            BindGrid();
            }

        if (e.CommandName == "SetAvailable")
            {
            Helpers.SetStatus(ID, qspropertyID,1);
            BindGrid();
            }

        if (e.CommandName == "SetBooked")
            {
            Helpers.SetStatus(ID, qspropertyID, 3);
            BindGrid();
            }

        if (e.CommandName == "SetNotAvailable")
            {
            Helpers.SetStatus(ID, qspropertyID, 2);
            BindGrid();
            }

        if (e.CommandName == "SetLateDeal")
            {
            Helpers.SetLateDeal(ID, qspropertyID);
            BindGrid();
            }
        }

    protected string GetStartDate(object StartDate)
        {
        DateTime usedate = Convert.ToDateTime(StartDate);

        return usedate.Date.ToShortDateString();
        }

    protected string GetEndDate(object EndDate)
        {
        DateTime usedate = Convert.ToDateTime(EndDate);

        return usedate.Date.ToShortDateString();
        }

    protected string GetDays(object StartDate,object EndDate )
        {
        DateTime sdate = Convert.ToDateTime(StartDate);
        DateTime edate = Convert.ToDateTime(EndDate);
        TimeSpan gDays = edate - sdate;
        return gDays.Days.ToString();
        }

    protected string GetStatus(object status)
        {
        string ImagePath = "Images/Calendar/";
        string SolidGreen = ImagePath + ("green.gif");
        string SolidRed = ImagePath + ("red.gif");
        string SolidOrange = ImagePath + ("orange.gif");
        string blank = ImagePath + ("spacer.gif");
        string showtext = string.Empty;
        switch (status.ToString())
            {
            case "1":
                showtext = SolidGreen;
                break;
            case "2":
                showtext = SolidOrange;
                break;
            case "3":
                showtext = SolidRed;
                break;
            default:
                showtext = blank;
                break;
            }

        return showtext;
        }

    protected string GetLateDeal(object latedeals)
        {
        string ImagePath = "Images/Calendar/";
        string blank = ImagePath + ("spacer.gif");
        string strlatedeal = ImagePath + ("special.gif");
        string showtext = string.Empty;
        switch (latedeals.ToString())
            {
            case "1":
                showtext = strlatedeal;
                break;
            default:
                showtext = blank;
                break;
            }

        return showtext;
        }

    protected bool GetSetAsLate(object StartDate, object Status)
        {
        string strStatus = Status.ToString();

        DateTime edate = Convert.ToDateTime(StartDate);
        DateTime sdate = DateTime.Now;
        TimeSpan gDays = edate - sdate;
        Boolean retVal = false;

        if (gDays.Days < 42)
            {
            retVal = true;
            }
        else
            {
            retVal = false;
            }
        if (strStatus == "1")
            {
            retVal = true;
            }
        else
            {
            retVal = false;
            }
        return retVal;
        }

    //protected void btnAddBooking_Click(object sender, EventArgs e)
    //    {
    //    string sdate = startdate.DateTimeValue.ToString();
    //    string edate = enddate.DateTimeValue.ToString();
    //    string qspropertyID = Request.QueryString["propertyID"] + "";
    //    string strprice = txtPrice.Text.ToString();
    //    qspropertyID = qspropertyID.Replace("ukc4991","");
    //    if(string.IsNullOrEmpty(sdate) || string.IsNullOrEmpty(edate) ||string.IsNullOrEmpty(qspropertyID) )
    //        {}
    //    else
    //        {
    //        Helpers.SaveBooking(qspropertyID, sdate, edate, "", strprice);
    //        BindGrid();
    //        }
    //    }

    //protected void btnUpdateBasePrice_Click(object sender, EventArgs e)
    //    {
    //    string qspropertyID = Request.QueryString["propertyID"] + "";
    //    qspropertyID = qspropertyID.Replace("ukc4991", "");
    //    string strprice = txtBasePrice.Text.ToString();

    //    if (string.IsNullOrEmpty(qspropertyID) || string.IsNullOrEmpty(strprice))
    //    { }
    //    else
    //        {
    //        Helpers.SaveBasePrice(qspropertyID, strprice);
    //        }
    //    }
   
    protected void btnAddPriceRange_Click(object sender, EventArgs e)
        {
        string sdate = startdate.DateTimeValue.ToString();
        string edate = enddate.DateTimeValue.ToString();
        string qspropertyID = Request.QueryString["propertyID"] + "";
        string strprice = txtPrice.Text.ToString();
        string notes = txtNotes.Text.ToString();
        string status = ddlAvailability.SelectedValue.ToString();

        qspropertyID = qspropertyID.Replace("ukc4991", "");
        if (string.IsNullOrEmpty(sdate) || string.IsNullOrEmpty(edate) || string.IsNullOrEmpty(qspropertyID) || string.IsNullOrEmpty(strprice))
        { }
        else
            {
            Helpers.SavePrice(qspropertyID, sdate, edate, strprice, notes,status);
            BindGrid();
            }
        }
}
