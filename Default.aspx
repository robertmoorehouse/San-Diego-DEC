<%@ Page Language="C#" MasterPageFile="" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTopImage" Runat="Server">
    <asp:Image ID="img_head_bigpic" runat="server" ImageUrl="images/head_learn.jpg" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphLeftNav" Runat="Server">
    <asp:Literal ID="ltMenu" runat="server"></asp:Literal>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" Runat="Server">
    <asp:Literal ID="ltContent" runat="server"></asp:Literal>
</asp:Content>

