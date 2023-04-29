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

public partial class admin_cms_manageevents : System.Web.UI.Page
    {
    int paged = 0;

    protected void Page_Load(object sender, EventArgs e)
        {
        DataSet ds = new DataSet();
        ds = Helpers.GetEventList();

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

    protected void btnAddnew_Click(object sender, EventArgs e)
        {

        Response.Redirect("cms_pageeditor.aspx?page=new");

        }

    public static string getPlaces(object places, object booked)
        {
        return places.ToString() + " (" + booked.ToString() + ")";
        }
    }
