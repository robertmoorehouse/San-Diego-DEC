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

public partial class rmtest : System.Web.UI.Page
{
    public string BasePrice;

    public string thisPropRef;

    public string SiteRag;

    public string SiteRcam;

    private string currency;

    private string cal_pagename;

    //  name of this page, 
    private string cal_page_redirect;

    //  where do you want the page to go to when it works
    private int cal_type = 3;

    //  this can either switch between owner make booking (0)/ prices set and unavail (1) / owner blank (2) / renter (3) 
    private int calsize = 12;

    //  number of people property can sleep''' pass this through so no need to call another SQL SP
    private string CalCurrStr;

    //  curreny of the property
    private int cal_rowcounter;

    //  number of calendars on 1 line before it loops
    private int cal_next_num = 3;

    //  number for how many months to add to the next buton
    private string cal_openinnewwindow = String.Empty;

    //  this is for maing the second window open in a new screen. "target='_blank'"
    private DataSet CalWS = new DataSet();

    public string rdurl = String.Empty;

    protected int IncrementYear(int MonthInt, int YearInt)
        {
        int ReturnValue = YearInt;
        if ((MonthInt > 12))
            {
            MonthInt = 1;
            YearInt++;
            ReturnValue = YearInt;
            }
        return ReturnValue;
        }

    protected void CreateCal(int monthint, int yearint)
        {
        DataView dv;
        DataTable dt = new DataTable();
        DataRow dr;
        dt.Columns.Add("LCal");
        dt.Columns.Add("MCal");
        dt.Columns.Add("RCal");
        int Cal_X;
        // Dim monthint As Integer = Month(Date.Now())
        // Dim yearint As Integer = Year(Date.Now())
        for (Cal_X = 0; (Cal_X <= 3); Cal_X++)
            {
            dr = dt.NewRow();
            if ((monthint > 12))
                {
                monthint = 1;
                yearint++;
                }
            // Response.Write(monthint.ToString() & " ")
            // Response.Write(yearint.ToString() & "<br />")
            dr["LCal"] = DrawCalendar(monthint, yearint);
            monthint++;
            if ((monthint > 12))
                {
                monthint = 1;
                yearint++;
                }
            // Response.Write(monthint.ToString() & " ")
            // Response.Write(yearint.ToString() & "<br />")
            dr["MCal"] = DrawCalendar(monthint, yearint);
            monthint++;
            if ((monthint > 12))
                {
                monthint = 1;
                yearint++;
                }
            // Response.Write(monthint.ToString() & " ")
            // Response.Write(yearint.ToString() & "<br />")
            dr["RCal"] = DrawCalendar(monthint, yearint);
            monthint++;
            dt.Rows.Add(dr);
            }
        // Response.Write(monthint.ToString() & " ")
        // Response.Write(yearint.ToString() & "<br />")
        // Response.Write("calsize" & calsize.ToString())
        // Response.Write("cal_num" & cal_next_num.ToString())
        StartMonth.Text = monthint.ToString();
        StartYear.Text = yearint.ToString();
        //NextLB.Text = "Next > " & StartMonth.Text & " " & StartYear.Text
        dv = new DataView(dt);
        this.CalRepeater.DataSource = dv;
        this.CalRepeater.DataBind();
        }

