<%@ Page Language="C#" MasterPageFile="~/admin/admin_editor_leftmenu.master" AutoEventWireup="true"
    CodeFile="cms_pageeditor.aspx.cs" Inherits="admin_cms_pageeditor"  %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content3" ContentPlaceHolderID="cphLeftMenu" runat="Server">
    <h3>
        Page Information</h3>
    <ul id="page_tabs" class="tabs">
        <li>
            <div id="page_tabs_main_section_selected" style="">
                <a href="#" id="page_tabs_main_sectionon" name="main_section" title="General Information"
                    class="tab-item-link active"><span>General Information </span></a>
            </div>
            <div id="page_tabs_main_section_notselected" style="display: none;">
                <a href="javascript:ShowGeneralDiv()" id="page_tabs_main_sectionoff" name="main_section"
                    title="General Information" class="tab-item-link"><span>General Information </span>
                </a>
            </div>
        </li>
        <li>
            <div id="page_tabs_meta_section_selected" style="display: none;">
                <a href="#" id="page_tabs_meta_sectionon" name="meta_section" title="Meta Data" class="tab-item-link active">
                    <span>Meta Data</span> </a>
            </div>
            <div id="page_tabs_meta_section_notselected" style="">
                <a href="javascript:ShowMetaDiv()" id="page_tabs_meta_sectionoff" name="meta_section"
                    title="Meta Data" class="tab-item-link"><span>Meta Data</span> </a>
            </div>
        </li>
        <li>
            <div id="page_tabs_templatetab_selected" style="display: none;">
                <a href="#" id="" name="templatetab" title="Page Template" class="tab-item-link active">
                    <span>Page Template</span> </a>
            </div>
            <div id="page_tabs_templatetab_notselected" style="">
                <a href="javascript:ShowTemplateDiv()" id="page_tabs_templatetaboff" name="templatetab"
                    title="Page Template" class="tab-item-link"><span>Page Template</span> </a>
            </div>
        </li>
        <li>
            <div id="page_tabs_imagegallerytab_selected" style="display: none;">
                <a href="#" id="" name="templatetab" title="Page Template" class="tab-item-link active">
                    <span>Page Images</span> </a>
            </div>
            <div id="page_tabs_imagegallerytab_notselected" style="">
                <a href="javascript:ShowImageDiv()" id="page_tabs_imagegallerytaboff" name="templatetab"
                    title="Page Template" class="tab-item-link"><span>Page Images</span> </a>
            </div>
        </li>
        <li>
            <div id="page_tabs_menutab_selected" style="display: none;">
                <a href="#" id="A1" name="menutab" title="Page Menu" class="tab-item-link active">
                    <span>Page Menu</span> </a>
            </div>
            <div id="page_tabs_menutab_notselected" style="">
                <a href="javascript:ShowMenuDiv()" id="A2" name="menutab"
                    title="Page Menu" class="tab-item-link"><span>Page Menu</span> </a>
            </div>
        </li>
        <%--<li>
        <%--<li><a href="#" id="page_tabs_filegallerytab" name="filegallerytab" title="PDF File"
            class="tab-item-link"><span><span class="changed" title="The information in this tab has been changed.">
            </span><span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
            </span>PDF File</span> </a></li>--%>
    </ul>

    <script type="text/javascript">
    function ShowGeneralDiv()
    { 
            hideAllDiv();
            document.getElementById("page_tabs_main_section_content").style.display ='block';
            document.getElementById("page_tabs_main_section_selected").style.display ='block';
            document.getElementById("page_tabs_main_section_notselected").style.display ='none';
    }
    function ShowMetaDiv()
    { 
            hideAllDiv();
            document.getElementById("page_tabs_meta_section_content").style.display ='block';
            document.getElementById("page_tabs_meta_section_selected").style.display ='block';
            document.getElementById("page_tabs_meta_section_notselected").style.display ='none';
    }
    
    function ShowTemplateDiv()
    { 
            hideAllDiv();
            document.getElementById("page_tabs_templatetab_content").style.display ='block';
            document.getElementById("page_tabs_templatetab_selected").style.display ='block';
            document.getElementById("page_tabs_templatetab_notselected").style.display ='none';
    }
    
    function ShowImageDiv()
    { 
            hideAllDiv();
            document.getElementById("page_tabs_imagegallerytab_content").style.display ='block';
            document.getElementById("page_tabs_imagegallerytab_selected").style.display ='block';
            document.getElementById("page_tabs_imagegallerytab_notselected").style.display ='none';
    }
    
    function ShowMenuDiv()
    { 
            hideAllDiv();
            document.getElementById("page_tabs_menutab_content").style.display ='block';
            document.getElementById("page_tabs_menutab_selected").style.display ='block';
            document.getElementById("page_tabs_menutab_notselected").style.display ='none';
    }
    
    function hideAllDiv()
    { 

            document.getElementById("page_tabs_main_section_content").style.display ='none';
            document.getElementById("page_tabs_meta_section_content").style.display ='none';
            document.getElementById("page_tabs_templatetab_content").style.display ='none';
            document.getElementById("page_tabs_imagegallerytab_content").style.display ='none';
            document.getElementById("page_tabs_menutab_content").style.display ='none';


            document.getElementById("page_tabs_main_section_notselected").style.display ='block';
            document.getElementById("page_tabs_meta_section_notselected").style.display ='block';
            document.getElementById("page_tabs_templatetab_notselected").style.display ='block';
            document.getElementById("page_tabs_imagegallerytab_notselected").style.display ='block';
            document.getElementById("page_tabs_menutab_notselected").style.display ='block';

            document.getElementById("page_tabs_main_section_selected").style.display ='none';
            document.getElementById("page_tabs_meta_section_selected").style.display ='none';
            document.getElementById("page_tabs_templatetab_selected").style.display ='none';
            document.getElementById("page_tabs_imagegallerytab_selected").style.display ='none';
            document.getElementById("page_tabs_menutab_selected").style.display ='none';

    }
    </script>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphContent" runat="Server">
    <div id="messages" runat="server">
    </div>
    <div class="content-header">
        <h3 class="icon-head head-cms-page">
            <asp:Label ID="lblPageTitle" runat="server" Text="Label"></asp:Label></h3>
        <div class="content-buttons-placeholder">
            <p class="content-buttons form-buttons">
                <asp:Button ID="btnPreview" runat="server" Text="Preview" CssClass="scalable save"
                    Style="border-width: 1px; border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502;
                    padding: 0 7px 1px 7px; background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%;
                    color: #fff; font: bold 12px arial, helvetica, sans-serif; cursor: pointer; text-align: center !important;
                    white-space: nowrap;" OnClick="btnPreview_Click" OnClientClick="JavaScript:window.open('../preview.htm')" />
                <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="scalable back" Style="border-width: 1px;
                    border-style: solid; border-color: #ccc #aaa #aaa #ccc; background-color: #fff;
                    background-image: url(images/btn_back_bg.gif); color: #555;" OnClick="btnBack_Click" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="scalable" Style="border-width: 1px;
                    border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502; padding: 0 7px 1px 7px;
                    background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%; color: #fff; font: bold 12px arial, helvetica, sans-serif;
                    cursor: pointer; text-align: center !important; white-space: nowrap;" OnClick="btnReset_Click" />
                <asp:Button ID="btnDeletePage" runat="server" Text="Delete" CssClass="scalable delete"
                    Style="border-width: 1px; border-style: solid; border-color: #d24403 #a92000 #a92000 #d24403;
                    background-image: url(images/cancel_btn_bg.gif); background-color: #fcaf81; color: #fff;" />
                <asp:Button ID="btnSubmit" runat="server" Text="Save Page" CssClass="scalable save"
                    Style="border-width: 1px; border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502;
                    padding: 0 7px 1px 7px; background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%;
                    color: #fff; font: bold 12px arial, helvetica, sans-serif; cursor: pointer; text-align: center !important;
                    white-space: nowrap;" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnSaveandContinue" runat="server" Text="Save And Continue Edit"
                    CssClass="scalable save" Style="border-width: 1px; border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502;
                    padding: 0 7px 1px 7px; background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%;
                    color: #fff; font: bold 12px arial, helvetica, sans-serif; cursor: pointer; text-align: center !important;
                    white-space: nowrap;" OnClick="btnSaveandContinue_Click" />
                <asp:Button ID="btnSaveasNew" runat="server" Text="Save as New Page"
                CssClass="scalable save" Style="border-width: 1px; border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502;
                padding: 0 7px 1px 7px; background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%;
                color: #fff; font: bold 12px arial, helvetica, sans-serif; cursor: pointer; text-align: center !important;
                white-space: nowrap;" OnClick="btnSaveasNew_Click" />
            </p>
        </div>
    </div>
    <div class="entry-edit">
        <div id="page_tabs_main_section_content" style="">
            <div class="entry-edit">
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        General Information</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="page_base_fieldset">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td colspan="3" class="hidden">
                                        <asp:TextBox ID="txtPageID" runat="server" Style="visibility: hidden"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_title">
                                            Page Title <span class="required">*</span></label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtpage_title" runat="server" ToolTip="Page Title" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="note_title">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_title">
                                            Requires Login
                                        </label>
                                    </td>
                                    <td class="value">
                                        <asp:DropDownList ID="ddlloginrequired" runat="server">
                                            <asp:ListItem Text="No" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td id="Td1">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_identifier">
                                            SEF URL Identifier</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtpage_identifier" runat="server" ToolTip="SEF URL Identifier"
                                            CssClass="validate-identifier input-text"></asp:TextBox>
                                        <p class="nm">
                                            <small>(eg: domain.com/identifier)</small></p>
                                    </td>
                                    <td id="note_identifier">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="hidden">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_is_active">
                                            Status <span class="required">*</span></label>
                                    </td>
                                    <td class="value">
                                        <asp:DropDownList ID="ddlpage_is_active" runat="server" ToolTip="Page Status" CssClass="required-entry select">
                                            <asp:ListItem Text="Enabled" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Disabled" Value="0"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td id="note_is_active">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_content">
                                            Content</label>
                                            <br /><br />
                                            <small><#ShortEventTable#></small><br />
                                        <small><#EventTable#></small>
                                                                                </td>
                                    <td class="value">
                                        <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server">
                                        </FCKeditorV2:FCKeditor>
                                    </td>
                                    <td id="note_content">
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="page_tabs_meta_section_content" style="display: none;">
            <div class="entry-edit">
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        Meta Data</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="page_meta_fieldset">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td class="label">
                                        <label for="page_meta_keywords">
                                            Keywords</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtpage_meta_keywords" ToolTip="Meta Keywords" runat="server" Rows="2"
                                            Cols="15" CssClass="textarea" TextMode="MultiLine" Text=""></asp:TextBox>
                                    </td>
                                    <td id="note_meta_keywords">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_meta_description">
                                            Description</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtpage_meta_description" ToolTip="Meta Description" runat="server"
                                            Rows="2" Cols="15" CssClass="textarea" TextMode="MultiLine" Text=""></asp:TextBox>
                                    </td>
                                    <td id="note_meta_description">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="page_tabs_templatetab_content" style="display: none;">
            <div class="entry-edit">
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        Page Template</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="page_meta_fieldset">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td class="label">
                                        <label for="page_page_style_template">
                                            Page Template</label>
                                    </td>
                                    <td class="value">
                                        <asp:DropDownList ID="ddlpage_style_template" runat="server">
                                            <asp:ListItem Value="MCR" Text="Menu | Content | Register"></asp:ListItem>
                                            <asp:ListItem Value="MC" Text="Menu | Content"></asp:ListItem>
                                        </asp:DropDownList>
                                        <br>
                                    </td>
                                    <td id="note_page_style_template">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="page_tabs_imagegallerytab_content" style="display: none;">
            <div class="entry-edit">
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        Image File</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="page_meta_fieldset">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td class="label">
                                        <asp:TextBox ID="txtCurrentImage" runat="server" Style="visibility: hidden;"></asp:TextBox>
                                        Image File Currently displayed at top of page.
                                    </td>
                                </tr>
                                <%--<tr>
                                    <td>
                                        <asp:Image ID="imgHeadSelected" runat="server" />
                                    </td>
                                </tr>--%>
                                <tr>
                                    <td class="value">
                                        <asp:Repeater ID="rptImages" runat="server">
                                            <HeaderTemplate>
                                                <table width="95%" cellpadding="0" cellspacing="0" border="0" class="text_general_content"
                                                    align="center">
                                                    <tr>
                                                        <td align="left">
                                                            Image
                                                        </td>
                                                        <td align="center" width="20%">
                                                            Selected
                                                        </td>
                                                    </tr>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtthisImage" runat="server" Style="visibility: hidden;" Text='<%#DataBinder.Eval(Container.DataItem, "Name")%>'></asp:TextBox>
                                                        <asp:Image Width="600" ID="imgPic" runat="server" ImageUrl='<%#getimageurl((string)DataBinder.Eval(Container.DataItem, "Name"))%>'
                                                            AlternateText='<%#DataBinder.Eval(Container.DataItem, "Name")%>' ToolTip='<%#DataBinder.Eval(Container.DataItem, "Name")%>' />
                                                    </td>
                                                    <td align="center" width="20%" valign="middle">
                                                        <br />
                                                        <br />
                                                        <asp:CheckBox ID="chkBox" runat="server" Checked='<%#getimagechecked((string)DataBinder.Eval(Container.DataItem, "Name"))%>' />
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </table>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table id="gallery-imagegallery" class="gallery" width="500" border="0" cellpadding="0"
                                            cellspacing="3">
                                            <thead style="visibility: hidden;" id="gallery_thead-imagegallery" class="gallery">
                                                <tr class="gallery">
                                                    <td class="gallery" valign="middle" width="220" align="center">
                                                        File
                                                    </td>
                                                    <td class="gallery" valign="middle" width="250" align="center">
                                                        Image Alt
                                                    </td>
                                                    <td class="gallery" valign="middle" width="150" align="center">
                                                        Position
                                                    </td>
                                                    <td class="gallery" valign="middle" align="center">
                                                        Delete
                                                    </td>
                                                </tr>
                                            </thead>
                                            <tfoot class="gallery">
                                                <tr class="gallery">
                                                    <td class="gallery" colspan="5" valign="middle" align="left">
                                                        <button id="id_cf0d4505b6078d834a0c333a6bc31fd3" type="button" class="scalable add"
                                                            onclick="addNewImgimagegallery()" style="">
                                                            <span>Add New Image</span></button>
                                                    </td>
                                                </tr>
                                            </tfoot>
                                            <tbody class="gallery">

                                                <script type="text/javascript">document.getElementById("gallery_thead-imagegallery").style.visibility="hidden";</script>

                                            </tbody>
                                        </table>

                                        
                                    </td>
                                    <td id="note_imagegallery">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="page_tabs_menutab_content" style="display: none;">
            <div class="entry-edit">
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        Left Menu Setup</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="Div1">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td class="label">
                                        <label for="page_title">
                                            Menu Title </label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtMenuTitle" runat="server" ToolTip="The text displayed on the menu when viewing this page" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="Td2">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_title">
                                            Menu Text
                                        </label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtMenuText" runat="server" ToolTip="The link text displayed on the menu" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="Td3">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_identifier">
                                            Menu to display on this page</label>
                                    </td>
                                    <td class="value">
                                        <asp:DropDownList ID="ddlpage_menu_master" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                    <td id="Td4">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <%--<tr>
                                    <td colspan="3" class="hidden">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_is_active">
                                            Status <span class="required">*</span></label>
                                    </td>
                                    <td class="value">
                                        <asp:DropDownList ID="DropDownList2" runat="server" ToolTip="Page Status" CssClass="required-entry select">
                                            <asp:ListItem Text="Enabled" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Disabled" Value="0"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td id="Td5">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>--%>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <%--<div id="page_tabs_filegallerytab_content" style="display: none;">
            <div class="entry-edit">
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        PDF File</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="page_meta_fieldset">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td class="label">
                                        <label for="page_filegallery">
                                            PDF File</label>
                                    </td>
                                    <td class="value">
                                        <table id="gallery-filegallery" class="gallery" width="500" border="0" cellpadding="0"
                                            cellspacing="3">
                                            <thead style="visibility: hidden;" id="gallery_thead-filegallery" class="gallery">
                                                <tr class="gallery">
                                                    <td class="gallery" valign="middle" width="220" align="center">
                                                        File
                                                    </td>
                                                    <td class="gallery" valign="middle" width="250" align="center">
                                                        File Name
                                                    </td>
                                                    <td class="gallery" valign="middle" width="150" align="center">
                                                        Position
                                                    </td>
                                                    <td class="gallery" valign="middle" align="center">
                                                        Delete
                                                    </td>
                                                </tr>
                                            </thead>
                                            <tfoot class="gallery">
                                                <tr class="gallery">
                                                    <td class="gallery" colspan="5" valign="middle" align="left">
                                                        <button id="id_1e762e6d96fce15fcc965410e864bfab" type="button" class="scalable add"
                                                            onclick="addNewImgfilegallery()" style="">
                                                            <span>Add New File</span></button>
                                                    </td>
                                                </tr>
                                            </tfoot>
                                            <tbody class="gallery">

                                                <script type="text/javascript">document.getElementById("gallery_thead-filegallery").style.visibility="hidden";</script>

                                            </tbody>
                                        </table>

                                        <script language="javascript">
                                            id = 0;

                                            function addNewImgfilegallery(){

                                                document.getElementById("gallery_thead-filegallery").style.visibility="visible";

                                                id--;
                                                new_file_input = '<input type="file" name="filegallery_%j%[%id%]" size="20" />';

		                                        // Sort order input
		                                        var new_row_input = document.createElement( 'input' );
		                                        new_row_input.type = 'text';
		                                        new_row_input.name = 'page[filegallery][desc]['+id+']';
		                                        new_row_input.size = '30';
		                                        new_row_input.value = '';
                                    		    
		                                        // Sort order input
		                                        var new_row_input_pos = document.createElement( 'input' );
		                                        new_row_input_pos.type = 'text';
		                                        new_row_input_pos.name = 'page[filegallery][pos]['+id+']';
		                                        new_row_input_pos.size = '5';
		                                        new_row_input_pos.value = '';
                                    		    
		                                        // Delete button
		                                        var new_row_button = document.createElement( 'input' );
		                                        new_row_button.type = 'checkbox';
		                                        new_row_button.value = 'Delete';

                                                table = document.getElementById( "gallery-filegallery" );

                                                // no of rows in the table:
                                                noOfRows = table.rows.length;

                                                // no of columns in the pre-last row:
                                                noOfCols = table.rows[noOfRows-2].cells.length;

                                                // insert row at pre-last:
                                                var x=table.insertRow(noOfRows-1);

                                                // insert cells in row.
                                                for (var j = 0; j < noOfCols; j++) {

                                                    newCell = x.insertCell(j);
                                                    newCell.align = "center";
                                                    newCell.valign = "middle";

                                                    if (j==1) {
		                                                newCell.appendChild( new_row_input );
                                                    }
                                                    else if (j==2) {
		                                                newCell.appendChild( new_row_input_pos );
                                                    }
                                                    else if (j==3) {
		                                                newCell.appendChild( new_row_button );
                                                    }
                                                    else {
                                                        newCell.innerHTML = new_file_input.replace(/%j%/g, j).replace(/%id%/g, id);
                                                    }

                                                }

		                                        // Delete function
		                                        new_row_button.onclick= function(){

                                                    this.parentNode.parentNode.parentNode.removeChild( this.parentNode.parentNode );

			                                        // Appease Safari
			                                        //    without it Safari wants to reload the browser window
			                                        //    which nixes your already queued uploads
			                                        return false;
		                                        };

	                                        }
                                        </script>

                                    </td>
                                    <td id="note_filegallery">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>--%>
    </div>
    <asp:Label ID="LblPostedData" runat="server"></asp:Label>
</asp:Content>
