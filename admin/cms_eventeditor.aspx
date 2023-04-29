<%@ Page Language="C#" MasterPageFile="~/admin/admin_editor_leftmenu.master" AutoEventWireup="true" CodeFile="cms_eventeditor.aspx.cs" Inherits="admin_cms_eventeditor"%>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<%@ Register TagPrefix="uc1" TagName="DateTimeUC" Src="../UserControls/DateTimeUC.ascx" %>
<asp:Content ID="Content3" ContentPlaceHolderID="cphLeftMenu" runat="Server">
    <h3>
        Event Information</h3>
    <ul id="event_tabs" class="tabs">
        <li>
            <div id="event_tabs_main_section_selected" style="">
                <a href="#" id="event_tabs_main_sectionon" name="main_section" title="Event Information"
                    class="tab-item-link active"><span>Event Information </span></a>
            </div>
            <div id="event_tabs_main_section_notselected" style="display: none;">
                <a href="javascript:ShowEventInfoDiv()" id="event_tabs_main_sectionoff" name="main_section"
                    title="Event Information" class="tab-item-link"><span>Event Information </span>
                </a>
            </div>
        </li>
        <li>
            <div id="event_tabs_location_information_selected" style="display: none;">
                <a href="#" id="event_tabs_location_informationon" name="location_information" title="Location Information" class="tab-item-link active">
                    <span>Location Information</span> </a>
            </div>
            <div id="event_tabs_location_information_notselected" style="">
                <a href="javascript:ShowLocationInfoDiv()" id="event_tabs_location_informationoff" name="location_information"
                    title="Location Information" class="tab-item-link"><span>Location Information</span> </a>
            </div>
        </li>
        <li>
            <div id="event_tabs_contact_details_selected" style="display: none;">
                <a href="#" id="" name="contact_details" title="Contact Details" class="tab-item-link active">
                    <span>Contact Details</span> </a>
            </div>
            <div id="event_tabs_contact_details_notselected" style="">
                <a href="javascript:ShowContactInfoDiv()" id="event_tabs_contact_detailsoff" name="contact_details"
                    title="Contact Details" class="tab-item-link"><span>Contact Details</span> </a>
            </div>
        </li>
        <li>
            <div id="event_tabs_imagegallerytab_selected" style="display: none;">
                <a href="#" id="" name="imagegallery" title="Event Images" class="tab-item-link active">
                    <span>Event Images</span> </a>
            </div>
            <div id="event_tabs_imagegallerytab_notselected" style="">
                <a href="javascript:ShowImageDiv()" id="event_tabs_imagegallerytaboff" name="imagegallery"
                    title="Event Images" class="tab-item-link"><span>Event Images</span> </a>
            </div>
        </li>
        <li>
            <div id="event_tabs_booking_info_selected" style="display: none;">
                <a href="#" id="A1" name="booking_info" title="Booking Information" class="tab-item-link active">
                    <span>Booking Information</span> </a>
            </div>
            <div id="event_tabs_booking_info_notselected" style="">
                <a href="javascript:ShowBookingInfoDiv()" id="A2" name="booking_info"
                    title="Booking Information" class="tab-item-link"><span>Booking Information</span> </a>
            </div>
        </li>

    </ul>

    <script type="text/javascript">
    function ShowEventInfoDiv()
    { 
            hideAllDiv();
            document.getElementById("event_tabs_main_section_content").style.display ='block';
            document.getElementById("event_tabs_main_section_selected").style.display ='block';
            document.getElementById("event_tabs_main_section_notselected").style.display ='none';
    }
    function ShowLocationInfoDiv()
    { 
            hideAllDiv();
            document.getElementById("event_tabs_location_information_content").style.display ='block';
            document.getElementById("event_tabs_location_information_selected").style.display ='block';
            document.getElementById("event_tabs_location_information_notselected").style.display ='none';
    }
    
    function ShowContactInfoDiv()
    { 
            hideAllDiv();
            document.getElementById("event_tabs_contact_details_content").style.display ='block';
            document.getElementById("event_tabs_contact_details_selected").style.display ='block';
            document.getElementById("event_tabs_contact_details_notselected").style.display ='none';
    }
    
    function ShowImageDiv()
    { 
            hideAllDiv();
            document.getElementById("event_tabs_imagegallerytab_content").style.display ='block';
            document.getElementById("event_tabs_imagegallerytab_selected").style.display ='block';
            document.getElementById("event_tabs_imagegallerytab_notselected").style.display ='none';
    }
    
    function ShowBookingInfoDiv()
    { 
            hideAllDiv();
            document.getElementById("event_tabs_booking_info_content").style.display ='block';
            document.getElementById("event_tabs_booking_info_selected").style.display ='block';
            document.getElementById("event_tabs_booking_info_notselected").style.display ='none';
    }
    
    function hideAllDiv()
    { 

            document.getElementById("event_tabs_main_section_content").style.display ='none';
            document.getElementById("event_tabs_location_information_content").style.display ='none';
            document.getElementById("event_tabs_contact_details_content").style.display ='none';
            document.getElementById("event_tabs_imagegallerytab_content").style.display ='none';
            document.getElementById("event_tabs_booking_info_content").style.display ='none';


            document.getElementById("event_tabs_main_section_notselected").style.display ='block';
            document.getElementById("event_tabs_location_information_notselected").style.display ='block';
            document.getElementById("event_tabs_contact_details_notselected").style.display ='block';
            document.getElementById("event_tabs_imagegallerytab_notselected").style.display ='block';
            document.getElementById("event_tabs_booking_info_notselected").style.display ='block';

            document.getElementById("event_tabs_main_section_selected").style.display ='none';
            document.getElementById("event_tabs_location_information_selected").style.display ='none';
            document.getElementById("event_tabs_contact_details_selected").style.display ='none';
            document.getElementById("event_tabs_imagegallerytab_selected").style.display ='none';
            document.getElementById("event_tabs_booking_info_selected").style.display ='none';

    }
    </script>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphContent" runat="Server">
    <div id="messages" runat="server">
    </div>
    <div class="content-header">
        <h3 class="icon-head head-cms-event">
            <asp:Label ID="lblEventTitle" runat="server" Text="Label"></asp:Label></h3>
        <div class="content-buttons-placeholder">
            <p class="content-buttons form-buttons">
                <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="scalable back" Style="border-width: 1px;
                    border-style: solid; border-color: #ccc #aaa #aaa #ccc; background-color: #fff;
                    background-image: url(images/btn_back_bg.gif); color: #555;" OnClick="btnBack_Click" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="scalable" Style="border-width: 1px;
                    border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502; padding: 0 7px 1px 7px;
                    background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%; color: #fff; font: bold 12px arial, helvetica, sans-serif;
                    cursor: pointer; text-align: center !important; white-space: nowrap;" OnClick="btnReset_Click" />
                <asp:Button ID="btnDeleteEvent" runat="server" Text="Delete" CssClass="scalable delete"
                    Style="border-width: 1px; border-style: solid; border-color: #d24403 #a92000 #a92000 #d24403;
                    background-image: url(images/cancel_btn_bg.gif); background-color: #fcaf81; color: #fff;" />
                <asp:Button ID="btnSubmit" runat="server" Text="Save Event" CssClass="scalable save"
                    Style="border-width: 1px; border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502;
                    padding: 0 7px 1px 7px; background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%;
                    color: #fff; font: bold 12px arial, helvetica, sans-serif; cursor: pointer; text-align: center !important;
                    white-space: nowrap;" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnSaveandContinue" runat="server" Text="Save And Continue Edit"
                    CssClass="scalable save" Style="border-width: 1px; border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502;
                    padding: 0 7px 1px 7px; background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%;
                    color: #fff; font: bold 12px arial, helvetica, sans-serif; cursor: pointer; text-align: center !important;
                    white-space: nowrap;" OnClick="btnSaveandContinue_Click" />
                <asp:Button ID="btnSaveasNew" runat="server" Text="Save as New Event"
                CssClass="scalable save" Style="border-width: 1px; border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502;
                padding: 0 7px 1px 7px; background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%;
                color: #fff; font: bold 12px arial, helvetica, sans-serif; cursor: pointer; text-align: center !important;
                white-space: nowrap;" OnClick="btnSaveasNew_Click" />
            </p>
        </div>
    </div>
    <div class="entry-edit">
        <div id="event_tabs_main_section_content" style="">
            <div class="entry-edit">
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        Event Information</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="event_base_fieldset">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td colspan="3" class="hidden">
                                        <asp:TextBox ID="txtEventID" runat="server" Style="visibility: hidden"></asp:TextBox>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_title">
                                            Event Title <span class="required">*</span></label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtevent_title" runat="server" ToolTip="Event Title" Width="400"></asp:TextBox>
                                    </td>
                                    <td id="note_title">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>                               
                                <tr>
                                    <td class="label">
                                        <label for="page_is_active">
                                            Short Description <span class="required">*</span></label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox runat="server" ID="txtshort_description" TextMode="MultiLine" Columns="50" Rows="3" MaxLength="4000"></asp:TextBox>
                                    </td>
                                    <td id="Td1">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_content">
                                            Content</label>
                                    </td>
                                    <td class="value">
                                        <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server">
                                        </FCKeditorV2:FCKeditor>
                                    </td>
                                    <td id="note_content">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_is_active">
                                            Date Text<span class="required">*</span></label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txteventdate" runat="server"  Width="400"></asp:TextBox>
                                    </td>
                                    <td id="Td5">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="page_is_active">
                                            Time Text<span class="required">*</span></label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtEventTime" runat="server"  Width="400"></asp:TextBox>
                                    </td>
                                    <td id="Td6">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="event_tabs_location_information_content" style="display: none;">
            <div class="entry-edit">
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        Location Information</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="event_meta_fieldset">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_keywords">
                                            Location Name</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtLocation_Name" runat="server" ToolTip="Location Name" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="note_meta_keywords">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_description">
                                            Location Telephone</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtLocation_telephone" runat="server" ToolTip="Location Telephone" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="note_meta_description">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                      <tr>
                                    <td class="label">
                                        <label for="event_meta_description">
                                            Location Address</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtlocation_address" runat="server" ToolTip="Location Address" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="Td7">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_description">
                                            </label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtlocation_address1" runat="server" ToolTip="Location Address Line 2" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="Td8">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_description">
                                            Location City</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtlocation_city" runat="server" ToolTip="Location City" CssClass="required-entry input-text" Text="San Diego"></asp:TextBox>
                                    </td>
                                    <td id="Td9">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_description">
                                            Location State</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtlocation_state" runat="server" ToolTip="Location State" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="Td10">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_description">
                                            Location Country</label>
                                    </td>
                                    <td class="value">
                                        <asp:DropDownList ID="ddlCountry" runat="server">
                                                </asp:DropDownList>
                                    </td>
                                    <td id="Td11">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_description">
                                            Location Zip</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtlocation_zip" runat="server" ToolTip="Location ZIP / Postcode" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="Td12">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>   	
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="event_tabs_contact_details_content" style="display: none;">
            <div class="entry-edit">
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        Contact Details</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="event_meta_fieldset">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td class="label" colspan="3">
                                        <label for="event_meta_keywords">
                                            First Contact </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_keywords">
                                            Contact Name</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtcontact_name" runat="server" ToolTip="Contact Name" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="Td13">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_keywords">
                                            Contact Phone</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtcontact_phone" runat="server" ToolTip="Contact Phone" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="Td14">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_keywords">
                                            Contact Email</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtcontact_email" runat="server" ToolTip="Contact Email" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="Td15">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr><td colspan="3">&nbsp;</td></tr>
                                <tr>
                                    <td class="label" colspan="3">
                                        <label for="event_meta_keywords">
                                            Second Contact </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_keywords">
                                            Contact Name</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtcontact1_name" runat="server" ToolTip="Contact Name" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="Td16">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_keywords">
                                            Contact Phone</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtcontact1_phone" runat="server" ToolTip="Contact Phone" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="Td17">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_meta_keywords">
                                            Contact Email</label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtcontact1_email" runat="server" ToolTip="Contact Email" CssClass="required-entry input-text"></asp:TextBox>
                                    </td>
                                    <td id="Td18">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="event_tabs_imagegallerytab_content" style="display: none;">
            <div class="entry-edit">
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        Header Image File</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="event_meta_fieldset">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td class="label">
                                        <asp:TextBox ID="txtCurrentHeaderImage" runat="server" Style="visibility: hidden;"></asp:TextBox>
                                        Image File Currently displayed at top of event.
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td class="value">
                                        <asp:Repeater ID="rptHeaderImages" runat="server">
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
                                                        <asp:Image Width="600" ID="imgPic" runat="server" ImageUrl='<%#getheaderimageurl((string)DataBinder.Eval(Container.DataItem, "Name"))%>'
                                                            AlternateText='<%#DataBinder.Eval(Container.DataItem, "Name")%>' ToolTip='<%#DataBinder.Eval(Container.DataItem, "Name")%>' />
                                                    </td>
                                                    <td align="center" width="20%" valign="middle">
                                                        <br />
                                                        <br />
                                                        <asp:CheckBox ID="chkBox" runat="server" Checked='<%#getheaderimagechecked((string)DataBinder.Eval(Container.DataItem, "Name"))%>' />
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
                                                
                                            </tfoot>
                                            <tbody class="gallery">

