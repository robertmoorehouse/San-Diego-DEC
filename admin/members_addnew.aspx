<%@ Page Language="C#" MasterPageFile="~/admin/admin_editor_leftmenu.master" AutoEventWireup="true"
    CodeFile="members_addnew.aspx.cs" Inherits="admin_members_addnew" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphLeftMenu" runat="Server">
    <h3>
        Customer Information</h3>
    <ul id="page_tabs" class="tabs">
        <li>
            <div id="page_tabs_Account_Information_selected" style="">
                <a href="#" id="page_tabs_Account_Informationon" name="Account_Information" title="Account_Information"
                    class="tab-item-link active"><span>Account Information</span></a>
            </div>
            <div id="page_tabs_Account_Information_notselected" style="display: none;">
                <a href="javascript:ShowAccountDiv()" id="page_tabs_Account_Informationoff" name="Account_Informationoff"
                    title="Account_Information" class="tab-item-link"><span>Account Information</span>
                </a>
            </div>
        </li>
        <li>
            <div id="page_tabs_Addresses_selected" style="display: none;">
                <a href="#" id="page_tabs_Addresseson" name="Addresses" title="Addresses" class="tab-item-link active">
                    <span>Addresses</span> </a>
            </div>
            <div id="page_tabs_Addresses_notselected" style="">
                <a href="javascript:ShowAddressDiv()" id="page_tabs_Addressesoff" name="Addresses"
                    title="Addresses" class="tab-item-link"><span>Addresses</span> </a>
            </div>
        </li>
    </ul>

    <script type="text/javascript">
    function ShowAccountDiv()
    { 
            hideAllDiv();
            document.getElementById("page_tabs_Account_Information_content").style.display ='block';
            document.getElementById("page_tabs_Account_Information_selected").style.display ='block';
            document.getElementById("page_tabs_Account_Information_notselected").style.display ='none';
    }
    function ShowAddressDiv()
    { 
            hideAllDiv();
            document.getElementById("page_tabs_Addresses_content").style.display ='block';
            document.getElementById("page_tabs_Addresses_selected").style.display ='block';
            document.getElementById("page_tabs_Addresses_notselected").style.display ='none';
    }
        
    function hideAllDiv()
    { 

            document.getElementById("page_tabs_Account_Information_content").style.display ='none';
            document.getElementById("page_tabs_Addresses_content").style.display ='none';
            
            document.getElementById("page_tabs_Account_Information_notselected").style.display ='block';
            document.getElementById("page_tabs_Addresses_notselected").style.display ='block';
            
            document.getElementById("page_tabs_Account_Information_selected").style.display ='none';
            document.getElementById("page_tabs_Addresses_selected").style.display ='none';
            
    }
    </script>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphContent" runat="Server">
    <div id="messages" runat="server">
    </div>
    <div class="content-header">
        
        <div class="content-buttons-placeholder">
            <div style="visibility: visible;" class="content-header">
                <h3 class="icon-head head-cms-page">
            <asp:Label ID="lblPageTitle" runat="server" Text=""></asp:Label></h3>
                <div style="width: 0px; height: 15px;" class="content-buttons-placeholder">
                    <p style="" class="content-buttons form-buttons">
                        <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="scalable back" Style="border-width: 1px;
                            border-style: solid; border-color: #ccc #aaa #aaa #ccc; background-color: #fff;
                            background-image: url(images/btn_back_bg.gif); color: #555;" OnClick="btnBack_Click" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="scalable" Style="border-width: 1px;
                            border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502; padding: 0 7px 1px 7px;
                            background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%; color: #fff; font: bold 12px arial, helvetica, sans-serif;
                            cursor: pointer; text-align: center !important; white-space: nowrap;" OnClick="btnReset_Click" />
                        <asp:Button ID="btnSubmit" runat="server" Text="Save Customer" CssClass="scalable save"
                            Style="border-width: 1px; border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502;
                            padding: 0 7px 1px 7px; background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%;
                            color: #fff; font: bold 12px arial, helvetica, sans-serif; cursor: pointer; text-align: center !important;
                            white-space: nowrap;" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnSaveandContinue" runat="server" Text="Save And Continue Edit"
                            CssClass="scalable save" Style="border-width: 1px; border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502;
                            padding: 0 7px 1px 7px; background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%;
                            color: #fff; font: bold 12px arial, helvetica, sans-serif; cursor: pointer; text-align: center !important;
                            white-space: nowrap;" OnClick="btnSaveandContinue_Click" />
                    </p>
                </div>
            </div>
        </div>
        <div class="entry-edit">
            <div id="page_tabs_Account_Information_content" style="">
                <div id="customer_info_tabs_account_content" style="">
                    <div class="entry-edit">
                        <div class="entry-edit-head">
                            <h4 class="icon-head head-edit-form fieldset-legend">
                                Account Information</h4>
                            <div class="form-buttons">
                            </div>
                        </div>
                        <div class="fieldset" id="_accountbase_fieldset">
                            <div class="hor-scroll">
                                <table class="form-list" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountfirstname">
                                                    Active</label>
                                            </td>
                                            <td class="value">
                                                <asp:DropDownList runat="server" ID="ddlactive">
                                                   <asp:ListItem Value="1">Yes</asp:ListItem>
                                                   <asp:ListItem Value="0">No</asp:ListItem>
                                                 </asp:DropDownList>
                                            </td>
                                            <td id="Td3">
                                                <small>&nbsp;</small>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountprefix">
                                                    Prefix</label>
                                            </td>
                                            <td class="value">
                                                <asp:DropDownList runat="server" ID="ddlPrefix">
                                                    <asp:ListItem Value="Mr">Mr</asp:ListItem>
                                                    <asp:ListItem Value="Mrs">Mrs</asp:ListItem>
                                                    <asp:ListItem Value="Miss">Miss</asp:ListItem>
                                                    <asp:ListItem Value="Dr">Dr</asp:ListItem>
                                                    <asp:ListItem Value="Ms">Ms</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td id="note_prefix">
                                                <small>&nbsp;</small>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountfirstname">
                                                    First Name <span class="required">*</span></label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtFirstName"></asp:TextBox>
                                            </td>
                                            <td id="note_firstname">
                                                <small>&nbsp;</small>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountlastname">
                                                    Last Name <span class="required">*</span></label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtLastName"></asp:TextBox>
                                            </td>
                                            <td id="note_lastname">
                                                <small>&nbsp;</small>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountPhone">
                                                    Phone <span class="required"></span>
                                                </label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtPhone"></asp:TextBox>
                                            </td>
                                            <td id="Td1">
                                                <small>&nbsp;</small>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountlastname">
                                                    Fax <span class="required"></span>
                                                </label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtFax"></asp:TextBox>
                                            </td>
                                            <td id="Td2">
                                                <small>&nbsp;</small>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountemail">
                                                    Email <span class="required">*</span></label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox>
                                            </td>
                                            <td id="note_email">
                                                <small>&nbsp;</small>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountsendemail">
                                                    Send welcome email</label>
                                            </td>
                                            <td class="value">
                                                <asp:CheckBox ID="chkEmail" runat="server" />
                                            </td>
                                            <td id="note_sendemail">
                                                <small>&nbsp;</small>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="entry-edit-head">
                            <h4 class="icon-head head-edit-form fieldset-legend">
                                Company Details</h4>
                            <div class="form-buttons">
                            </div>
                        </div>
                        <div class="fieldset" id="Div1">
                            <div class="hor-scroll">
                                <table class="form-list" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountCompany">
                                                    Company <span class="required"></span>
                                                </label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtCompany"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountCompany">
                                                    Position <span class="required"></span>
                                                </label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtPosition"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label>
                                                    Subscribe to Newsletters</label>
                                            </td>
                                            <td class="value">
                                                <asp:CheckBox ID="chkNewsletter" runat="server" Checked="true" />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="entry-edit-head">
                            <h4 class="icon-head head-edit-form fieldset-legend">
                                Password Management</h4>
                            <div class="form-buttons">
                            </div>
                        </div>
                        <div class="fieldset" id="_accountpassword_fieldset">
                            <div class="hor-scroll">
                                <table class="form-list" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountpassword">
                                                    Password <span class="required">*</span></label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtPassword"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label>
                                                    &nbsp;</label>
                                            </td>
                                            <td class="value">
                                                or
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label>
                                                    &nbsp;</label>
                                            </td>
                                            <td class="value">
                                                <asp:CheckBox ID="chkPasswordCreate" runat="server" Text="Send auto-generated password" />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="page_tabs_Addresses_content" style="display: none;">
                <div id="customer_info_tabs_addresses_content">
                    <div class="entry-edit">
                        <div class="entry-edit-head">
                            <h4 class="icon-head head-edit-form fieldset-legend">
                                Account Information</h4>
                            <div class="form-buttons">
                            </div>
                        </div>
                        <div class="fieldset" id="Div2">
                            <div class="hor-scroll">
                                <table class="form-list" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountCompany">
                                                    Address
                                                </label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtAddress1"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountCompany">
                                                </label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtAddress2"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountCompany">
                                                    City
                                                </label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtCity"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountCompany">
                                                    State
                                                </label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtState"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountCompany">
                                                    Zip
                                                </label>
                                            </td>
                                            <td class="value">
                                                <asp:TextBox runat="server" ID="txtZip"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">
                                                <label for="_accountCompany">
                                                    Country
                                                </label>
                                            </td>
                                            <td class="value">
                                                <asp:DropDownList ID="ddlCountry" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
</asp:Content>
