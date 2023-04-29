<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="cms_manageevents.aspx.cs" Inherits="admin_cms_manageevents" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="Server">
    <div id="messages">
    </div>
    <div class="content-header">
        <table cellspacing="0">
            <tbody>
                <tr>
                    <td style="width: 50%;">
                        <h3 class="icon-head head-cms-page">
                            Manage Events</h3>
                    </td>
                    <td class="form-buttons">
                         <asp:Button ID="btnAddnew" runat="server" Text="Add New Event" CssClass="scalable save"
                    Style="border-width: 1px; border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502;
                    padding: 0 7px 1px 7px; background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%;
                    color: #fff; font: bold 12px arial, helvetica, sans-serif; cursor: pointer; text-align: center !important;
                    white-space: nowrap;" OnClick="btnAddnew_Click" />
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div>
        <div id="cmsPageGrid">
            <table class="actions" cellspacing="0">
                <tbody>
                    <tr>
                        <td class="pager">
                            Page
                            <img src="images/pager_arrow_left_off.gif" alt="Go to Previous page" class="arrow">
                            <input name="page" value="1" class="input-text page" onkeypress="cmsPageGridJsObject.inputPage(event, '1')"
                                type="text">
                            <img src="images/pager_arrow_right_off.gif" alt="Go to Previous page" class="arrow">
                            of 1 pages <span class="separator">|</span> View
                            <asp:DropDownList ID="ddlLimit" runat="server" AutoPostBack="true">
                            <asp:ListItem Value="20" Text="20"></asp:ListItem>
                            <asp:ListItem Value="30" Text="30"></asp:ListItem>
                            <asp:ListItem Value="50" Text="50"></asp:ListItem>
                            <asp:ListItem Value="100" Text="100"></asp:ListItem>
                            <asp:ListItem Value="200" Text="200"></asp:ListItem>
                            </asp:DropDownList>
                            
                            per page<span class="separator">|</span> <asp:Literal ID="results" runat="server" Text="" />
                        </td>
                        <td class="filter-actions a-right">
                            <button id="id_ac9798169f4165899af86df0ffbcc0ee" type="button" class="scalable" onclick="cmsPageGridJsObject.resetFilter()"
                                style="">
                                <span>Reset Filter</span></button>
                            <button id="id_8e86b92df2e860d48d28382a00b03bbb" type="button" class="scalable task"
                                onclick="cmsPageGridJsObject.doFilter()" style="">
                                <span>Search</span></button>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="grid">
                <div class="hor-scroll"><%--OnSorting="gvResults_Sorting"--%>
                    <asp:GridView ID="gvResults" 
                    
                    OnPageIndexChanging="gvResults_PageIndexChanging"
                    
                    runat="server"
                    AutoGenerateColumns="false" 
                    Width="100%" 
                    AllowPaging="true" 
                    AllowSorting="true"
                    ShowFooter="true" 
                    ShowHeader="true" 
                    UseAccessibleHeader="false" 
                    BorderStyle="none" 
                    BorderWidth="0" 
                    PagerSettings-Visible="true" 
                    PagerSettings-Mode="NumericFirstLast">
                        <Columns>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <table class="data" id="cmsPageGrid_table" cellspacing="0">
                                        <col />
                                        <col />
                                        <col />
                                        <col />
                                        <col />
                                        <col />
                                        <col />
                                        <col width="10">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <span class="nobr"><span class="sort-title">
                                                        PageID</span></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="title" title="asc" class="not-sort"><span class="sort-title">
                                                        Title</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="identifier" title="desc" class="sort-arrow-asc">
                                                        <span class="sort-title">Short Description</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="root_template" title="asc" class="not-sort"><span
                                                        class="sort-title">Event Dates</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="is_active" title="asc" class="not-sort"><span
                                                        class="sort-title">Location</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="creation_time" title="asc" class="not-sort"><span
                                                        class="sort-title">Cost</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="update_time" title="asc" class="not-sort"><span
                                                        class="sort-title">Places (booked)</span></a></span>
                                                </th>
                                                <th class="no-link last">
                                                    <span class="nobr">Action</span>
                                                </th>
                                            </tr>
                                           <tr class="filter">
                                                <th class="no-link first">
                                                    &nbsp;
                                                </th>
                                                <th>
                                                    
                                                </th>
                                                <th>
                                                   
                                                </th>
                                                <th>
                                                    
                                                </th>
                                                <th>
                                                    
                                                </th>
                                                <th>
                                                    
                                                    
                                                </th>
                                                <th>
                                                    
                                                </th>
                                                <th class="no-link last">
                                                    &nbsp;
                                                </th>
                                            </tr>
                                        </thead>
                                        </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <fieldset>
                                        <tbody>
                                            <tr class="even">
                                                <td class="a-left">
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("short_description") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="lblLayout" runat="server" Text='<%# Bind("eventdate") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Bind("location_name") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("cost") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
<asp:Label ID="Label3" runat="server" Text='<%# getPlaces(DataBinder.Eval(Container.DataItem,"places"),DataBinder.Eval(Container.DataItem,"booked"))%>'></asp:Label>
                                                </td>
                                                <td class="last">
                                                    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                                    <a href='cms_eventeditor.aspx?event=<%# Eval("ID") %>'>Edit</a>
                                            </tr>
                                    </fieldset>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <fieldset>
                                        <tbody>
                                            <tr class="odd">
                                                    <td class="a-left">
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("short_description") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="lblLayout" runat="server" Text='<%# Bind("eventdate") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Bind("location_name") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("cost") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label3" runat="server" Text='<%# getPlaces(DataBinder.Eval(Container.DataItem,"places"),DataBinder.Eval(Container.DataItem,"booked"))%>'></asp:Label>
                                                </td>
                                                <td class="last">
                                                    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                                    <a href='cms_eventeditor.aspx?event=<%# Eval("ID") %>'>Edit</a>
                                            </tr>
                                    </fieldset>
                                </AlternatingItemTemplate>
                                <FooterTemplate>
                                    </tbody> </table>
                                </FooterTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


