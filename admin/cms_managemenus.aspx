<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="cms_managemenus.aspx.cs" Inherits="admin_cms_managemenus" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="Server">
    <div id="messages">
    </div>
    <div class="content-header">
        <table cellspacing="0">
            <tbody>
                <tr>
                    <td style="width: 50%;">
                        <h3 class="icon-head head-cms-page">
                            Manage Page Menus</h3>
                    </td>
                    <td class="form-buttons">
                        <asp:Button ID="btnAddnew" runat="server" Text="Add New Menu Item" CssClass="scalable save"
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
                            per page<span class="separator">|</span>
                            <asp:Literal ID="results" runat="server" Text="" />
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
                <div class="hor-scroll">
                    <asp:GridView ID="gvResults" OnPageIndexChanging="gvResults_PageIndexChanging" OnRowDataBound="gvResults_RowDataBound"
                        runat="server" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true"
                        ShowFooter="true" ShowHeader="true" UseAccessibleHeader="false" BorderStyle="none"
                        BorderWidth="0" PagerSettings-Visible="true" PagerSettings-Mode="NumericFirstLast">
                        <Columns>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <table id="cmsPageGrid_table" cellspacing="0">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <span class="nobr"><a href="#" name="tite" title="asc" class="not-sort"><span class="sort-title">
                                                        Title</span></a></span>
                                                </th>
                                                
                                                
                                            </tr>
                                        </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tbody>
                                        <tr class="even">                                            
                                            <td class="a-left">
                                                <asp:Label ID="lbltitle" runat="server" Text='<%# Bind("menu_title") %>'></asp:Label>
                                            </td>                                            
                                        </tr>
                                        <tr>
                                             <td>
                                                <asp:GridView ID="gvSubResults" runat="server" AutoGenerateColumns="false" AllowPaging="false"
                                                    AllowSorting="false" ShowFooter="true" ShowHeader="true" UseAccessibleHeader="false"
                                                    BorderStyle="none" BorderWidth="0" PagerSettings-Visible="false" PagerSettings-Mode="NumericFirstLast">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <table class="data" id="cmsPageGrid_table" cellspacing="0">
                                                                   
                                                                        <tr class="headings">
                                                                            <th>
                                                                                <span class="nobr"><a href="#" name="tite" title="asc" class="not-sort"><span class="sort-title">
                                                                                    Title</span></a></span>
                                                                            </th>
                                                                            <th>
                                                                                <span class="nobr"><a href="#" name="link" title="asc" class="not-sort"><span class="sort-title">
                                                                                    Link</span></a></span>
                                                                            </th>
                                                                            
                                                                            <th class="no-link last" colspan="3">
                                                                                <span class="nobr">Action</span>
                                                                            </th>
                                                                        </tr>
                                                                    
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                
                                                                    <tr class="even">
                                                                        <td class="a-left" style="width:70%">
                                                                            <asp:Label ID="lbltitle" runat="server" Text='<%# Bind("menu_title") %>'></asp:Label>
                                                                        </td>
                                                                        <td class="a-left" style="width:15%">
                                                                            <asp:Label ID="lblLink" runat="server" Text='<%# Bind("pagelink") %>'></asp:Label>
                                                                        </td>
                                                                        
                                                                        <td class="a-left" style="width:5%">
                                                                            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                                                            <a href='cms_menueditor.aspx?menu=<%# Eval("ID") %>'>Edit</a>
                                                                        </td>
                                                                        <td class="a-left" style="width:5%">                                                                            
                                                                            <a href='cms_managemenus.aspx?menu=<%# Eval("ID") %>&moveit=up'>
                                                                                <asp:Image ID="imgUp" runat="server" ImageUrl="images/grid_sort_asc.gif"/></a>
                                                                        </td>
                                                                        <td class="last" style="width:5%">                                                                            
                                                                            <a href='cms_managemenus.aspx?menu=<%# Eval("ID") %>&moveit=down'>
                                                                                <asp:Image ID="imgDoen" runat="server" ImageUrl="images/grid_sort_desc.gif"/></a>
                                                                        </td>
                                                                        <td class="last" style="width: 5%">
                                                                            <a href='cms_managemenus.aspx?menu=<%# Eval("ID") %>&moveit=delete'>
                                                                                <asp:Image ID="Image1" runat="server" ImageUrl="images/cancel_icon.gif" /></a>
                                                                        </td>
                                                                    </tr>
                                                            </ItemTemplate>
                                                            <AlternatingItemTemplate>
                                                                
                                                                    <tr class="odd">
                                                                        <td class="a-left" style="width:70%">
                                                                            <asp:Label ID="lbltitle" runat="server" Text='<%# Bind("menu_title") %>'></asp:Label>
                                                                        </td>
                                                                        <td class="a-left" style="width:15%">
                                                                            <asp:Label ID="lblLink" runat="server" Text='<%# Bind("pagelink") %>'></asp:Label>
                                                                        </td>
                                                                        
                                                                        <td class="a-left" style="width:5%">
                                                                            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                                                            <a href='cms_menueditor.aspx?menu=<%# Eval("ID") %>'>Edit</a>
                                                                        </td>
                                                                        <td class="a-left" style="width:5%">                                                                            
                                                                            <a href='cms_managemenus.aspx?menu=<%# Eval("ID") %>&moveit=up'>
                                                                                <asp:Image ID="imgUp" runat="server" ImageUrl="images/grid_sort_asc.gif"/></a>
                                                                        </td>
                                                                        <td class="last" style="width:5%">                                                                            
                                                                            <a href='cms_managemenus.aspx?menu=<%# Eval("ID") %>&moveit=down'>
                                                                                <asp:Image ID="imgDoen" runat="server" ImageUrl="images/grid_sort_desc.gif"/></a>
                                                                        </td>
                                                                        <td class="last" style="width: 5%">
                                                                            <a href='cms_managemenus.aspx?menu=<%# Eval("ID") %>&moveit=delete'>
                                                                                <asp:Image ID="Image1" runat="server" ImageUrl="images/cancel_icon.gif" /></a>
                                                                        </td>
                                                                    </tr>
                                                            </AlternatingItemTemplate>
                                                            <FooterTemplate>
                                                                 </table>
                                                            </FooterTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tbody>
                                        <tr class="odd">                                            
                                            <td class="a-left">
                                                <asp:Label ID="lbltitle" runat="server" Text='<%# Bind("menu_title") %>'></asp:Label>
                                            </td>                                            
                                        </tr>
                                        <tr>
                                             <td>
                                                <asp:GridView ID="gvSubResults" runat="server" AutoGenerateColumns="false" AllowPaging="false"
                                                    AllowSorting="false" ShowFooter="true" ShowHeader="true" UseAccessibleHeader="false"
                                                    BorderStyle="none" BorderWidth="0" PagerSettings-Visible="false" PagerSettings-Mode="NumericFirstLast">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                <table class="data" id="cmsPageGrid_table" cellspacing="0">
                                                                   
                                                                        <tr class="headings">
                                                                            <th>
                                                                                <span class="nobr"><a href="#" name="tite" title="asc" class="not-sort"><span class="sort-title">
                                                                                    Title</span></a></span>
                                                                            </th>
                                                                            <th>
                                                                                <span class="nobr"><a href="#" name="link" title="asc" class="not-sort"><span class="sort-title">
                                                                                    Link</span></a></span>
                                                                            </th>
                                                                            
                                                                            <th class="no-link last" colspan="3">
                                                                                <span class="nobr">Action</span>
                                                                            </th>
                                                                        </tr>
                                                                    
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                
                                                                    <tr class="even">
                                                                        <td class="a-left" style="width:70%">
                                                                            <asp:Label ID="lbltitle" runat="server" Text='<%# Bind("menu_title") %>'></asp:Label>
                                                                        </td>
                                                                        <td class="a-left" style="width:15%">
                                                                            <asp:Label ID="lblLink" runat="server" Text='<%# Bind("pagelink") %>'></asp:Label>
                                                                        </td>
                                                                        
                                                                        <td class="a-left" style="width:5%">
                                                                            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                                                            <a href='cms_menueditor.aspx?menu=<%# Eval("ID") %>'>Edit</a>
                                                                        </td>
                                                                        <td class="a-left" style="width:5%">                                                                            
                                                                            <a href='cms_managemenus.aspx?menu=<%# Eval("ID") %>&moveit=up'>
                                                                                <asp:Image ID="imgUp" runat="server" ImageUrl="images/grid_sort_asc.gif"/></a>
                                                                        </td>
                                                                        <td class="last" style="width:5%">                                                                            
                                                                            <a href='cms_managemenus.aspx?menu=<%# Eval("ID") %>&moveit=down'>
                                                                                <asp:Image ID="imgDoen" runat="server" ImageUrl="images/grid_sort_desc.gif"/></a>
                                                                        </td>
                                                                        <td class="last" style="width: 5%">
                                                                            <a href='cms_managemenus.aspx?menu=<%# Eval("ID") %>&moveit=delete'>
                                                                                <asp:Image ID="Image1" runat="server" ImageUrl="images/cancel_icon.gif" /></a>
                                                                        </td>
                                                                    </tr>
                                                            </ItemTemplate>
                                                            <AlternatingItemTemplate>
                                                                
                                                                    <tr class="odd">
                                                                        <td class="a-left" style="width:70%">
                                                                            <asp:Label ID="lbltitle" runat="server" Text='<%# Bind("menu_title") %>'></asp:Label>
                                                                        </td>
                                                                        <td class="a-left" style="width:15%">
                                                                            <asp:Label ID="lblLink" runat="server" Text='<%# Bind("pagelink") %>'></asp:Label>
                                                                        </td>
                                                                        
                                                                        <td class="a-left" style="width:5%">
                                                                            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                                                            <a href='cms_menueditor.aspx?menu=<%# Eval("ID") %>'>Edit</a>
                                                                        </td>
                                                                        <td class="a-left" style="width:5%">                                                                            
                                                                            <a href='cms_managemenus.aspx?menu=<%# Eval("ID") %>&moveit=up'>
                                                                                <asp:Image ID="imgUp" runat="server" ImageUrl="images/grid_sort_asc.gif"/></a>
                                                                        </td>
                                                                        <td class="last" style="width:5%">                                                                            
                                                                            <a href='cms_managemenus.aspx?menu=<%# Eval("ID") %>&moveit=down'>
                                                                                <asp:Image ID="imgDoen" runat="server" ImageUrl="images/grid_sort_desc.gif"/></a>
                                                                        </td>
                                                                        <td class="last" style="width: 5%">
                                                                            <a href='cms_managemenus.aspx?menu=<%# Eval("ID") %>&moveit=delete'>
                                                                                <asp:Image ID="Image1" runat="server" ImageUrl="images/cancel_icon.gif" /></a>
                                                                        </td>
                                                                    </tr>
                                                            </AlternatingItemTemplate>
                                                            <FooterTemplate>
                                                                 </table>
                                                            </FooterTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
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
