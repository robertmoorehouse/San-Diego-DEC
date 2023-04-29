using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
//using RM.TheBeerHouse.BLL.Store;


    public class BasePage : System.Web.UI.Page
        {
        protected override void InitializeCulture()
            {
            //string culture = (HttpContext.Current.Profile as ProfileCommon).Preferences.Culture;
            //this.Culture = culture;
            //this.UICulture = culture;
            }

        //protected override void OnPreInit(EventArgs e)
        //    {

        //    //string pageID = "1";

        //    //try
        //    //    {
        //    //    pageID = HttpContext.Current.Request.QueryString["pageID"].ToLower();
        //    //    }
        //    //catch
        //    //    {
        //    //    pageID = "1";
        //    //    }

        //    //SqlDataReader rdr = Helpers.GetPage(Convert.ToInt16(pageID));
        //    //string masterpage = "MasterPage.master";

        //    //while (rdr.Read())
        //    //    {
        //    //    masterpage = rdr["templatepage"].ToString();

        //    //    }
        //    //this.MasterPageFile = masterpage;

        //    base.OnPreInit(e);
        //    }

        protected override void OnLoad(EventArgs e)
            {
            // add onfocus and onblur javascripts to all input controls on the forum,
            // so that the active control has a difference appearance
            Helpers.SetInputControlsHighlight(this, "highlight", false);

            base.OnLoad(e);
            }

        public string BaseUrl
            {
            get
                {
                string url = this.Request.ApplicationPath;
                if (url.EndsWith("/"))
                    return url;
                else
                    return url + "/";
                }
            }

        public string FullBaseUrl
            {
            get
                {
                return this.Request.Url.AbsoluteUri.Replace(
                   this.Request.Url.PathAndQuery, "") + this.BaseUrl;
                }
            }

        protected void RequestLogin()
            {
            this.Response.Redirect(FormsAuthentication.LoginUrl +
               "?ReturnUrl=" + this.Request.Url.PathAndQuery);
            }

        public string FormatPrice(object price)
            {
            return Convert.ToDecimal(price).ToString("N2") + " "; //+ Globals.Settings.Store.CurrencyCode;
            }
        }
    
