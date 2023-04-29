<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Log into RMD Admin Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link type="text/css" rel="stylesheet" href="css/reset.css" media="all" />
    <link type="text/css" rel="stylesheet" href="css/boxes.css" media="all" />
    <link type="text/css" rel="stylesheet" href="css/rmd-admin.css" media="all" />
    
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

    <script type="text/javascript" src="js/x.htm"></script>

    <!--[if IE]> <link rel="stylesheet" href="css/iestyles.css" type="text/css" media="all" /> <![endif]-->
    <!--[if lt IE 7]> <link rel="stylesheet" href="css/below_ie7.css" type="text/css" media="all" /> <![endif]-->
    <!--[if IE 7]> <link rel="stylesheet" href="css/ie7.css" type="text/css" media="all" /> <![endif]-->
</head>
<body id="page-login">
    <form id="form1" runat="server">
    <div class="login-container">
        <div class="login-header">
            
        </div>
        <div class="login-box">
            <form method="post" action="" id="loginForm">
                <div class="login-form">
                    <input name="form_key" value="eLdcSgNt7s6d2los" type="hidden">
                    <h2>
                        Log in to Admin Panel</h2>
                    <div id="messages">
                    </div>
                    <div class="input-box input-left">
                        <label for="username">
                            User Name:</label><br />
                        <asp:TextBox ID="username" runat="server" CssClass="required-entry input-text" />
                        </div>
                    <div class="input-box input-right">
                        <label for="login">
                            Password:</label><br />
                        <asp:TextBox ID="password" runat="server" Cssclass="required-entry input-text" TextMode="Password" /></div>
                    <div class="clear">
                    </div>
                    <div class="form-buttons">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" cssclass="form-button" />
                    </div>
                    <div class="form-help">
                        <p>
                            <a class="left" href="#">Forgot your password?</a></p>
                    </div>
                </div>
                <div class="legal">
                    <div class="copyright">
                        <a href="#" target="_blank">Robert Moorehouse Design Group 2009</a></div>
                    <div class="link">
                        <a href="#" target="_blank" class="orange">
                            Want to Upgrade your web site or get additional features?</a> <a href="#"
                                target="_blank">Having problems with your web site?</a>
                    </div>
                    <div class="contact">
                        <img src="images/rmd_icon_tel.gif" alt="">
                        Tel: +61 4503 12345
                        <img src="images/rmd_icon_mail.gif" alt="">
                        <a href="mailto:info@moorehouse.eu">info@moorehouse.eu</a>
                    </div>
                </div>
            </form>
            <div class="bottom">
            </div>

            <script type="text/javascript">
                 var loginForm = new varienForm('loginForm');
            </script>

        </div>
    </div>
    </form>
</body>
</html>
