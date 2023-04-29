using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class admin_cms_managemenus : System.Web.UI.Page
{
    int paged = 0;

    protected void Page_Load(object sender, EventArgs e)
        {

        if (!String.IsNullOrEmpty(Request.QueryString["moveit"]))
            {
            string menuID = Request.QueryString["menu"];
            string direction = Request.QueryString["moveit"];
            if (!String.IsNullOrEmpty(menuID) && !String.IsNullOrEmpty(direction))
                {
                Helpers.MoveMenu(menuID, direction);
                }
            }

        DataSet ds = new DataSet();
        ds = Helpers.GetMenuItemsDS(0);

        gvResults.PageSize = Convert.ToInt16(ddlLimit.SelectedValue.ToString());
        gvResults.DataSource = ds;
        gvResults.DataBind();
        try
            {
            results.Text = "Total " + ds.Tables[0].Rows.Count.ToString() + " records found";
            }
        catch (Exception)
            {
            }
        }

    protected void gvResults_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {

        if (paged == 0)
            {
            paged = 1;
            gvResults.PageIndex = e.NewPageIndex;
            gvResults.DataBind();

            }
        }

    void CustomersGridView_Sorting(Object sender, GridViewSortEventArgs e)
        {
        // Cancel the sorting operation if the user attempts
        // to sort by address.
        if (e.SortExpression == "Address")
            {
            e.Cancel = true;
            results.Text = "You cannot sort by address.";
            //SortInformationLabel.Text = "";
            }
        else
            {
            results.Text = "";
            }
        }

    //protected void gvResults_Sorting(object sender, System.Web.UI.WebControls.GridViewSortEventArgs e)
    //    {
    //    DataTable m_datatable = gvResults.DataSource;
    //    if (m_datatable == null)
    //        {
    //        }
    //    else
    //        {
    //        DataView m_dataveiw = new DataView();
    //        m_dataveiw = m_datatable.DefaultView;
    //        m_dataveiw.Sort = e.SortExpression + " " + ConvertSortDirectionToSql(e.SortDirection);
    //        gvResults.DataSource = m_dataveiw;
    //        gvResults.DataBind();

    //        }
    //    }

    //{
    //return objText1.ToString() + " " + objText2.ToString();
    //}
   
    private string ConvertSortDirectionToSql(SortDirection SortDirection)
        {

        string m_SortDirection = "";

        switch (SortDirection)
            {
            case SortDirection.Ascending:
                m_SortDirection = "ASC";
                break;
            case SortDirection.Descending:
                m_SortDirection = "DESC";
                break;
            }


        return m_SortDirection;
        }

    protected void gvResults_RowDataBound(object sender, GridViewRowEventArgs e)
        {
        try
            {
            if (e.Row.RowType == DataControlRowType.DataRow)
                {
                string id = (String)DataBinder.Eval(e.Row.DataItem, "ID").ToString();


                DataSet subDS = new DataSet();
                subDS = Helpers.GetMenuItemsDS(Convert.ToInt16(id));

                GridView gvSubResults = (GridView)e.Row.FindControl("gvSubResults");
                gvSubResults.DataSource = subDS;
                gvSubResults.DataBind();

                //int mar = 0;


                //Label lblLayout = (Label)e.Row.FindControl("lblLayout");
                //string Layout = (String)DataBinder.Eval(e.Row.DataItem, "page_template").ToString();
                //switch (Layout)
                //    {
                //    case "MCR":
                //        lblLayout.Text = "Menu | Content | Register";
                //        break;
                //    case "MC":
                //        lblLayout.Text = "Menu | Content";
                //        break;
                //    default:
                //        lblLayout.Text = "Menu | Content";
                //        break;
                //    }

                //Label lblStatus = (Label)e.Row.FindControl("lblStatus");
                //string status = (String)DataBinder.Eval(e.Row.DataItem, "status").ToString();
                //lblStatus.Text = status.ToString();
                //switch (status)
                //    {
                //    case "False":
                //        lblStatus.Text = "Disabled";
                //        break;
                //    case "True":
                //        lblStatus.Text = "Enabled";
                //        break;
                //    default:
                //        lblStatus.Text = "Unknown";
                //        break;
                //    }
                }
            }
        catch (Exception )
            {
            //Label lblStatus = (Label)e.Row.FindControl("lblStatus");
            //lblStatus.Text = ex.ToString();

            }
        }

    protected void btnAddnew_Click(object sender, EventArgs e)
        {
        
            Response.Redirect("cms_menueditor.aspx?menu=new");
            
        }

    }
