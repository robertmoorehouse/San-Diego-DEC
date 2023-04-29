<%@ Page Language="C#" MasterPageFile="" AutoEventWireup="true" CodeFile="preview.aspx.cs" Inherits="preview" %>

<asp:content id="Content1" contentplaceholderid="cphTopImage" runat="Server">
    <asp:Image ID="img_head_bigpic" runat="server" ImageUrl="images/head_learn.jpg" />
</asp:content>
<asp:content id="Content2" contentplaceholderid="cphLeftNav" runat="Server">
    <asp:Literal ID="ltMenu" runat="server"></asp:Literal>
</asp:content>
<asp:content id="Content3" contentplaceholderid="cphMainContent" runat="Server">
    <asp:Literal ID="ltContent" runat="server"></asp:Literal>
</asp:content>
