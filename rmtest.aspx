<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rmtest.aspx.cs" Inherits="rmtest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="1" cellspacing="0" bgcolor="#FFFFFF" align="left">
            <tr valign="top">
                <td valign="top">
                    <table>
                        <tr>
                            <td colspan="3" class="arial8Black">
                                <div align="center">
                                    <img src="Images/Calendar/red.gif" alt="Booked (red)" width="15" height="15" align="absmiddle" />
                                    Booked
                                    <img src="Images/Calendar/green.gif" alt="Available (green)" width="15" height="15"
                                        align="absmiddle" />
                                    Available
                                    <%--<img src="Images/Calendar/orange.gif" alt="Preferred start day (orange)" width="15" height="15" align="absmiddle" /> Preferred start
                                                            <img src="Images/Calendar/grey.gif" alt="No prices (grey)" width="15" height="15" align="absmiddle" /> No prices                                                            
                                                        --%></div>
                            </td>
                        </tr>
                        <asp:Repeater ID="CalRepeater" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td align="center" valign="top">
                                        <%#DataBinder.Eval(Container.DataItem, "LCal")%>
                                    </td>
                                    <td align="center" valign="top">
                                        <%#DataBinder.Eval(Container.DataItem, "MCal")%>
                                    </td>
                                    <td align="center" valign="top">
                                        <%#DataBinder.Eval(Container.DataItem, "RCal")%>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </td>
            </tr>
        </table>
        <asp:Label ID="StartMonth" runat="server" Visible="false" />
        <asp:Label ID="StartYear" runat="server" Visible="false" />
    </div>
    </form>
</body>
</html>