    protected string DrawCalendar(int MonthInt, int YearInt)
        {
        string cal_html = String.Empty;
        int ThisDay;
        int ThisMonth;
        int ThisYear;
        ThisDay = DateTime.Now.Day;
        ThisMonth = DateTime.Now.Month;
        ThisYear = DateTime.Now.Year;

        DateTime sdt = new DateTime(YearInt, MonthInt, 1);

        cal_html += "<table>";
        cal_html += "<tr height=\"18\" bgcolor=\"#e0e0e0\"><td colspan=\"7\" valign=\"middle\" align=\"center\" style=\"color: black;";
        cal_html += "\">";
        cal_html += sdt.ToString("MMMM") + " " + sdt.Year.ToString();
        cal_html += "</td></tr>";
        cal_html += "<tr>";
        cal_html += "<td width=\"20\" valign=\"bottom\" height=\"16\" align=\"center\" class=\"Verdarna10Blue\">S</td>";
        cal_html += "<td width=\"20\" valign=\"bottom\" height=\"16\" align=\"center\" class=\"Verdarna10Blue\">M</td>";
        cal_html += "<td width=\"20\" valign=\"bottom\" height=\"16\" align=\"center\" class=\"Verdarna10Blue\">T</td>";
        cal_html += "<td width=\"20\" valign=\"bottom\" height=\"16\" align=\"center\" class=\"Verdarna10Blue\">W</td>";
        cal_html += "<td width=\"20\" valign=\"bottom\" height=\"16\" align=\"center\" class=\"Verdarna10Blue\">T</td>";
        cal_html += "<td width=\"20\" valign=\"bottom\" height=\"16\" align=\"center\" class=\"Verdarna10Blue\">F</td>";
        cal_html += "<td width=\"20\" valign=\"bottom\" height=\"16\" align=\"center\" class=\"Verdarna10Blue\">S</td>";
        cal_html += "</tr>";
        int subindex = 0;
        string ImagePath = "Images/Calendar/";
        string BGColourStart = "background-image: url(\'";
        string BGColourEnd = "\'); background-repeat: repeat;";

        //  join between  booking and no prices 
        string SolidGreen = (BGColourStart
                    + (ImagePath + ("green.gif" + BGColourEnd)));
        string SolidRed = (BGColourStart
                    + (ImagePath + ("red.gif" + BGColourEnd)));
        string SolidOrange = (BGColourStart
                    + (ImagePath + ("orange.gif" + BGColourEnd)));
        string SolidGrey = (BGColourStart
                    + (ImagePath + ("grey.gif" + BGColourEnd)));
        string Font_Colour = "#FFFFFF";

        cal_html += "<tr>";

        DateTime dt = new DateTime(YearInt, MonthInt, 1);
        DateTime dow = dt;
        switch (dow.DayOfWeek)
            {
            case DayOfWeek.Sunday:
                cal_html += ReturnTD(0);
                break;
            case DayOfWeek.Monday:
                cal_html += ReturnTD(1);
                subindex++;
                break;
            case DayOfWeek.Tuesday:
                cal_html += ReturnTD(2);
                subindex += 2;
                break;
            case DayOfWeek.Wednesday:
                cal_html += ReturnTD(3);
                subindex += 3;
                break;
            case DayOfWeek.Thursday:
                cal_html += ReturnTD(4);
                subindex += 4;
                break;
            case DayOfWeek.Friday:
                cal_html += ReturnTD(5);
                subindex += 5;
                break;
            case DayOfWeek.Saturday:
                cal_html += ReturnTD(6);
                subindex += 6;
                break;
            }

        string qspropertyID = Request.QueryString["propertyID"] + "";
        qspropertyID = qspropertyID.Replace("ukc4991", "");

        DataSet ds = default(DataSet);
        ds = Helpers.GetBookings(qspropertyID);
        int dsIndex = 0;

        DateTime fsSD = DateTime.Now.AddDays(-1).Date;
        DateTime fsED = DateTime.Now.AddDays(-1).Date;

        DataSet dsprice = default(DataSet);
        dsprice = Helpers.GetPrices(qspropertyID);
        int dsPriceIndex = 0;

        DateTime fsSDp = DateTime.Now.AddDays(-1).Date;
        DateTime fsEDp = DateTime.Now.AddDays(-1).Date;
        
        for (int index = 0; index <= DateTime.DaysInMonth(dt.Year, dt.Month) - 1; index++)
            {

            string StrMonthName = sdt.ToString("MMMM");
            //int firstweekday = DayOfWeek.Sunday;
            int LastDay = DateTime.DaysInMonth(sdt.Year, sdt.Month);
            string OverrideTileBG = String.Empty;


            OverrideTileBG = "background-color: #666666;";


            //start the calendar builder
            if (subindex == 0)
                {
                //create a new row with the <tr> tag
                cal_html += "<tr>";
                }
            string TileBG = String.Empty;
            DateTime HasDateTranspired = sdt;
            string currentPrice;
            try
                {
                if (!string.IsNullOrEmpty(dsprice.Tables[0].Rows[dsPriceIndex]["startDate"].ToString()))
                    {
                    fsSDp = Convert.ToDateTime(dsprice.Tables[0].Rows[dsPriceIndex]["startDate"]);
                    fsEDp = Convert.ToDateTime(dsprice.Tables[0].Rows[dsPriceIndex]["endDate"]);
                    currentPrice = dsprice.Tables[0].Rows[dsPriceIndex]["price"].ToString();
                    }
                else
                    {
                    fsSDp = DateTime.Now.AddDays(-1);
                    fsEDp = DateTime.Now.AddDays(-1);
                    currentPrice = BasePrice;
                    }
                }
            catch
                {
                fsSDp = DateTime.Now.AddDays(-1);
                fsEDp = DateTime.Now.AddDays(-1);
                currentPrice = BasePrice;
                }
            
            try
                {
                if(!string.IsNullOrEmpty(ds.Tables[0].Rows[dsIndex]["startDate"].ToString()))
                    {
                    fsSD = Convert.ToDateTime(ds.Tables[0].Rows[dsIndex]["startDate"]);
                    fsED = Convert.ToDateTime(ds.Tables[0].Rows[dsIndex]["endDate"]);
                    }
                else
                    {
                    fsSD = DateTime.Now.AddDays(-1);
                    fsED = DateTime.Now.AddDays(-1);
                    }
                }
            catch
                {
                fsSD = DateTime.Now.AddDays(-1);
                fsED = DateTime.Now.AddDays(-1);
                }
            //set price
                if (HasDateTranspired >= fsSDp && HasDateTranspired <= fsEDp)
                    {                    
                    }
                else
                    {
                    currentPrice = BasePrice;
                    }
                

            if (HasDateTranspired < DateTime.Today)
                {
                //Do nothing... since the day being passed is less than today
                TileBG = SolidRed;
                cal_html += "<td style=\"" + TileBG + "; height:16px; width:20px;\" valign=\"middle\" align=\"center\">";
                cal_html += "<font color='" + Font_Colour + "'>";
                cal_html += sdt.Day.ToString();
                cal_html += "</font>";
                cal_html += "</td>";
                }
            else
                {
                TileBG = SolidGreen;

                if(HasDateTranspired >= fsSD && HasDateTranspired <= fsED)
                    {
                    TileBG = SolidRed;
                    cal_html += "<td style=\"" + TileBG + "; height:16px; width:20px;\" valign=\"middle\" align=\"center\">";
                    cal_html += "<font color='" + Font_Colour + "'>";
                    cal_html += sdt.Day.ToString();
                    cal_html += "</font>";
                    cal_html += "</td>";
                    }
                else
                    {
                    TileBG = SolidGreen;
                    cal_html += "<td title=\"£" + currentPrice.ToString().TrimEnd('0').TrimEnd('.') + " per week\" style=\"" + TileBG + "; height:16px; width:20px;\" valign=\"middle\" align=\"center\">";
                    //cal_html += "<a href=""javascript:" + javascript_function + "('" + daydate + "','" + daynum + "','" + monthnum + "','" + yearnum + "'," + changeover_day + "," + firstweekday + ",'" + javascript_text + "')"" onmouseover=""temp_prices('" + Price + "')"" onmouseout=""temp_prices(' ')"" title=""Weekly Price: " + Price + " " + CalCurrStr + """ style=""text-decoration: none;"">"
                    cal_html += "<font color='" + Font_Colour + "'>";
                    cal_html += sdt.Day.ToString();
                    cal_html += "</font>";
                    cal_html += "</td>";
                    }

                int days = DateTime.DaysInMonth(YearInt, MonthInt);
                if (days == sdt.Day)
                    {
                    //if we reach the end of the month then it adds empty TD tags
                    while (subindex < 6)
                        {
                        cal_html += "<td>&nbsp;</td>";
                        subindex += 1;
                        }
                    }
                }
            if (subindex == 6)
                {
                //starting pos of subindex is 0 so if the subindex = 6, it's time to close of the row with </tr>
                cal_html += "</tr>";
                subindex = -1;
                }
            subindex += 1;
            sdt = sdt.AddDays(1);
            if(HasDateTranspired >= fsED)
                {
                dsIndex += 1;
                }
            if (HasDateTranspired >= fsEDp)
                {
                dsPriceIndex += 1;
                }
            }


        cal_html += "</table>";
        return cal_html;
        }

