using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class admin_admin_editor_leftmenu : System.Web.UI.MasterPage
{
protected void Page_Load(object sender, EventArgs e)
    {

    try
        {
        if(Session["admin"].ToString() == "true")
            {
            lblLoggedinas.Text = Session["username"].ToString();
            lblDate.Text = DateTime.Now.ToLongDateString();
            }
        else
            {
            string retURL = Request.Url.AbsolutePath.ToString();
            Session["qs"] = Request.QueryString;
            Response.Redirect("login.aspx?return=" + retURL);
            }
        }
    catch(Exception)
        {
        string retURL = Request.Url.AbsolutePath.ToString();
        Session["qs"] = Request.QueryString;
        Response.Redirect("login.aspx?return=" + retURL);
        }

    try
        {
        string rURL = Request.Url.AbsolutePath.ToString();
        //Response.Write(rURL);
        switch(rURL)
            {

            case "/admin/cms_managepages.aspx":
                cms.Attributes.Add("class", "active level0");
                break;
            case "/admin/cms_managemenus.aspx":
                cms.Attributes.Add("class", "active level0");
                break;
            case "/admin/cms_pageeditor.aspx":
                cms.Attributes.Add("class", "active level0");
                break;
            case "/admin/cms_menueditor.aspx.aspx":
                cms.Attributes.Add("class", "active level0");
                break;
            case "/admin/members_list.aspx":
                members.Attributes.Add("class", "active level0");
                break;
            case "/admin/members_addnew.aspx":
                members.Attributes.Add("class", "active level0");
                break;
            case "/admin/cms_manageevents.aspx":
                events.Attributes.Add("class", "active level0");
                break;
            case "/admin/cms_eventeditor.aspx":
                events.Attributes.Add("class", "active level0");
                break;

            default:
                members.Attributes.Add("class", "active level0");
                break;
            }
        }
    catch
        {
        }

    }
    }