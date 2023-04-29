<%@ Page Language="C#" MasterPageFile="~/MasterPageWide.master" AutoEventWireup="true"
    CodeFile="join.aspx.cs" Inherits="join" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTopImage" runat="Server">
    <asp:Image ID="img_head_bigpic" runat="server" ImageUrl="images/head_learn.jpg" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphLeftNav" runat="Server">
    <asp:Literal ID="ltMenu" runat="server"></asp:Literal>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="Server">
    <style type="text/javascript">
        li
        {
            display: block;
            padding: 2px 15px;
            width: 25%;
            float: left;
            text-align: left;
        }
    </style>
    <asp:Label Text="" runat="server" ID="lblnewsletter" CssClass="table_content_grey"></asp:Label>
    <asp:Panel ID="pnlRegister" runat="server">
        <span class="table_content_grey">Please enter your details below to apply for membership
        </span>
        <br />
        <fieldset>
            <br />
            <table width="95%">
                <tbody>
                    <tr>
                        <td>
                            <span class="table_content_grey">Prefix</span>
                        </td>
                        <td colspan="5">
                            <asp:DropDownList runat="server" ID="ddlPrefix">
                                <asp:ListItem Value="Mr">Mr</asp:ListItem>
                                <asp:ListItem Value="Mrs">Mrs</asp:ListItem>
                                <asp:ListItem Value="Miss">Miss</asp:ListItem>
                                <asp:ListItem Value="Dr">Dr</asp:ListItem>
                                <asp:ListItem Value="Ms">Ms</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="table_content_grey">First Name*</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtFirstName"></asp:TextBox>
                        </td>
                        <td>
                            <span class="table_content_grey">Last Name*</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtLastName"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="table_content_grey">Position</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPosition"></asp:TextBox>
                        </td>
                        <td>
                            <span class="table_content_grey">Company</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCompany"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="table_content_grey">Address</span>
                        </td>
                        <td colspan="3">
                            <asp:TextBox runat="server" ID="txtAddress1"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="table_content_grey"></span>
                        </td>
                        <td colspan="3">
                            <asp:TextBox runat="server" ID="txtAddress2"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="table_content_grey">City</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCity"></asp:TextBox>
                        </td>
                        <td>
                            <span class="table_content_grey">State</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtState"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="table_content_grey">Zip</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtZip"></asp:TextBox>
                        </td>
                        <td>
                            <span class="table_content_grey">Country</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCountry"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="table_content_grey">Phone</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPhone"></asp:TextBox>
                        </td>
                        <td>
                            <span class="table_content_grey">Fax</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtFax"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="table_content_grey">Email Address*</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="table_content_grey">Password*</span>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <span class="table_content_grey">Confirm Password</span>
                        </td>
                        <td colspan="3">
                            <asp:TextBox runat="server" ID="txtPasswordConfirm" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <span class="table_content_grey">Subscribe to Newsletters</span>
                        </td>
                        <td colspan="4">
                            <asp:CheckBox ID="chkNewsletter" runat="server" Checked="true" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <br />
                            <br />
                            <asp:Button ID="btnRegister" runat="server" Text="Register" Style="background-color: #6288AF;
                                color: White;" OnClick="btnRegister_Click" />
                        </td>
                        <td colspan="3">
                            <span class="table_content_blue">* Required</span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
        <p style="text-align: left;">
            &nbsp;</p>
    </asp:Panel>
    <asp:Panel ID="pnlRegistered" runat="server" Visible="false">
    </asp:Panel>
</asp:Content>
