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

public partial class rmtest4 : System.Web.UI.Page
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
        
        DataSet ds = default(DataSet);

        ds = Helpers.GetSiteDetails("0");
        gvSites.DataSource = ds;
        gvSites.DataBind();
        }

    protected void gvSites_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
        gvSites.PageIndex = e.NewPageIndex;
        BindGrid();
        }

    protected void DeleteSiteButton_OnCommand(object sender, CommandEventArgs e)
        {
        string ID = e.CommandArgument.ToString();
        if (e.CommandName == "DeleteSite")
            {
            Helpers.DeleteSite(ID);
            BindGrid();
            }
        }

    protected string GetArea(object area)
        {
        string showtext = string.Empty;
        switch (area.ToString())
            {
            case "1":
                showtext = "Cumbria";
                break;
            case "2":
                showtext = "East of England";
                break;
            case "3":
                showtext = "Heart of England";
                break;
            case "4":
                showtext = "North West England";
                break;
            case "5":
                showtext = "North East England";
                break;
            case "6":
                showtext = "South East England";
                break;
            case "7":
                showtext = "Southern England";
                break;
            case "8":
                showtext = "Cornwall";
                break;
            case "9":
                showtext = "Devon";
                break;
            case "10":
                showtext = "West Country";
                break;
            case "11":
                showtext = "Yorkshire";
                break;
            case "12":
                showtext = "South & West Wales";
                break;
            case "13":
                showtext = "Mid Wales";
                break;
            case "14":
                showtext = "North Wales";
                break;
            case "15":
                showtext = "Scotland";
                break;
            }

        return showtext;
        }

    protected void btnAddSite_Click(object sender, EventArgs e)
        {
        string propertyID = txtSiteID.Text.ToString();
        string price = "0";
        string password = txtPassword.Text.ToString();
        string displayType = ddlDisplayType.SelectedValue.ToString(); 
        string area = ddlarea.SelectedValue.ToString();
        string location = "";//txtLocation.Text.ToString();
        string shortTitle = txtShortTitle.Text.ToString();
        string shortDesc = txtShortDescription.Text.ToString();

        if (string.IsNullOrEmpty(propertyID) || string.IsNullOrEmpty(location)
            || string.IsNullOrEmpty(shortTitle) || string.IsNullOrEmpty(shortDesc) || string.IsNullOrEmpty(password))
        {

        Response.Write(propertyID + "<br/>");
        Response.Write(price + "<br/>");
        Response.Write(password + "<br/>");
        Response.Write(displayType + "<br/>");
        Response.Write(area + "<br/>");
        Response.Write(location + "<br/>");
        Response.Write(shortTitle + "<br/>");
        Response.Write(shortDesc + "<br/>");

        }
        else
            {
            string result = Helpers.SaveSite(propertyID, price, password, displayType, area, location, shortTitle, shortDesc);
            BindGrid();
            Response.Write(result.ToString());
            }
        }
    }
