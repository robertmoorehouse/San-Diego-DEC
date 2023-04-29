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

public partial class admin_members_addnew : System.Web.UI.Page
    {
    Boolean savedworked = false;
    protected void Page_Load(object sender, EventArgs e)
        {
        if(!Page.IsPostBack)
            {
            ddlCountry.DataSource = Helpers.GetCountries();
            ddlCountry.DataBind();

            string dotype = Request.QueryString["member"];

            if(string.IsNullOrEmpty(dotype))
                dotype = "new";

            if(dotype == "new")
                {
                lblPageTitle.Text = "Add new member";
                ddlCountry.Items.FindByValue("United States").Selected = true;
                }
            else
                {
                //populate data for memberid
                
                try
                    {
                    DataSet ds = new DataSet();
                    ds = Helpers.GetMemberList(dotype);
                    using(ds)
                        {
                        foreach(DataRow row in ds.Tables[0].Rows)
                            {

                            txtFirstName.Text = row["firstname"].ToString();
                            txtLastName.Text = row["lastname"].ToString();
                            txtEmail.Text = row["emailaddress"].ToString();
                            txtPassword.Text = row["password"].ToString();
                            txtPosition.Text = row["position"].ToString();
                            txtCompany.Text = row["company"].ToString();
                            txtPhone.Text = row["phone"].ToString();
                            txtFax.Text = row["fax"].ToString();
                            ddlPrefix.Items.FindByValue(row["prefix"].ToString()).Selected = true;
                            if ((bool)row["active"])
                                {
                                ddlactive.Items.FindByValue("1").Selected = true;
                                }
                            else
                                {
                                ddlactive.Items.FindByValue("0").Selected = true;
                                }
                            //
                            lblPageTitle.Text = "Amend  member record: " + dotype.ToString();
                            }
                        }
                    DataSet ds1 = new DataSet();
                    ds1 = Helpers.GetAddress(dotype);
                    using(ds1)
                        {
                        try
                            {
                            DataRow row = ds1.Tables[0].Rows[0];
                            txtAddress1.Text = row["address1"].ToString();
                            txtAddress2.Text = row["address2"].ToString();
                            txtCity.Text = row["city"].ToString();
                            txtState.Text = row["state"].ToString();
                            txtZip.Text = row["zip"].ToString();
                            ddlCountry.Items.FindByValue(row["country"].ToString()).Selected = true;    
                            }
                        catch(Exception)
                            {
                            throw;
                            }
                        }

                    chkNewsletter.Checked = true;
                    }
                catch(Exception)
                    {
                    throw;
                    }
                }


            }
        }

    protected void btnSubmit_Click(object sender, EventArgs e)
        {
        savepage();
        if(savedworked)
            Response.Redirect("members_list.aspx");
        }

    protected void btnSaveandContinue_Click(object sender, EventArgs e)
        {
        savepage();
        }

    protected void savepage()
        {
        string dotype = Request.QueryString["member"];
        int memberID = 0;
        if(string.IsNullOrEmpty(dotype))
            dotype = "new";
        try
            {
            if(dotype == "new")
                {
                memberID = 0;
                }
            else
                {
                memberID = Convert.ToInt32(dotype);
                }

            string firstname = "" + "" + txtFirstName.Text.ToString();
            string lasname = "" + txtLastName.Text.ToString();
            string email = "" + txtEmail.Text.ToString();
            string password = "" + txtPassword.Text.ToString();
            Boolean newsletter = chkNewsletter.Checked;
            string prefix = "" + ddlPrefix.SelectedValue.ToString();
            string ipaddress = "" + Request.ServerVariables["remote_addr"].ToString();

            string returntext = "" + "";
            string position = "" + txtPosition.Text.ToString();
            string company = "" + txtCompany.Text.ToString();
            string address1 = "" + txtAddress1.Text.ToString();
            string address2 = "" + txtAddress2.Text.ToString();
            string city = "" + txtCity.Text.ToString();
            string state = "" + txtState.Text.ToString();
            string country = "" + ddlCountry.SelectedItem.Value.ToString();
            string zip = "" + txtZip.Text.ToString();
            string phone = "" + txtPhone.Text.ToString();
            string fax = "" + txtFax.Text.ToString();
            string active = "" + ddlactive.SelectedItem.Value.ToString();
            if(chkPasswordCreate.Checked)
                {
                password = Membership.GeneratePassword(12, 1).ToString();
                }

            try
                {
                returntext = Helpers.savemember(ref memberID, "web registration", prefix, firstname, lasname, email, password, newsletter, position, company, phone, fax, ipaddress, active);

                string addresstype = "postal";
                string addressdescription = "postal address";

                returntext = Helpers.saveaddress(0, Convert.ToInt32(memberID), addresstype, addressdescription, address1, address2, city, state, zip, country, 1, ipaddress);

                addresstype = "billing";
                addressdescription = "billing address";

                returntext = Helpers.saveaddress(0, Convert.ToInt32(memberID), addresstype, addressdescription, address1, address2, city, state, zip, country, 1, ipaddress);

                switch(returntext.ToString())
                    {
                    case "101":
                        lblPageTitle.Text = "Sorry we are unable to register you as this email address is already registered.<br><br>Please login instead.";
                        break;
                    case "102":
                        lblPageTitle.Text = "Member record Updated.";
                        savedworked = true;
                        break;
                    case "103":
                        lblPageTitle.Text = "Thank you for registering, we will be in touch shortly.";
                        savedworked = true;
                        break;
                    case "104":
                        lblPageTitle.Text = "Sorry we have encountered an error please try again. Error in Member ID";
                        savedworked = true;
                        break;
                    default:
                        lblPageTitle.Text = "Sorry we have encountered an error please try again.";
                        break;
                    }
                if(savedworked)
                    {
                    lblPageTitle.Text = "Saved.";
                    }
                }
            catch(Exception ex)
                {
                lblPageTitle.Text = ex.ToString();
                }
            }
        catch(Exception ex)
            {
            lblPageTitle.Text = ex.ToString();
            }

        }

    protected void btnReset_Click(object sender, EventArgs e)
        {
        Response.Redirect("members_addnew.aspx");
        }

    protected void btnBack_Click(object sender, EventArgs e)
        {
        Response.Redirect("members_list.aspx");
        }
    }
