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

public partial class EventSignUp : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
        {
        Image img = (Image)Master.FindControl("img_head_menu_news");
        img.ImageUrl = "Images/menu_news_on.gif";

        

    }
}
