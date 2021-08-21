<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Registration.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 69px;
        }
        .auto-style2 {
            height: 114px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <div class="auto-style2">
            <asp:Label ID="Label_welcome" runat="server" Text="Welcome__"></asp:Label>
            <br />
            <asp:Button ID="B_Logout" runat="server" OnClick="B_Logout_Click" Text="Logout" />
        </div>
    </form>
</body>
</html>