    protected string ReturnTD(int NumberOfTDs)
        {
        int index = 0;
        string RetVal = String.Empty;
        for (index = 0; (index
                    <= (NumberOfTDs - 1)); index++)
            {
            RetVal += "<td> </td>";
            }
        return RetVal;
        }

    private int GetLastDay(int intMonthNum, int intYearNum)
        {
        DateTime dNextStart;
        //     response.write(intmonthnum & " - " & intyearnum)
        if (intMonthNum == 12)
            {
            dNextStart = DateTime.Parse(("1/1/" + intYearNum));
            }
        else
            {
            dNextStart = DateTime.Parse(("1/"
                            + ((intMonthNum + 1) + ("/" + intYearNum))));
            }
        DateTime dt = dNextStart;
        TimeSpan ts = dt.Date.Subtract(dt.AddDays(-1));
        // Return Day(dNextStart - 1)
        return ts.Days;
        }

    protected void Page_Load(object sender, System.EventArgs e)
        {
        string qspropertyID = Request.QueryString["propertyID"] + "";
        qspropertyID = qspropertyID.Replace("ukc4991", "");
        DataSet dsbaseprice = default(DataSet);
        dsbaseprice = Helpers.GetSiteDetails(qspropertyID);
        try
            {
            BasePrice = dsbaseprice.Tables[0].Rows[0]["BasePrice"].ToString();
            }
        catch { }


        thisPropRef = Request.QueryString["ref"];
        //PropertyData = PropInfo.GetPropDataAndLoc(thisPropRef);
        //if ((PropertyData.Tables[0].Rows.Count < 1)) {
        //    Response.Redirect("default.aspx");
        //}
        if (!Page.IsPostBack)
            {
            StartMonth.Text = DateTime.Now.Month.ToString();
            StartYear.Text = DateTime.Now.Year.ToString();
            //cal_curr.Text = Fixnull(PropertyData.Tables[0].Rows[0]["currency"]);
            //for (int sleeps = 1; (sleeps <= Convert.ToInt32(Fixnull(PropertyData.Tables[0].Rows[0]["sleeps"]))); sleeps++) {
            //    extra_people.Items.Add(sleeps.ToString());
            //}
            //CalWS = cal.GetPropertyCalendar(thisPropRef, calsize, cal_next_num);
            CreateCal(Convert.ToInt32(StartMonth.Text.ToString()), Convert.ToInt32(StartYear.Text.ToString()));
            //MaxDate.Text = cal.GetMaxDates(thisPropRef);
            //SiteRag = ConfigurationManager.AppSettings("SiteRag");
            //SiteRcam = ConfigurationManager.AppSettings("SiteRcam");
            //// + "&sag=" + ConfigurationManager.AppSettings("SiteRag") + "&sc=" + ConfigurationManager.AppSettings("SiteRcam")";
            }
        //PropertyData.Dispose();
        //PropInfo.Dispose();
        }

    private string Fixnull(object value)
        {
        if (!(value == DBNull.Value))
            {
            return value.ToString();
            }
        else
            {
            return String.Empty;
            }
        }

}
