<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="EventSignUp.aspx.cs" Inherits="EventSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTopImage" Runat="Server">
    <asp:Image ID="img_head_bigpic" runat="server" ImageUrl="images/head_news.jpg" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphLeftNav" runat="Server">
    <div class="table_left">
        <div class="table_left_CurrentPage">
            <img alt="" src="userfiles/image/websitebranding/red.gif" />&nbsp;&nbsp; N E W S :
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E V E N T S
        </div>
        <br />
        <div class="table_content">
            <a id="hypLM1" class="table_content" href="CalendarofEvents.aspx">Calendar of Events</a>
            <img alt="" src="userfiles/image/websitebranding/arrow.gif" /></div>
        <br />
        <div class="table_content">
            <span class="table_content_blue">Event Sign Up</span>
            <img alt="" src="userfiles/image/websitebranding/arrow.gif" /></div>
        <br />
        <div class="table_content">
            <a id="hypLM3" class="table_content" href="ExporterofYear.aspx">Exporter of the Year</a>
            <img alt="" src="userfiles/image/websitebranding/arrow.gif" /></div>
        <br>
        <div class="table_content">
            <a id="hypLM4" class="table_content" href="FreeTradeAgreements.aspx">Free Trade<br />
                Agreements</a>
            <img alt="" src="userfiles/image/websitebranding/arrow.gif" /></div>
        <br />
        <div class="table_content">
            <a id="hypLM5" class="table_content" href="MexicoTrade.aspx">Mexico Trade</a>
            <img alt="" src="userfiles/image/websitebranding/arrow.gif" /></div>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="Server">
    <div class="table_content_title_grey">
        Event Sign Up & Payment
    </div>
    <br />
    <div style="width: 181; float: left">
        <div class="firstLastNameRow">
            <div class="firstLastNameCol">
                First Name</div>
            <div class="firstLastNameCol">
                Last Name</div>
        </div>
        <div class="firstLastNameRow">
            <div class="firstLastNameCol">
                <input name="FirstName" type="text" size="25" style="width: 75" /></div>
            <div class="firstLastNameCol">
                <input name="LastName" type="text" size="25" style="width: 75" /></div>
        </div>
        <br />
        <div class="firstLastNameRow">
            Email Address
        </div>
        <input name="email" type="email" size="60" style="width: 170" />
        <br />
        <br />
        <input name="Register" type="button" value="Register" style="background-color: #6288AF;
            color: White;" />
        <p>
            &nbsp;</p>
    </div>
    <div style="clear: both">
    </div>
</asp:Content>
