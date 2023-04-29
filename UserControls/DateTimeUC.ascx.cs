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

public partial class UserControls_DateTimeUC : System.Web.UI.UserControl
{
    private bool _IsFocusEnabled = true;

    #region "Page_Load"

    private void Page_Load(System.Object sender, System.EventArgs e)
        {

        // add event to textboxes for javascript
        if ((_IsFocusEnabled))
            {
            
            txtDate.Attributes.Add("onfocus", "this.value='" + String.Format("{0:dd/MM/yyyy}", DateTime.Now) + "';this.select();");
            txtTime.Attributes.Add("onfocus", "this.value='12:00';this.select();");
            }
        txtDate.Attributes.Add("onkeypress", "javascript:insertText(this,'" + String.Format("{0:dd/MM/yyyy}", DateTime.Now) + "')");

        //txtTime.Attributes.Add("onkeypress", "javascript:insertText(this,'" + String.Format("{t}", DateTime.Now.TimeOfDay.ToString()) + "')");
        }

    #endregion

    public string DateTimeValue
        {
        get
            {
            if (TimeVisible)
                {
                return txtDate.Text + " " + txtTime.Text;
                }
            else
                {
                return txtDate.Text;

                }
            }
        set
            {
            txtDate.Text = String.Format("{d}", DateTime.Now);
            txtTime.Text = String.Format("{t}", DateTime.Now);
            }
        }

    public string TimeValue
        {
        get
            {
            if (TimeVisible)
                {
                return txtTime.Text;
                }
            else
                {
                return string.Empty;
                }
            }
        set
            {
            txtTime.Text = value;
            }

        }

    public String DateValue
        {
        get
            {
            return txtDate.Text.ToString();
            }
        set
            {
            if (value == "01/01/1900")
                value = "01/01/0001";
            string[] dte = value.ToString().Split(' ');
            txtDate.Text = dte[0]; 
            }
        }

    public bool TimeVisible
        {
        get
            {
            return lblTime.Visible;
            }
        set
            {
            lblTime.Visible = value;
            txtTime.Visible = value;
            }
        }

    public bool IsTimeEnabled
        {
        get
            {
            return vaTime.Enabled;
            }
        set
            {
            lblTime.Visible = value;
            txtTime.Visible = value;
            this.vaTime.Enabled = value;
            this.vaTimeFormat.Enabled = value;
            }
        }

    public bool isRequired
        {
        get
            {
            return vaDate.Enabled;
            }
        set
            {
            vaDate.Enabled = value;
            }
        }

    public bool Enabled
        {
        get
            {
            return txtDate.Enabled;
            }
        set
            {
            txtDate.Enabled = value;
            }
        }

    public bool ToToday
        {
        set
            {
            Popcalendar1.To.Today = value;
            }
        }

    public String ToMessage
        {
        get
            {
            return Popcalendar1.To.Message.ToString();
            }
        set
            {
            Popcalendar1.To.Message = value;
            }
        }

    public bool ShowPicker
        {
        get
            {
            return Popcalendar1.Visible;
            }
        set
            {
            Popcalendar1.Visible = value;
            }
        }

    public bool IsFocusEnabled
        {
        get
            {
            return _IsFocusEnabled;
            }
        set
            {
            _IsFocusEnabled = value;
            }
        }

    public string Caption
        {
        get
            {
            return lblCaption.Text;
            }
        set
            {
            lblCaption.Text = value;
            }
        }

    //CW - 11/05/2007 -  add this method to turn off the CalendarControl
    public bool CalendarVisible
        {
        get
            {
            return Popcalendar1.Visible;
            }
        set
            {
            if ((Popcalendar1 != null))
                {
                Popcalendar1.Visible = value;
                }
            }
        }

    // Get the id of the control rendered on client side
    // Very essential for Javascript Calendar scripts to locate the textbox
    public string getClientID()
        {
        return txtDate.ClientID.ToString();
        }
    }

