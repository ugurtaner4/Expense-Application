<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExpenseApp.UI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Masraf Uygulaması</title>
    <link href="styles/layout.css" rel="stylesheet" type="text/css" />
    <link href="styles/login.css" rel="stylesheet" type="text/css" />
    <!-- Theme Start -->
    <link href="themes/blue/styles.css" rel="stylesheet" type="text/css" />
    <!-- Theme End -->
</head>
<body>
   <div id="logincontainer">
        <div id="loginbox">
            <div id="loginheader">
                <img src="http://icons.iconarchive.com/icons/alecive/flatwoken/128/Apps-Computer-Login-icon.png" alt="Control Panel Login" />
            </div>
            <div id="innerlogin">
                <p>Kullanıcı Adınız:</p>
                <form id="LoginForm" runat="server">
                    <asp:TextBox ID="txtLoginName" runat="server" CssClass="logininput" />
                    <p>Şifreniz:</p>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="logininput" TextMode="Password"  />
                   
                    <asp:Button ID="BtnGonder" Text=" Giriş " runat="server" CssClass="loginbtn" OnClick="BtnGonder_Click" />
                </form>
                <a href="SifremiUnuttum.aspx" style="text-decoration: none; color: #808080; font-size: 11px;">Şifremi Unuttum.</a>
            </div>
        </div>
        <img src="img/login_fade.png" alt="Fade" />
    </div>
</body>
</html>
