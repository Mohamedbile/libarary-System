<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="pages_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css%20and%20boostarp/style.css" rel="stylesheet" />
    <style type="text/css">
        #form1 {
            height: 162px;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <img src="../image/avatar.png" class="avatar" />

    <h1>Login </h1>
    <form id="form1" runat="server">
        <p>User Name</p>
        <asp:TextBox ID="txtuser" runat="server" Width="273px"></asp:TextBox>
        <p>Password</p>
        <asp:TextBox ID="txtpass" runat="server" Width="276px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="login" />
    <div>
    
    </div>
    </form>
</body>
</html>
