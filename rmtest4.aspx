<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rmtest4.aspx.cs" Inherits="rmtest4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table >
            <tr>
                <td>
                    User ID :
                </td>
                <td>
                    <asp:TextBox ID="txtSiteID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Area
                </td>
                <td>
                    <asp:DropDownList ID="ddlarea" runat="server">
                        <asp:ListItem Value="1">Cumbria</asp:ListItem>
                        <asp:ListItem Value="2">East of England</asp:ListItem>
                        <asp:ListItem Value="3">Heart of England</asp:ListItem>
                        <asp:ListItem Value="4">North West England</asp:ListItem>
                        <asp:ListItem Value="5">North East England</asp:ListItem>
                        <asp:ListItem Value="6">South East England</asp:ListItem>
                        <asp:ListItem Value="7">Southern England</asp:ListItem>
                        <asp:ListItem Value="8">Cornwall</asp:ListItem>
                        <asp:ListItem Value="9">Devon</asp:ListItem>
                        <asp:ListItem Value="10">West Country</asp:ListItem>
                        <asp:ListItem Value="11">Yorkshire</asp:ListItem>
                        <asp:ListItem Value="12">South & West Wales</asp:ListItem>
                        <asp:ListItem Value="13">Mid Wales</asp:ListItem>
                        <asp:ListItem Value="14">North Wales</asp:ListItem>
                        <asp:ListItem Value="15">Scotland</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <%--<tr>
                <td>
                    Location Text 
                </td>
                <td>
                    <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
                </td>
            </tr>--%>
            <tr>
                <td>
                    Short Title 
                </td>
                <td>
                    <asp:TextBox ID="txtShortTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Short Description 
                </td>
                <td>
                    <asp:TextBox ID="txtShortDescription" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Display Type : 
                </td>
                <td>
                    <asp:DropDownList ID="ddlDisplayType" runat="server">
                        <asp:ListItem Text="List" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Calendar" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Password : 
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
<%--                    <asp:Button ID="btnAddBooking" runat="server" Text="Add Booking" OnClick="btnAddBooking_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;--%>                    
                    <asp:Button ID="btnAddSite" runat="server" Text="Add Site" OnClick="btnAddSite_Click" />
                </td>
            </tr>
            
            <tr>
                <td colspan="2">
                    &nbsp
                </td>
            </tr>
            
            <tr>
                <td colspan="2">
                    <asp:GridView ID="gvSites" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvSites_PageIndexChanging"
                        AllowPaging="true" PageSize="15" EmptyDataText="No Sites Entered">
                        <Columns>
                            <asp:BoundField DataField="SiteID" HeaderText="Site ID" Visible="True"></asp:BoundField>
                            <asp:TemplateField HeaderText="Area">
                                <ItemTemplate>
                                    <%#GetArea(Eval("area"))%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="location" HeaderText="Location Text" Visible="True"></asp:BoundField>
                            <asp:BoundField DataField="shortTitle" HeaderText="Short Title" Visible="True"></asp:BoundField>
                            <asp:BoundField DataField="shortDesc" HeaderText="Short Description" Visible="True"></asp:BoundField>
                            <asp:BoundField DataField="password" HeaderText="Password" Visible="True"></asp:BoundField>
                            <asp:TemplateField HeaderText="Delete" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%"
                                ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Button ID="DeleteSiteButton" runat="server" CommandName="DeleteSite" Text="Delete"
                                        CommandArgument='<%#Eval("siteID")%>' OnCommand="DeleteSiteButton_OnCommand"
                                        CausesValidation="false" ToolTip="Delete site" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
           
        </table>
        <br />
    </div>
    </form>
</body>
</html>
