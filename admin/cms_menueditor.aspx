<%@ Page Language="C#" MasterPageFile="~/admin/admin_editor_leftmenu.master" AutoEventWireup="true"
    CodeFile="cms_menueditor.aspx.cs" Inherits="admin_cms_menueditor" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphLeftMenu" runat="Server">
    <h3>
        Menu Information</h3>
    <ul id="page_tabs" class="tabs">
        <li>
            <div id="page_tabs_main_section_selected" style="">
                <a href="#" id="page_tabs_main_sectionon" name="main_section" title="General Information"
                    class="tab-item-link active"><span>Menu Details </span></a>
            </div>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphContent" runat="Server">
    <div id="messages" runat="server">
    </div>
    <div class="content-header">
        <h3 class="icon-head head-cms-page">
            <asp:Label ID="lblPageTitle" runat="server" Text="Menu Editor"></asp:Label></h3>
        <div class="content-buttons-placeholder">
            <p class="content-buttons form-buttons">
                <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="scalable back" Style="border-width: 1px;
                    border-style: solid; border-color: #ccc #aaa #aaa #ccc; background-color: #fff;
                    background-image: url(images/btn_back_bg.gif); color: #555;" OnClick="btnBack_Click" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="scalable" Style="border-width: 1px;
                    border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502; padding: 0 7px 1px 7px;
                    background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%; color: #fff; font: bold 12px arial, helvetica, sans-serif;
                    cursor: pointer; text-align: center !important; white-space: nowrap;" OnClick="btnReset_Click" />
                <asp:Button ID="btnDeletePage" runat="server" Text="Delete" CssClass="scalable delete"
                    Style="border-width: 1px; border-style: solid; border-color: #d24403 #a92000 #a92000 #d24403;
                    background-image: url(images/cancel_btn_bg.gif); background-color: #fcaf81; color: #fff;"  OnClick="btnDelete_Click" />
                <asp:Button ID="btnSubmit" runat="server" Text="Save Page" CssClass="scalable save"
                    Style="border-width: 1px; border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502;
                    padding: 0 7px 1px 7px; background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%;
                    color: #fff; font: bold 12px arial, helvetica, sans-serif; cursor: pointer; text-align: center !important;
                    white-space: nowrap;" OnClick="btnSubmit_Click" />
            </p>
        </div>
    </div>
    <div class="entry-edit">
        <div id="page_tabs_main_section_content" style="">
            <div class="entry-edit">
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        Menu Details</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="page_base_fieldset">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td colspan="3" class="hidden">
                                        <asp:TextBox ID="txtmenuID" runat="server" Style="visibility: hidden"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="MenuuTitle">
                                            Title <span class="required">*</span></label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtmenu_title" runat="server" ToolTip="Menu Title" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="note_title">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_title">
                                            Parent Menu
                                        </label>
                                    </td>
                                    <td class="value">
                                        <asp:DropDownList ID="ddlMenuitems" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td id="Td1">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_identifier">
                                            Page to link to </label>
                                    </td>
                                    <td class="value">
                                        <asp:DropDownList ID="ddlPages" runat="server">
                                        </asp:DropDownList>
                                        
                                        
                                    </td>
                                    <td id="note_identifier">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="label">
                                    Or
                                    </td>
                                </tr>
                                 <tr>
                                    <td class="label">
                                        <label for="page_identifier">
                                            Enter Link </label>
                                    </td>
                                    <td class="value">
                                       <asp:TextBox ID="txtlink" runat="server"></asp:TextBox>
                                    </td>
                                    <td id="Td2">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="label">
                                    <span class="required">*NOTES</span><br /><br />
                                    1: If you select a CMS page the Title will be changed to the Menu_text on that page.<br />
                                    
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
