<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTopImage" Runat="Server">
    <asp:Image ID="img_head_bigpic" runat="server" ImageUrl="images/head_learn.jpg" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphLeftNav" Runat="Server">
    <asp:Literal ID="ltMenu" runat="server"></asp:Literal>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="Server">
    <div class="table_content_title_blue">
    Mebmbers Area
    </div>
    <br />
    <div class="table_content_title_grey">
    Authentication Required
    <br />
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    </div>
    <br /><br />
    
    <div style="width: 181; float: left">
        <div class="firstLastNameRow">
            Email Address
            </div>
        <asp:TextBox ID="txtEmail" runat="server" size="60" style="width: 180" ></asp:TextBox>
        <p></p>
            <div class="firstLastNameRow">
            Password
            </div>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" size="60" style="width: 180" ></asp:TextBox>
            
            <br />
            <br />
            <asp:Button ID="Login" runat="server" Text="Login" style="background-color:#6288AF; color:White;" />
        
    </div>
    <div style="clear:both; float:none;"><br /></div>
    <div class="table_content_title_grey">
    <p>If you are not a member but would like to apply for membership please 
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/join.aspx">Click Here</asp:HyperLink></p>
   </div>
    
</asp:Content>