<%--                                                <script type="text/javascript">document.getElementById("gallery_thead-imagegallery").style.visibility="hidden";</script>
--%>
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
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        Calendar of Events Side Image File</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="Div2">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td class="value">
                                        <asp:TextBox ID="txtCurrentSideImage" runat="server" Style="visibility: hidden;"></asp:TextBox>
                                        Image File Currently displayed at side of event on the Calendar of Events Page.
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td class="value">
                                        <asp:Repeater ID="rptSideImages" runat="server">
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
                                                        <asp:Image ID="imgPic" runat="server" ImageUrl='<%#getsideimageurl((string)DataBinder.Eval(Container.DataItem, "Name"))%>'
                                                            AlternateText='<%#DataBinder.Eval(Container.DataItem, "Name")%>' ToolTip='<%#DataBinder.Eval(Container.DataItem, "Name")%>' />
                                                    </td>
                                                    <td align="center" width="20%" valign="middle">
                                                        <br />
                                                        <br />
                                                        <asp:CheckBox ID="chkBox" runat="server" Checked='<%#getsideimagechecked((string)DataBinder.Eval(Container.DataItem, "Name"))%>' />
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
                                        <table id="Table1" class="gallery" width="500" border="0" cellpadding="0"
                                            cellspacing="3">
                                            <thead style="visibility: hidden;" id="Thead1" class="gallery">
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
                                                
                                            </tfoot>
                                            <tbody class="gallery">

                                                <script type="text/javascript">document.getElementById("gallery_thead-imagegallery").style.visibility="hidden";</script>

                                            </tbody>
                                        </table>

                                        
                                    </td>
                                    <td id="Td22">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="event_tabs_booking_info_content" style="display: none;">
            <div class="entry-edit">
                <div class="entry-edit-head">
                    <h4 class="icon-head head-edit-form fieldset-legend">
                        Booking Information</h4>
                    <div class="form-buttons">
                    </div>
                </div>
                <div class="fieldset fieldset-wide" id="Div1">
                    <div class="hor-scroll">
                        <table class="form-list" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td class="label">
                                        <label for="event_title">
                                            Event Start Date </label>
                                    </td>
                                    <td class="value">
                                        <uc1:DateTimeUC ID="startdate" runat="server" />
                                    </td>
                                    <td id="Td2">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_title">
                                            Last Booking Date
                                        </label>
                                    </td>
                                    <td class="value">
                                        <uc1:DateTimeUC ID="lastbookingdate" runat="server" />
                                    </td>
                                    <td id="Td3">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_title">
                                            Places Available
                                        </label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtPlaces" runat="server" ToolTip="Number of Places Available" Width="100"></asp:TextBox>
                                    </td>
                                    <td id="Td4">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_title">
                                            Cost
                                        </label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtCost" runat="server" ToolTip="Cost" Width="100"></asp:TextBox>
                                    </td>
                                    <td id="Td19">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_title">
                                            Cost Description
                                        </label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtCostDescription" runat="server" ToolTip="Cost Description" Text="$350.00  includes continental breakfast, lunch and all materials" Width="400"></asp:TextBox>
                                    </td>
                                    <td id="Td20">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_title">
                                            MapLink
                                        </label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtMapLink" runat="server" ToolTip="Map Link" Width="400"></asp:TextBox>
                                    </td>
                                    <td id="Td21">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_title">
                                            Booking Button
                                        </label>
                                    </td>
                                    
                                    <td class="value">
                                        <asp:CheckBox ID="chkBook" runat="server" />
                                    </td>
                                    <td id="Td23">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="label">
                                        <label for="event_title">
                                            Booking URL
                                        </label>
                                    </td>
                                    <td class="value">
                                        <asp:TextBox ID="txtBookingURL" runat="server" ToolTip="URL to booking page" Width="400"></asp:TextBox>
                                    </td>
                                    <td id="Td24">
                                        <small>&nbsp;</small>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    <asp:Label ID="LblPostedData" runat="server"></asp:Label>
</asp:Content>
