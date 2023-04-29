using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Caching;
using System.IO;
using System.Collections;
using System.Collections.Specialized;
using System.Text;

public class Helpers
    {
    private static string[] _countries = new string[] { 
         "Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", 
         "Angola", "Anguilla", "Antarctica", "Antigua And Barbuda", "Argentina", 
         "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan",
		   "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus",
		   "Belgium", "Belize", "Benin", "Bermuda", "Bhutan",
		   "Bolivia", "Bosnia Hercegovina", "Botswana", "Bouvet Island", "Brazil",
		   "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Byelorussian SSR",
		   "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands",
		   "Central African Republic", "Chad", "Chile", "China", "Christmas Island",
		   "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo", "Cook Islands",
		   "Costa Rica", "Cote D'Ivoire", "Croatia", "Cuba", "Cyprus",
		   "Czech Republic", "Czechoslovakia", "Denmark", "Djibouti", "Dominica",
		   "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador",
		   "England", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia",
		   "Falkland Islands", "Faroe Islands", "Fiji", "Finland", "France",
		   "Gabon", "Gambia", "Georgia", "Germany", "Ghana",
		   "Gibraltar", "Great Britain", "Greece", "Greenland", "Grenada",
		   "Guadeloupe", "Guam", "Guatemela", "Guernsey", "Guiana",
		   "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard Islands",
		   "Honduras", "Hong Kong", "Hungary", "Iceland", "India",
		   "Indonesia", "Iran", "Iraq", "Ireland", "Isle Of Man",
		   "Israel", "Italy", "Jamaica", "Japan", "Jersey",
		   "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, South",
		   "Korea, North", "Kuwait", "Kyrgyzstan", "Lao People's Dem. Rep.", "Latvia",
		   "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein",
		   "Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar",
		   "Malawi", "Malaysia", "Maldives", "Mali", "Malta",
		   "Mariana Islands", "Marshall Islands", "Martinique", "Mauritania", "Mauritius",
		   "Mayotte", "Mexico", "Micronesia", "Moldova", "Monaco",
		   "Mongolia", "Montserrat", "Morocco", "Mozambique", "Myanmar",
		   "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles",
		   "Neutral Zone", "New Caledonia", "New Zealand", "Nicaragua", "Niger",
		   "Nigeria", "Niue", "Norfolk Island", "Northern Ireland", "Norway",
		   "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea",
		   "Paraguay", "Peru", "Philippines", "Pitcairn", "Poland",
		   "Polynesia", "Portugal", "Puerto Rico", "Qatar", "Reunion",
		   "Romania", "Russian Federation", "Rwanda", "Saint Helena", "Saint Kitts",
		   "Saint Lucia", "Saint Pierre", "Saint Vincent", "Samoa", "San Marino",
		   "Sao Tome and Principe", "Saudi Arabia", "Scotland", "Senegal", "Seychelles",
		   "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands",
		   "Somalia", "South Africa", "South Georgia", "Spain", "Sri Lanka",
		   "Sudan", "Suriname", "Svalbard", "Swaziland", "Sweden",
		   "Switzerland", "Syrian Arab Republic", "Taiwan", "Tajikista", "Tanzania",
		   "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago",
		   "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", "Tuvalu",
		   "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States",
		   "Uruguay", "Uzbekistan", "Vanuatu", "Vatican City State", "Venezuela",
		   "Vietnam", "Virgin Islands", "Wales", "Western Sahara", "Yemen",
		   "Yugoslavia", "Zaire", "Zambia", "Zimbabwe"};

    /// <summary>
    /// Returns an array with all countries
    /// </summary>     
    public static StringCollection GetCountries()
        {
        StringCollection countries = new StringCollection();
        countries.AddRange(_countries);
        return countries;
        }
    public static SortedList GetCountries(bool insertEmpty)
        {
        SortedList countries = new SortedList();
        if (insertEmpty)
            countries.Add("", "Please select one...");
        foreach (String country in _countries)
            countries.Add(country, country);
        return countries;
        }

    /// <summary>
    /// Returns an array with the names of all local Themes
    /// </summary>
    public static string[] GetThemes()
        {
        if (HttpContext.Current.Cache["SiteThemes"] != null)
            {
            return (string[])HttpContext.Current.Cache["SiteThemes"];
            }
        else
            {
            string themesDirPath = HttpContext.Current.Server.MapPath("~/App_Themes");
            // get the array of themes folders under /app_themes
            string[] themes = Directory.GetDirectories(themesDirPath);
            for (int i = 0; i <= themes.Length - 1; i++)
                themes[i] = Path.GetFileName(themes[i]);
            // cache the array with a dependency to the folder
            CacheDependency dep = new CacheDependency(themesDirPath);
            HttpContext.Current.Cache.Insert("SiteThemes", themes, dep);
            return themes;
            }
        }

    /// <summary>
    /// Adds the onfocus and onblur attributes to all input controls found in the specified parent,
    /// to change their apperance with the control has the focus
    /// </summary>
    public static void SetInputControlsHighlight(Control container, string className, bool onlyTextBoxes)
        {
        foreach (Control ctl in container.Controls)
            {
            if ((onlyTextBoxes && ctl is TextBox) || ctl is TextBox || ctl is DropDownList ||
                ctl is ListBox || ctl is CheckBox || ctl is RadioButton ||
                ctl is RadioButtonList || ctl is CheckBoxList)
                {
                WebControl wctl = ctl as WebControl;
                wctl.Attributes.Add("onfocus", string.Format("this.className = '{0}';", className));
                wctl.Attributes.Add("onblur", "this.className = '';");
                }
            else
                {
                if (ctl.Controls.Count > 0)
                    SetInputControlsHighlight(ctl, className, onlyTextBoxes);
                }
            }
        }

    public static string loginmember(string email, string password, string ipaddress)
        {
        SqlDataReader rdr = null;
        SqlConnection conn = null;

        // create and open a connection object
        conn = new SqlConnection(GetConnectionString(""));
        conn.Open();

        SqlCommand cmd = new SqlCommand("LoginMember", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@email", email));
        cmd.Parameters.Add(new SqlParameter("@password", password));
        cmd.Parameters.Add(new SqlParameter("@ipaddress", ipaddress));

        rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        string returntext = "";

        while (rdr.Read())
            {
            try
                {
                returntext = rdr[0].ToString();
                }
            catch
                {
                }
            }

        try
            {
            rdr.Close();
            }
        catch
            {
            }
        return returntext;

        }

    /// <summary>
    /// Converts the input plain-text to HTML version, replacing carriage returns
    /// and spaces with <br /> and &nbsp;
    /// </summary>
    public static string ConvertToHtml(string content)
        {
        content = HttpUtility.HtmlEncode(content);
        content = content.Replace("  ", "&nbsp;&nbsp;").Replace(
           "\t", "&nbsp;&nbsp;&nbsp;").Replace("\n", "<br>");
        return content;
        }

    public static string populateContent(string forpage)
        {
        ////string page = "d:\\grapple-websites\\aejm\\admin\\" + forpage;
        //string page = HttpContext.Current.Server.MapPath("~/admin/") + forpage; 
        ////page = "C:\\sandiego dec\\admin\\" + forpage;
        //TextReader trs = new StreamReader(page);
        //string timedate = trs.ReadLine();
        //string contents = trs.ReadToEnd();

        string contents = ReadDataFromFile("", forpage);

        return contents;
        }

    public static string generateMenu(string menufile)
        {

        string page = HttpContext.Current.Server.MapPath("~/admin/") + menufile;
        //string page = "d:\\grapple-websites\\aejm\\admin\\" + menufile;


        StringBuilder newFile = new StringBuilder();
        StringBuilder menu = new StringBuilder();

        menu.AppendLine("<div class='table_left'>");

        int cnt = 1;

        //read the file and put to dictionary
        //StreamReader sr = new StreamReader(Path.Combine(executablePath, menufile));
        StreamReader sr = new StreamReader(page);
        while (!sr.EndOfStream)
            {
            //To use a plain un encrypted config file use the following code
            string line = sr.ReadLine();
            line = line.Trim();
            line = line.Replace("&lt;p&gt;", "");
            //allow a # line as the comments and blank line
            if (line.StartsWith("#") || string.IsNullOrEmpty(line))
                continue;
            if (line.StartsWith("CurrentPage") || line.StartsWith("link") || line.StartsWith("show"))
                {
                }
            else
                {
                continue;
                }

            string[] values = line.Split('=');
            string key = values[0].Trim();
            string showtext = values[1].Trim().Trim(new char[] { '"' });
            string hypLink = values[2].Trim();
            hypLink = hypLink.Replace("&lt;/p&gt;", "");
            // if no key specified, ignore current one
            if (string.IsNullOrEmpty(key))
                continue;

            // add ftp path to a multiple values string collection
            if (key == "CurrentPage")
                {
                menu.AppendLine("<div class=\"table_left_CurrentPage\">");
                menu.AppendLine("<img alt=\"\" src=\"userfiles/image/websitebranding/red.gif\" />&nbsp;&nbsp; " + showtext);
                menu.AppendLine("</div>");
                menu.AppendLine("<br />");
                }
            else if (key == "link")
                {
                menu.AppendLine("<div class=\"table_content\">");
                if (hypLink.StartsWith("http"))
                    {
                    menu.AppendLine("<a class=\"table_content\" ID=\"hypMenu" + cnt.ToString() + "\" href=\"" + hypLink + "\">" + showtext + "</a>");
                    }
                else
                    {
                    menu.AppendLine("<a class=\"table_content\" ID=\"hypMenu" + cnt.ToString() + "\" href=\"/" + hypLink + "\">" + showtext + "</a>");
                    }
                menu.AppendLine("<img alt=\"\" src=\"userfiles/image/websitebranding/arrow.gif\" /></div>");
                menu.AppendLine("<br />");
                }
            else if (key == "show")
                {
                menu.AppendLine("<div class=\"table_content\">");
                menu.AppendLine("<span class=\"table_content_blue_nopadding\">" + showtext + "</span>");
                menu.AppendLine("<img alt=\"\" src=\"userfiles/image/websitebranding/arrow.gif\" /></div>");
                menu.AppendLine("<br />");
                }
            cnt += 1;
            }
        menu.AppendLine("</div>");
        sr.Close();
        return menu.ToString();

        }

    public static string generateNewMenu(string pagemenumaster, string pagemenutitle, string pageID)
        {
        StringBuilder newFile = new StringBuilder();
        StringBuilder menu = new StringBuilder();
        int cnt = 1;
        menu.AppendLine("<div class='table_left'>");
        SqlDataReader rdr = Helpers.GetMenuItems(Convert.ToInt16(pagemenumaster));
        while (rdr.Read())
            {

            string showtext = rdr["menu_title"].ToString().Trim().Trim(new char[] { '"' });
            showtext = showtext.ToString().Replace("###", "<br/>");
            string link = rdr["pagelink"].ToString();
            string hypLink = rdr["pagelink"].ToString();

            if (hypLink.IndexOf(".") > 0)
                {
                //uselink
                }
            else
                {
                hypLink = "default.aspx?pageID=" + hypLink.ToString() + "&pagename=" + showtext.ToString().Replace(" ", "");
                }

            // add ftp path to a multiple values string collection
            if (cnt == 1)
                {
                menu.AppendLine("<div class=\"table_left_CurrentPage\">");
                menu.AppendLine("<img alt=\"\" src=\"userfiles/image/websitebranding/red.gif\" />&nbsp;&nbsp; " + pagemenutitle);
                menu.AppendLine("</div>");
                menu.AppendLine("<br />");

                }


            if (pageID == link)
                {
                menu.AppendLine("<div class=\"table_content\">");
                menu.AppendLine("<span class=\"table_content_blue_nopadding\">" + showtext + "</span>");
                menu.AppendLine("<img alt=\"\" src=\"userfiles/image/websitebranding/arrow.gif\" /></div>");
                menu.AppendLine("<br />");
                }
            else
                {
                menu.AppendLine("<div class=\"table_content\">");
                if (hypLink.StartsWith("http"))
                    {
                    menu.AppendLine("<a class=\"table_content\" ID=\"hypMenu" + cnt.ToString() + "\" href=\"" + hypLink + "\">" + showtext + "</a>");
                    }
                else
                    {
                    menu.AppendLine("<a class=\"table_content\" ID=\"hypMenu" + cnt.ToString() + "\" href=\"/" + hypLink + "\">" + showtext + "</a>");
                    }
                menu.AppendLine("<img alt=\"\" src=\"userfiles/image/websitebranding/arrow.gif\" /></div>");
                menu.AppendLine("<br />");
                }
            cnt += 1;
            }

        menu.AppendLine("</div>");
        try
            {
            rdr.Close();
            }
        catch
            {
            }

        return menu.ToString();

        }

    public static string GetConnectionString(string str)
        {
        //variable to hold our return value
        string conn = string.Empty;
        //check if a value was provided
        if (!string.IsNullOrEmpty(str))
            {
            //name provided so search for that connection
            conn = ConfigurationManager.ConnectionStrings[str].ConnectionString;
            }
        else
        //name not provided, get the 'default' connection
            {
            conn = ConfigurationManager.ConnectionStrings["SANDECConnectionString"].ConnectionString;
            }
        //return the value
        return conn;
        }

    public static DataSet GetEvent(string eventID)
        {
        DataSet ds = new DataSet();

        string connectionstring = GetConnectionString("");
        // instantiate the connection
        try
            {
            SqlCommand myCommand = new SqlCommand("GetEvent");
            myCommand.CommandType = CommandType.StoredProcedure;
            SqlConnection myConnection = new SqlConnection(connectionstring);
            myCommand.Parameters.Add(new SqlParameter("@id", eventID));
            myCommand.Connection = myConnection;
            SqlDataAdapter da = new SqlDataAdapter(myCommand);
            da.Fill(ds);
            myConnection.Close();
            }
        catch (Exception)
            {

            }
        return ds;

        
        }

    public static SqlDataReader GetPage(string pageID)
        {

        SqlConnection conn = null;
        SqlDataReader rdr = null;

        string connectionstring = GetConnectionString("");
        try
            {
            // create and open a connection object
            conn = new SqlConnection(GetConnectionString(""));

            conn.Open();

            SqlCommand cmd = new SqlCommand("GetPageData", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@pageID", pageID));


            // execute the command
            rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
        finally
            {
            
            }

        return rdr;

        }

    public static SqlDataReader GetPageListSDR()
        {
        SqlConnection conn = null;
        SqlDataReader rdr = null;

        string connectionstring = GetConnectionString("");
        try
            {
            // create and open a connection object
            conn = new SqlConnection(GetConnectionString(""));
            conn.Open();

            SqlCommand cmd = new SqlCommand("GetPageList", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            // execute the command
            rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
        finally
            {
            
            }

        return rdr;
        }

    public static DataSet GetEventList()
        {
        DataSet ds = new DataSet();

        string connectionstring = GetConnectionString("");
        // instantiate the connection
        try
            {
            SqlCommand myCommand = new SqlCommand("GetEventList");
            myCommand.CommandType = CommandType.StoredProcedure;
            SqlConnection myConnection = new SqlConnection(connectionstring);
            myCommand.Parameters.Add(new SqlParameter("@datefiltered", 0));
            myCommand.Connection = myConnection;
            SqlDataAdapter da = new SqlDataAdapter(myCommand);
            da.Fill(ds);
            myConnection.Close();
            }
        catch (Exception)
            {

            }
        return ds;
        }

    public static DataSet GetEventList(int datefiltered)
        {
        DataSet ds = new DataSet();

        string connectionstring = GetConnectionString("");
        // instantiate the connection
        try
            {
            SqlCommand myCommand = new SqlCommand("GetEventList");
            myCommand.CommandType = CommandType.StoredProcedure;
            SqlConnection myConnection = new SqlConnection(connectionstring);
            myCommand.Parameters.Add(new SqlParameter("@datefiltered", datefiltered));
            myCommand.Connection = myConnection;
            SqlDataAdapter da = new SqlDataAdapter(myCommand);
            da.Fill(ds);
            myConnection.Close();
            }
        catch (Exception)
            {

            }
        return ds;
        }

    public static DataSet GetPageList()
        {
        DataSet ds = new DataSet();

        string connectionstring = GetConnectionString("");
        // instantiate the connection
        try
            {
            SqlCommand myCommand = new SqlCommand("GetPageList");
            myCommand.CommandType = CommandType.StoredProcedure;
            SqlConnection myConnection = new SqlConnection(connectionstring);
            myCommand.Connection = myConnection;
            SqlDataAdapter da = new SqlDataAdapter(myCommand);
            da.Fill(ds);
            myConnection.Close();
            }
        catch (Exception)
            {

            }
        return ds;
        }

    public static SqlDataReader GetMenuItems(int parentMenu)
        {

        SqlConnection conn = null;
        SqlDataReader rdr = null;

        string connectionstring = GetConnectionString("");
        try
            {
            // create and open a connection object
            conn = new SqlConnection(GetConnectionString(""));
            conn.Open();

            SqlCommand cmd = new SqlCommand("GetMenuItems", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@parentMenu", parentMenu));


            // execute the command
            rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
        finally
            {

            }

        return rdr;

        }

    public static SqlDataReader GetMenuItem(string MenuID)
        {

        SqlConnection conn = null;
        SqlDataReader rdr = null;

        string connectionstring = GetConnectionString("");
        try
            {
            // create and open a connection object
            conn = new SqlConnection(GetConnectionString(""));
            conn.Open();

            SqlCommand cmd = new SqlCommand("GetMenuItem", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@ID", MenuID));


            // execute the command
            rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
        finally
            {

            }

        return rdr;

        }

    public static DataSet GetMenuItemsDS(int parentMenu)
        {

        DataSet ds = new DataSet();

        string connectionstring = GetConnectionString("");
        // instantiate the connection
        try
            {
            SqlCommand myCommand = new SqlCommand("GetMenuItems");
            myCommand.CommandType = CommandType.StoredProcedure;
            SqlConnection myConnection = new SqlConnection(connectionstring);
            myCommand.Connection = myConnection;
            myCommand.Parameters.Add(new SqlParameter("@parentMenu", parentMenu));
            SqlDataAdapter da = new SqlDataAdapter(myCommand);
            da.Fill(ds);
            myConnection.Close();
            }
        catch (Exception)
            {

            }
        return ds;

        }

    public static DataSet GetMemberList()
        {
        DataSet ds = new DataSet();

        string connectionstring = GetConnectionString("");
        // instantiate the connection
        try
            {
            SqlCommand myCommand = new SqlCommand("GetMemberList");
            myCommand.CommandType = CommandType.StoredProcedure;
            SqlConnection myConnection = new SqlConnection(connectionstring);
            myCommand.Connection = myConnection;
            SqlDataAdapter da = new SqlDataAdapter(myCommand);
            da.Fill(ds);
            myConnection.Close();
            }
        catch (Exception)
            {

            }
        return ds;
        }

    public static DataSet GetMemberList(string memberID)
        {
        DataSet ds = new DataSet();

        string connectionstring = GetConnectionString("");
        // instantiate the connection
        try
            {
            SqlCommand myCommand = new SqlCommand("GetMemberList");
            myCommand.CommandType = CommandType.StoredProcedure;
            SqlConnection myConnection = new SqlConnection(connectionstring);
            myCommand.Connection = myConnection;
            myCommand.Parameters.Add(new SqlParameter("@memberID", memberID));
            SqlDataAdapter da = new SqlDataAdapter(myCommand);
            da.Fill(ds);
            myConnection.Close();
            }
        catch (Exception)
            {
            throw;
            }
        return ds;
        }

    public static DataSet GetAddress(string memberID)
        {
        DataSet ds = new DataSet();

        string connectionstring = GetConnectionString("");
        // instantiate the connection
        try
            {
            SqlCommand myCommand = new SqlCommand("GetAddress");
            myCommand.CommandType = CommandType.StoredProcedure;
            SqlConnection myConnection = new SqlConnection(connectionstring);
            myCommand.Parameters.Add(new SqlParameter("@memberID", memberID));
            myCommand.Connection = myConnection;
            SqlDataAdapter da = new SqlDataAdapter(myCommand);
            da.Fill(ds);
            myConnection.Close();
            }
        catch (Exception)
            {

            }
        return ds;
        }

    public static string ReadDataFromFile(string filepath, string pagename)
        {
        SqlConnection conn = null;
        SqlDataReader rdr = null;

        string contents = "";
        string connectionstring = GetConnectionString("");
        try
            {
            // create and open a connection object
            conn = new SqlConnection(GetConnectionString(""));
            conn.Open();

            SqlCommand cmd = new SqlCommand("GetPage", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@page_name", pagename));


            // execute the command
            rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            // iterate through results, printing each to console
            while (rdr.Read())
                {
                contents = rdr["page_content"].ToString();
                }
            }

        finally
            {
            try
                {
                rdr.Close();
                }
            catch
                {
                }
            }

        return contents;

        }

    public static string GetPageHTMLContent(string pagename)
        {

        SqlConnection conn = null;
        SqlDataReader rdr = null;

        string contents = "";
        string connectionstring = GetConnectionString("");
        try
            {
            // create and open a connection object
            conn = new SqlConnection(GetConnectionString(""));
            conn.Open();

            SqlCommand cmd = new SqlCommand("GetPage", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@page_name", pagename));


            // execute the command
            rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            // iterate through results, printing each to console
            while (rdr.Read())
                {
                contents = rdr["page_content"].ToString();
                }
            }

        finally
            {
            try
                {
                rdr.Close();
                }
            catch
                {
                }
            }

        return contents;

        }

    public static bool saveNewsletter(string firstname, string lastname, string email, string subscribe, string ipaddress)
        {

        bool bAns = false;

        SqlDataReader rdr = null;
        SqlConnection conn = null;

        // create and open a connection object
        conn = new SqlConnection(GetConnectionString(""));
        conn.Open();

        SqlCommand cmd = new SqlCommand("SaveNewsletterSubscribe", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add(new SqlParameter("@firstname", firstname));
        cmd.Parameters.Add(new SqlParameter("@lastname", lastname));
        cmd.Parameters.Add(new SqlParameter("@email", email));
        cmd.Parameters.Add(new SqlParameter("@subscribe", subscribe));
        cmd.Parameters.Add(new SqlParameter("@ipaddress", ipaddress));

        rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        string memberID = "0";

        while (rdr.Read())
            {
            memberID = rdr["memberID"].ToString();
            }

        if (memberID == "0")
            {
            //not a member already
            bAns = false;
            }
        else
            {
            bAns = true;
            }

        try
            {
            rdr.Close();
            }
        catch
            {
            }

        return bAns;

        }

    public static string savemember(ref int memberID, string group, string prefix, string firstname, string lastname, string email, string password, Boolean newsletter, string position, string company, string phone, string fax, string ipaddress, string active)
        {
        SqlDataReader rdr = null;
        SqlConnection conn = null;

        // create and open a connection object
        conn = new SqlConnection(GetConnectionString(""));
        conn.Open();

        SqlCommand cmd = new SqlCommand("SaveMember", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@memberID", memberID));
        cmd.Parameters.Add(new SqlParameter("@group", group));
        cmd.Parameters.Add(new SqlParameter("@prefix", prefix));
        cmd.Parameters.Add(new SqlParameter("@firstname", firstname));
        cmd.Parameters.Add(new SqlParameter("@lastname", lastname));
        cmd.Parameters.Add(new SqlParameter("@email", email));
        cmd.Parameters.Add(new SqlParameter("@password", password));
        cmd.Parameters.Add(new SqlParameter("@newsletter", newsletter));
        cmd.Parameters.Add(new SqlParameter("@position", position));
        cmd.Parameters.Add(new SqlParameter("@company", company));
        cmd.Parameters.Add(new SqlParameter("@phone", phone));
        cmd.Parameters.Add(new SqlParameter("@fax", fax));
        cmd.Parameters.Add(new SqlParameter("@ipaddress", ipaddress));
        cmd.Parameters.Add(new SqlParameter("@active", active));
        rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        string returntext = "";

        while (rdr.Read())
            {
            try
                {
                returntext = rdr[0].ToString();
                memberID = Convert.ToInt32(rdr[1]);
                }
            catch
                {
                }
            }

        try
            {
            rdr.Close();
            }
        catch
            {
            }
        return returntext;

        }

    public static string saveaddress(int id, int memberID, string addresstype, string addressdescription, string address1, string address2, string city, string state, string zip, string country, int active, string ipaddress)
        {
        if (memberID < 1)
            {
            return "104";
            }
        else
            {
            SqlDataReader rdr = null;
            SqlConnection conn = null;
            // create and open a connection object
            conn = new SqlConnection(GetConnectionString(""));
            conn.Open();
            using (conn)
                {
                SqlCommand cmd = new SqlCommand("SaveAddress", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@id", id));
                cmd.Parameters.Add(new SqlParameter("@memberID", memberID));
                cmd.Parameters.Add(new SqlParameter("@addresstype", addresstype));
                cmd.Parameters.Add(new SqlParameter("@addressdescription", addressdescription));
                cmd.Parameters.Add(new SqlParameter("@address1", address1));
                cmd.Parameters.Add(new SqlParameter("@address2", address2));
                cmd.Parameters.Add(new SqlParameter("@city", city));
                cmd.Parameters.Add(new SqlParameter("@state", state));
                cmd.Parameters.Add(new SqlParameter("@zip", zip));
                cmd.Parameters.Add(new SqlParameter("@country", country));
                cmd.Parameters.Add(new SqlParameter("@active", 1));
                cmd.Parameters.Add(new SqlParameter("@ipaddress", ipaddress));

                rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                string returntext = "";

                while (rdr.Read())
                    {
                    try
                        {
                        returntext = rdr[0].ToString();
                        }
                    catch
                        {
                        }
                    }
                try
                    {
                    rdr.Close();
                    }
                catch
                    {
                    }
                return returntext;
                }
            }
        }
    //save the createdCSV to a text file
    public static bool SaveTextToFile(string strData, string FullPath, string pagename)
        {
        bool bAns = false;
        //StreamWriter objReader = default(StreamWriter);
        //try
        //    {
        //    objReader = new StreamWriter(FullPath);
        //    objReader.Write(strData);
        //    objReader.Close();
        //    bAns = true;
        //    }
        //catch (Exception Ex)
        //    {

        //    }
        //return bAns;

        SqlConnection conn = null;

        try
            {
            // create and open a connection object
            conn = new SqlConnection(GetConnectionString(""));
            conn.Open();

            SqlCommand cmd = new SqlCommand("SavePage", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@page_name", pagename));
            //cmd.Parameters.Add(new SqlParameter("@page_title", custId));
            cmd.Parameters.Add(new SqlParameter("@page_content", strData));
            cmd.Parameters.Add(new SqlParameter("@url_identifier", ""));
            //cmd.Parameters.Add(new SqlParameter("@status", custId));
            //cmd.Parameters.Add(new SqlParameter("@meta_data_keywords", custId));
            //cmd.Parameters.Add(new SqlParameter("@meta_data_description", custId));
            //cmd.Parameters.Add(new SqlParameter("@page_template", custId));

            // execute the command
            //rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            cmd.ExecuteNonQuery();

            // iterate through results, printing each to console
            //while (rdr.Read())
            //    {
            //    Console.WriteLine(
            //        "Product: {0,-35} Total: {1,2}",
            //        rdr["ProductName"],
            //        rdr["Total"]);
            //    }
            bAns = true;
            }
        catch
            {
            bAns = false;
            }
        finally
            {
            try
                {
                conn.Close();
                }
            catch
                {
                }
            //if (rdr != null)
            //    {
            //    rdr.Close();
            //    }
            }

        return bAns;

        }

    public static bool SaveEvent(string id,
        string title,
        string short_description,
        string description,
        string eventdate,
        string eventtime,
        string location_name,
        string location_telephone,
        string cost,
        string costdescription,
        string maplink,
        string contact_name,
        string contact_phone,
        string contact_email,
        string contact1_name,
        string contact1_phone,
        string contact1_email,
        string location_address,
        string loaction_address1,
        string loaction_city,
        string location_state,
        string location_zip,
        string location_country,
        string startdate,
        string booktilldate,
        string places,
        string headerimagefile,
        string sideimagefile,
        Boolean showbook,
        string bookingurl)
        {
        bool bAns = false;

        SqlConnection conn = null;

        // create and open a connection object
        conn = new SqlConnection(GetConnectionString(""));
        conn.Open();
      
        SqlCommand cmd = new SqlCommand("SaveEvent", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@id", id));
        cmd.Parameters.Add(new SqlParameter("@title", title));
        cmd.Parameters.Add(new SqlParameter("@short_description", short_description));
        cmd.Parameters.Add(new SqlParameter("@description", description));
        cmd.Parameters.Add(new SqlParameter("@eventdate", eventdate));
        cmd.Parameters.Add(new SqlParameter("@eventtime", eventtime));
        cmd.Parameters.Add(new SqlParameter("@location_name", location_name));
        cmd.Parameters.Add(new SqlParameter("@location_telephone", location_telephone));
        cmd.Parameters.Add(new SqlParameter("@cost", cost));
        cmd.Parameters.Add(new SqlParameter("@costdescription", costdescription));
        cmd.Parameters.Add(new SqlParameter("@maplink", maplink));
        cmd.Parameters.Add(new SqlParameter("@contact_name", contact_name));
        cmd.Parameters.Add(new SqlParameter("@contact_phone", contact_phone));
        cmd.Parameters.Add(new SqlParameter("@contact_email", contact_email));
        cmd.Parameters.Add(new SqlParameter("@contact1_name", contact1_name));
        cmd.Parameters.Add(new SqlParameter("@contact1_phone", contact1_phone));
        cmd.Parameters.Add(new SqlParameter("@contact1_email", contact1_email));
        cmd.Parameters.Add(new SqlParameter("@location_address", location_address));
        cmd.Parameters.Add(new SqlParameter("@loaction_address1", loaction_address1));
        cmd.Parameters.Add(new SqlParameter("@loaction_city", loaction_city));
        cmd.Parameters.Add(new SqlParameter("@location_state", location_state));
        cmd.Parameters.Add(new SqlParameter("@location_zip", location_zip));
        cmd.Parameters.Add(new SqlParameter("@location_country", location_country));
        cmd.Parameters.Add(new SqlParameter("@startdate", startdate));
        cmd.Parameters.Add(new SqlParameter("@booktilldate", booktilldate));
        cmd.Parameters.Add(new SqlParameter("@places", places));
        cmd.Parameters.Add(new SqlParameter("@headerimagefile", headerimagefile));
        cmd.Parameters.Add(new SqlParameter("@sideimagefile", sideimagefile));
        cmd.Parameters.Add(new SqlParameter("@showbook", showbook));
        cmd.Parameters.Add(new SqlParameter("@bookingurl", bookingurl));
        try
            {
            cmd.ExecuteNonQuery();
            bAns = true;
            }
        catch
            {
            bAns = false;
            }
        try
            {
            conn.Close();
            }
        catch
            {
            }
        return bAns;
        }

    public static bool SavePage(string pageID, string content, string title, string identifier, string status, string keywords, string description, string template, string headerimagefile, string loginrequired, string menutext, string menutitle, string menumaster)
        {
        bool bAns = false;

        SqlConnection conn = null;

        // create and open a connection object
        conn = new SqlConnection(GetConnectionString(""));
        conn.Open();

        SqlCommand cmd = new SqlCommand("SavePage", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add(new SqlParameter("@page_ID", pageID));
        cmd.Parameters.Add(new SqlParameter("@page_title", title));
        cmd.Parameters.Add(new SqlParameter("@page_content", content));
        cmd.Parameters.Add(new SqlParameter("@url_identifier", identifier));
        cmd.Parameters.Add(new SqlParameter("@status", status));
        cmd.Parameters.Add(new SqlParameter("@meta_data_keywords", keywords));
        cmd.Parameters.Add(new SqlParameter("@meta_data_description", description));
        cmd.Parameters.Add(new SqlParameter("@page_template", template));
        cmd.Parameters.Add(new SqlParameter("@page_head_image", headerimagefile));
        cmd.Parameters.Add(new SqlParameter("@page_menu_title", menutitle));
        cmd.Parameters.Add(new SqlParameter("@page_menu_text", menutext));
        cmd.Parameters.Add(new SqlParameter("@page_menu_master", menumaster));
        cmd.Parameters.Add(new SqlParameter("@login_required", loginrequired));

        // execute the command
        //rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        cmd.ExecuteNonQuery();
        bAns = true;


        try
            {
            conn.Close();
            }
        catch
            {
            }
        //if (rdr != null)
        //    {
        //    rdr.Close();
        //    }

        return bAns;

        }

    public static bool SaveMenu(string menuID, string title, string parentMenu, string pagelink)
        {
        bool bAns = false;

        SqlConnection conn = null;

        // create and open a connection object
        conn = new SqlConnection(GetConnectionString(""));
        conn.Open();

        SqlCommand cmd = new SqlCommand("SaveMenu", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add(new SqlParameter("@menuID", menuID));
        cmd.Parameters.Add(new SqlParameter("@menu_title", title));
        cmd.Parameters.Add(new SqlParameter("@parent_menu", parentMenu));
        cmd.Parameters.Add(new SqlParameter("@pagelink", pagelink));

        cmd.ExecuteNonQuery();
        bAns = true;


        try
            {
            conn.Close();
            }
        catch
            {
            }
        return bAns;

        }

    public static void MoveMenu(string menuID, string direction)
        {
        SqlConnection conn = null;

        // create and open a connection object
        conn = new SqlConnection(GetConnectionString(""));
        conn.Open();

        SqlCommand cmd = new SqlCommand("MoveMenu", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add(new SqlParameter("@menuID", menuID));
        cmd.Parameters.Add(new SqlParameter("@direction", direction));

        cmd.ExecuteNonQuery();

        try
            {
            conn.Close();
            }
        catch
            {
            }
        }

    public static void deleteMenu(string menuID)
        {
        SqlConnection conn = null;

        // create and open a connection object
        conn = new SqlConnection(GetConnectionString(""));
        conn.Open();

        SqlCommand cmd = new SqlCommand("deleteMenu", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add(new SqlParameter("@menuID", menuID));

        cmd.ExecuteNonQuery();

        try
            {
            conn.Close();
            }
        catch
            {
            }

        }

    public static string getShortEventsTable()
        {
        StringBuilder eventsTable = new StringBuilder();
        DataSet ds = default(DataSet);
        int norecs = 0;
        ds = GetEventList(1);
        eventsTable.AppendLine("<table cellspacing='1' cellpadding='1' border='0' align='left' >");        
        eventsTable.AppendLine("<tbody>");
        eventsTable.AppendLine("<tr>");
        eventsTable.AppendLine("<td><span class='table_content_title_grey'>Upcoming Events</span></td><td></td>");
        eventsTable.AppendLine("</tr>");
        eventsTable.AppendLine("<tr>");
        eventsTable.AppendLine("<td colspan='2'>&nbsp;</td>");
        eventsTable.AppendLine("</tr>");
        foreach (DataRow row in ds.Tables[0].Rows)
            {
            norecs = +1;
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td colspan='2'><span class='table_content_title_blue'>" + row["title"].ToString() + "</span></td>" );
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td>&nbsp;</td>");
            if (!string.IsNullOrEmpty(row["sideimagefile"].ToString()))
                {
                eventsTable.AppendLine("<td rowspan='7'><img src='/userfiles/image/websitebranding/eventsides/" + row["sideimagefile"].ToString() + "'></td>");
                }
            else
                {
                eventsTable.AppendLine("<td rowspan='7'></td>");
                }
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td><span class='table_content_grey'>" + row["short_description"].ToString() + "</span></td>");            
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td >&nbsp;</td>");
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td><span class='table_content_title_grey'>When :</span> <span class='table_content_grey'>" + row["eventdate"].ToString() + "</span></td>");
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td><span class='table_content_title_grey'>Where :</span> <span class='table_content_grey'>" + row["location_name"].ToString() + "</span></td>");
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td><span class='table_content_title_grey'>Price :</span> <span class='table_content_grey'>" + row["costdescription"].ToString() + "</span></td>");
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td><span class='table_content_grey'><a href='/default.aspx?pageID=60&event=" + row["id"].ToString() + "'>Click for more information</a></span></td>");
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td colspan='2'>&nbsp;</td>" );
            eventsTable.AppendLine("</tr>");
            }
        if (norecs == 0)
            {
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td colspan='2'><span class='table_content_grey'>We currently have no events available, please check back in the future or join our newsletter to be notified of the next event when it is added.</span></td>");
            eventsTable.AppendLine("</tr>");
            }

        return eventsTable.ToString();

        }

    public static string getLongEventsTable(string eventid)
        {
        string eventpageheader = "";
        StringBuilder eventsTable = new StringBuilder();
        DataSet ds = default(DataSet);
        int norecs = 0;
        ds = Helpers.GetEvent(eventid.ToString());
        eventsTable.AppendLine("<table cellspacing='1' cellpadding='1' border='0' align='left' >");
        eventsTable.AppendLine("<tbody>");
        eventsTable.AppendLine("<tr>");
        eventsTable.AppendLine("<td colspan='2'>&nbsp;</td>");
        eventsTable.AppendLine("</tr>");

        foreach (DataRow row in ds.Tables[0].Rows)
            {
            HttpContext.Current.Session["eventpageheader"] = row["headerimagefile"].ToString();
            norecs = +1;
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td colspan='2'><span class='table_content_title_blue'>" + row["title"].ToString() + "</span></td>");
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td colspan='2'>&nbsp;</td>");
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td width='60%' valign='top'><span class='table_content_grey'>" + row["description"].ToString() + "</span></td>");
            eventsTable.AppendLine("<td width='40%' valign='top'><span class='table_content_title_grey'>Date :</span><br/><span class='table_content_grey'>" + row["eventdate"].ToString() + "</span>");
            eventsTable.AppendLine("<br/>");
            eventsTable.AppendLine("<br/>");
            eventsTable.AppendLine("<span class='table_content_title_grey'>Time :</span><br/><span class='table_content_grey'>" + row["eventtime"].ToString() + "</span>");
            eventsTable.AppendLine("<br/>");
            eventsTable.AppendLine("<br/>");
            eventsTable.AppendLine("<span class='table_content_title_grey'>Where :</span><br/><span class='table_content_grey'>" + row["location_name"].ToString() + "</span>");
            eventsTable.AppendLine("<br/>");
            eventsTable.AppendLine("<br/>");
            eventsTable.AppendLine("<span class='table_content_title_grey'>Telephone :</span><br/><span class='table_content_grey'>" + row["location_telephone"].ToString() + "</span>");
            eventsTable.AppendLine("<br/>");
            eventsTable.AppendLine("<br/>");
            eventsTable.AppendLine("<span class='table_content_title_grey'>Cost :</span><br/><span class='table_content_grey'>" + row["costdescription"].ToString() + "</span>");
            eventsTable.AppendLine("<br/>");
            eventsTable.AppendLine("<br/>");
            if (!string.IsNullOrEmpty(row["maplink"].ToString()))
                {
                eventsTable.AppendLine("<span class='table_content_grey'><a href='" + row["maplink"].ToString() + "' target='_blank'>Click for MAP</a></span>");
                }
            else
                {
                eventsTable.AppendLine("");
                }
            eventsTable.AppendLine("<br/>");
            eventsTable.AppendLine("<br/>");

            if (row["showbook"].ToString() == "True")
                {
                if (!string.IsNullOrEmpty(row["bookingurl"].ToString()))
                    {
                    eventsTable.AppendLine("<span class='table_content_grey'><a href='" + row["bookingurl"].ToString() + "' target='_blank'>Click Here to Book</a></span>");
                    }
                else
                    {
                    eventsTable.AppendLine("");
                    }
                }

            eventsTable.AppendLine("</td>");
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td colsapn='2'><span class='table_content_title_grey'>Contacts</span></td>");
            eventsTable.AppendLine("");
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td><span class='table_content_grey'>Name : " + row["contact_name"].ToString() + "</span></td>");
            eventsTable.AppendLine("<td><span class='table_content_grey'>Name : " + row["contact1_name"].ToString() + "</span></td>");
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td><span class='table_content_grey'>Telephone : " + row["contact_phone"].ToString() + "</span></td>");
            eventsTable.AppendLine("<td><span class='table_content_grey'>Telephone : " + row["contact1_phone"].ToString() + "</span></td>");
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td><span class='table_content_grey'>Email : " + row["contact_email"].ToString() + "</span></td>");
            eventsTable.AppendLine("<td><span class='table_content_grey'>Email : " + row["contact1_email"].ToString() + "</span></td>");
            eventsTable.AppendLine("</tr>");
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td colspan='2'>&nbsp;</td>");
            eventsTable.AppendLine("</tr>");
            }

        if (norecs == 0)
            {
            eventsTable.AppendLine("<tr>");
            eventsTable.AppendLine("<td colspan='2'><span class='table_content_grey'>We currently have no events available, please check back in the future or join our newsletter to be notified of the next event when it is added.</span></td>");
            eventsTable.AppendLine("</tr>");
            }
        eventsTable.AppendLine("</tbody></table>");

        
        return eventsTable.ToString();

        }
    }


