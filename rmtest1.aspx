<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rmtest1.aspx.cs" Inherits="rmtest1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register TagPrefix="uc1" TagName="DateTimeUC" Src="UserControls/DateTimeUC.ascx" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="580">
            <tr>
                <td>
                    Start Date :
                </td>
                <td>
                    <uc1:DateTimeUC ID="startdate" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    End Date :
                </td>
                <td>
                    <uc1:DateTimeUC ID="enddate" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Price :
                </td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Availability : 
                </td>
                <td>
                    <asp:DropDownList ID="ddlAvailability" runat="server">
                        <asp:ListItem Text="Available" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Not Available" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Booked" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Notes : 
                </td>
                <td>
                    <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="5" MaxLength="255"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
<%--                    <asp:Button ID="btnAddBooking" runat="server" Text="Add Booking" OnClick="btnAddBooking_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;--%>                    
                    <asp:Button ID="btnAddPriceRange" runat="server" Text="Add Prices" OnClick="btnAddPriceRange_Click" />
                </td>
            </tr>
            <%--<tr>
                <td>
                    Base Price :
                </td>
                <td>
                    <asp:TextBox ID="txtBasePrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnUpdateBasePrice" runat="server" Text="Update Price" OnClick="btnUpdateBasePrice_Click" />
                </td>
            </tr>--%>
            <tr>
                <td colspan="2">
                    &nbsp
                </td>
            </tr>
            <tr>
                <td >
                    Prices
                </td>
                <td>
                <div align="center">
                    <img src="Images/Calendar/red.gif" alt="Booked (red)" width="15" height="15" align="absmiddle" />
                    Booked
                    <img src="Images/Calendar/green.gif" alt="Available (green)" width="15" height="15"
                        align="absmiddle" />
                    Available
                    <img src="Images/Calendar/orange.gif" alt="Not Available (orange)" width="15" height="15" align="absmiddle" /> Not Available                                                   
                    <img src="Images/Calendar/special.gif" alt="Late Deal" width="15" height="15" align="absmiddle" /> Late Deal
<%--                    <asp:Button ID="btnRemoveLateDeal" runat="server" Text="Remove Late Deal" />
--%>                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="gvPrices" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvPrices_PageIndexChanging"
                        AllowPaging="true" PageSize="15" EmptyDataText="No Prices Entered">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" Visible="False"></asp:BoundField>
                            <asp:BoundField DataField="PropertyID" HeaderText="Property ID" Visible="False">
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Start Date">
                                <ItemTemplate>
                                    <%#GetStartDate(Eval("startDate"))%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="End Date">
                                <ItemTemplate>
                                    <%#GetEndDate(Eval("endDate"))%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="price" HeaderText="Price" Visible="True"></asp:BoundField>
                            <asp:TemplateField HeaderText="Nights">
                                <ItemTemplate>
                                    <%#GetDays(Eval("startDate"),Eval("endDate"))%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#GetStatus(Eval("status"))%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%#GetLateDeal(Eval("latedeal"))%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="notes" HeaderText="Notes" Visible="True"></asp:BoundField>
                             <asp:TemplateField HeaderText="Set Values">
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnSetAvailable" runat="server" ImageUrl="images/Calendar/Green.gif" 
                                    CommandName="SetAvailable" CommandArgument='<%#Eval("ID")%>' OnCommand="DeletePriceButton_OnCommand"
                                        CausesValidation="false" ToolTip="Set as available" />
                                    <asp:ImageButton ID="btnSetBooked" runat="server" ImageUrl="images/Calendar/red.gif" 
                                    CommandName="SetBooked" CommandArgument='<%#Eval("ID")%>' OnCommand="DeletePriceButton_OnCommand"
                                        CausesValidation="false" ToolTip="Set as booked" />
                                    <asp:ImageButton ID="btnSetNotAvailable" runat="server" ImageUrl="images/Calendar/orange.gif" 
                                    CommandName="SetNotAvailable" CommandArgument='<%#Eval("ID")%>' OnCommand="DeletePriceButton_OnCommand"
                                        CausesValidation="false" ToolTip="Set as not available" />
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Set as Late Deal">
                                <ItemTemplate>
<asp:ImageButton ID="btnSetLateDeal" runat="server" ImageUrl="images/Calendar/special.gif" Visible='<%#GetSetAsLate(Eval("startDate"),Eval("status"))%>' 
                                    CommandName="SetLateDeal" CommandArgument='<%#Eval("ID")%>' OnCommand="DeletePriceButton_OnCommand"
                                        CausesValidation="false" ToolTip="Set as Late Deal" />                                </ItemTemplate>
                            </asp:TemplateField>
                            <%-- <asp:TemplateField HeaderText="Details" ItemStyle-Width="15%">
                    <ItemTemplate>
                        <a href="LogDetails.aspx?LogID=<%#Eval("LogID")%>" title="View log details">Details</a>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                            <asp:TemplateField HeaderText="Delete" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%"
                                ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Button ID="DeletePriceButton" runat="server" CommandName="DeletePrice" Text="Delete"
                                        CommandArgument='<%#Eval("ID")%>' OnCommand="DeletePriceButton_OnCommand"
                                        CausesValidation="false" ToolTip="Delete price" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <%--<tr>
                <td colspan="2">
                    Bookings
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="gvBookings" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvBookings_PageIndexChanging"
                        AllowPaging="true" PageSize="15" EmptyDataText="No Bookings">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" Visible="False"></asp:BoundField>
                            <asp:BoundField DataField="PropertyID" HeaderText="Property ID" Visible="False">
                            </asp:BoundField>
                            <asp:BoundField DataField="bookref" HeaderText="Booking Ref" Visible="False"></asp:BoundField>
                            <asp:TemplateField HeaderText="Start Date">
                                <ItemTemplate>
                                    <%#GetStartDate(Eval("startDate"))%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="End Date">
                                <ItemTemplate>
                                    <%#GetEndDate(Eval("endDate"))%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="price" HeaderText="Price" Visible="True"></asp:BoundField>
                            
                            <asp:TemplateField HeaderText="Delete" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%"
                                ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Button ID="DeleteBookingButton" runat="server" CommandName="DeleteBooking" Text="Delete"
                                        CommandArgument='<%#Eval("bookref")%>' OnCommand="DeleteBookingButton_OnCommand"
                                        CausesValidation="false" ToolTip="Delete booking" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>--%>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
