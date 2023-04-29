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

public partial class admin_login : BasePage
    {
    protected void Page_Load(object sender, EventArgs e)
        {
        if (Page.IsPostBack)
            {
            string strusername = username.Text;
            string strpassword = password.Text;

            if (strpassword == "export09" && strusername == "admin")
                {
                Session["member"] = "true";
                Session["admin"] = "true";
                Session["username"] = strusername.ToString();
                string retAddress = Request.QueryString["return"];
                if (string.IsNullOrEmpty(retAddress))
                    {
                    Response.Redirect("members_list.aspx");
                    }
                else
                    {
                    string qs = "";
                    try
                        {
                        qs = Session["qs"].ToString();
                        }
                    catch { }
                    Response.Redirect(retAddress + "?" + qs.ToString());
                    }
                }
            }
        else
            {
            Session["member"] = "false";
            Session["admin"] = "false";
            Session["username"] = "";
            }
        }
    }
