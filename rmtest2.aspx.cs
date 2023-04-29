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

public partial class rmtest2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
        {
        if (!Page.IsPostBack)
            {
            BindGrid();
            }
        }

    void BindGrid()
        {
        string qspropertyID = Request.QueryString["propertyID"] + "";
        qspropertyID = qspropertyID.Replace("ukc4991", "");

        DataSet ds = default(DataSet);
        ds = Helpers.GetPrices(qspropertyID);
        gvPrices.DataSource = ds;
        gvPrices.DataBind();
        }

    protected void gvPrices_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
        gvPrices.PageIndex = e.NewPageIndex;
        BindGrid();
        }

    protected string GetStartDate(object StartDate)
        {
        DateTime usedate = Convert.ToDateTime(StartDate);

        return usedate.Date.ToLongDateString();
        }

    protected string GetEndDate(object EndDate)
        {
        DateTime usedate = Convert.ToDateTime(EndDate);

        return usedate.Date.ToLongDateString();
        }

    protected string GetDays(object StartDate, object EndDate)
        {
        DateTime sdate = Convert.ToDateTime(StartDate);
        DateTime edate = Convert.ToDateTime(EndDate);
        TimeSpan gDays = edate - sdate;
        return gDays.Days.ToString();
        }

    protected Boolean GetSetAsLate(object LateDeal)
        {
        string isLate = LateDeal.ToString();
        if (isLate == "1")
            {
            return true;
            }
        else
            {
            return false;
            }
        }

    protected Boolean GetSetNotes(object Notes)
        {
        string isNotes = Notes.ToString();
        if (string.IsNullOrEmpty(isNotes))
            {
            return false;
            }
        else
            {
            return true;
            }
        }

    protected string GetStatus(object status)
        {
        string showtext = string.Empty;
        switch (status.ToString())
            {
            case "1":
                showtext = "Available";
                break;
            case "2":
                showtext = "Not Available";
                break;
            case "3":
                showtext = "Booked";
                break;
            default:
                showtext = "";
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
    }
