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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Browser.Browser == "IE")
        {
        //stylesheet.Href = "css/sandiego.css";
        }
        else
        {
        //stylesheet.Href = "css/FFsandiego.css";
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
        {
        string firstname = txtFirstName.Text.ToString();
        string lastname = txtLastName.Text.ToString();
        string emailaddress = txtEmail.Text.ToString();

        if (string.IsNullOrEmpty(firstname) || string.IsNullOrEmpty(lastname) || string.IsNullOrEmpty(emailaddress))
            {}
        else
            {
            //save it
            string ipaddress = Request.ServerVariables["remote_addr"].ToString();
            Boolean alreadymember = Helpers.saveNewsletter(firstname, lastname, emailaddress, "1", ipaddress);
            pnlRegister.Visible = false;
            pnlJoined.Visible = true;

            if (!alreadymember)
                {
                //Response.Redirect("join.aspx?newsletter=true");
                }
    
            }

        }
}
