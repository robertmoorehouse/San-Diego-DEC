<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DateTimeUC.ascx.cs" 
Inherits="UserControls_DateTimeUC" %>
<%@ Register TagPrefix="rjs" Namespace="RJS.Web.WebControl" Assembly="RJS.Web.WebControl.PopCalendar" %>

<style type="text/css">
.DisabledCustom { COLOR: #ffffff; BACKGROUND-COLOR: #ff0000! important; TEXT-DECORATION: line-through }
</style>
<script type="text/javascript" language="javascript">
<!--
function insertText(txt,value)
{
	if(window.event.keyCode == 32 && window.event.ctrlKey)
	{
	if(txt.value==''){txt.value = value;}
	window.event.keyCode=9;
	return false;
	}
}
//-->
</script>
<script language="javascript" type="text/javascript">
<!--

function FillWeekNumber()
{
	DateChanged(document.getElementById('txtRange'),window.PopCalendar3)
}

function DateChanged(_TextBox,_PopCal)
{
	var _TextBoxWeek=document.getElementById("txtNoSem")
	_TextBoxWeek.value=''
	if((!_TextBox)||(!_PopCal)) return
	var _format=_TextBox.getAttribute("Format")
	var _Date=_PopCal.getDate(_TextBox.value, _format)
	if(_Date)
	{
		_TextBoxWeek.value=_PopCal.getWeekNumber(_Date)
	}
}

function SpecialDateStyle(_Date, _PopCal, _Tooltip)
{
	if(_Tooltip.toLowerCase().indexOf("cumpleaños")!=-1)
	{
		var _Style="Background-Position:center center;"
		_Style+="Background-Image:url("+_PopCal.imgDir+"special.gif);"
		_Style+="Background-Repeat:no-repeat;"
		_Style+="Background-Color:#00aa00;"

		return(_Style)
	}
	return("")
}

function DisabledDateStyle(_Date, _PopCal, _Tooltip, _RazonDisabled)
{
	var _Today=_PopCal.getDate("Hoy")
	var _Style="Background-Position:center center;"
	_Style+="Background-Image:url("+_PopCal.imgDir+"baddate.gif);"
	_Style+="Background-Repeat:no-repeat;"
	if(_RazonDisabled.indexOf("Holiday")!=-1)
	{
		if((_PopCal.isGoodFriday(_Date))||(_PopCal.isCarnival(_Date)))
		{
			if((_Date>_Today)&&(_RazonDisabled.indexOf("RangeFrom")!=-1))
			{
				return(_Style+"Color:#ffffff;Background-Color:#ff0000!important;")
			}
			return("DisabledCustom")
		}
	}
	if((_Date>_Today)&&(_RazonDisabled.indexOf("RangeFrom")!=-1))
	{
		if(_Tooltip.toLowerCase().indexOf("cumpleaños")!=-1)
		{
			_Style+="Background-Color:#00aa00!important;"
		}
		return(_Style+"Color:#0a0a0a!important;")
	}
	return("")
}
// -->
</script>
<table cellspacing="0" cellpadding="0">
	<tr align="center">
	    <td nowrap="nowrap">
            <asp:label ID="lblCaption" runat="server" Text="" CssClass="highlight" /></td>
		<td nowrap="nowrap"><asp:textbox id="txtDate" runat="server" Width="96px"></asp:textbox></td>
		<td nowrap="nowrap"><rjs:popcalendar id="Popcalendar1" runat="server" Move="True" ShowWeekend="True" Shadow="True" Control="txtDate"
				Separator="/" ShowWeekNumber="True" ForeColor=" " MessageCssClass="error" InvalidDateMessage="Please enter the date in the format dd/mm/yyyy"
				ScriptsValidators="No Validate"></rjs:popcalendar></td>
		<td ><asp:label id="lblTime" runat="server">&nbsp;&nbsp;Time</asp:label>&nbsp;<asp:textbox id="txtTime" runat="server" Width="64px"></asp:textbox></td>
	</tr>
</table>
<asp:regularexpressionvalidator id="vaDateFormat" runat="server" ErrorMessage="Please check the date.  Should be dd/mm/yyyy and be a valid date"
	CssClass="error" Display="Dynamic" ForeColor=" " ControlToValidate="txtDate" EnableClientScript="false" ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$"></asp:regularexpressionvalidator>&nbsp;
<asp:regularexpressionvalidator id="vaTimeFormat" runat="server" ErrorMessage="Please check the time format.  Should be HH:MM (AM/PM)"
	CssClass="error" Display="Dynamic" ForeColor=" " ControlToValidate="txtTime" EnableClientScript="false" ValidationExpression="^((([0]?[1-9]|1[0-2])(:)[0-5][0-9]((:)[0-5][0-9])?( )?(AM|am|aM|Am|PM|pm|pM|Pm))|(([0]?[0-9]|1[0-9]|2[0-3])(:)[0-5][0-9]((:)[0-5][0-9])?))$"></asp:regularexpressionvalidator><asp:requiredfieldvalidator id="vaDate" runat="server" ErrorMessage="Please specify the date" CssClass="error"
	Display="Dynamic" ForeColor=" " ControlToValidate="txtDate" EnableClientScript="false" Enabled="False"></asp:requiredfieldvalidator>&nbsp;
<asp:requiredfieldvalidator id="vaTime" runat="server" ErrorMessage="Please specify the time" CssClass="error"
	Display="Dynamic" ForeColor=" " ControlToValidate="txtTime" EnableClientScript="false" Enabled="False"></asp:requiredfieldvalidator>&nbsp;

