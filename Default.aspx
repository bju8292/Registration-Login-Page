<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Registration.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <!-- admin and logout button -->
        <div ID="showAdmin" runat="server" style="float: left;margin-top: 6px;margin-left: 5px;" visible="true">
            <asp:Button ID="adminButton" runat="server" BorderStyle="Double" class="btn btn-primary" type="button" Text="Admin" Width="96px" OnClick="Button_admin_Click" /> 
        </div>  
            
        <div ID="showHome" runat="server" style="float: left;margin-top: 6px;margin-left: 5px;" visible="true">
            <asp:Button ID="Button2" runat="server" BorderStyle="Double" class="btn btn-primary" type="button" Text="Home" Width="96px"  /> 
        </div> 

        <div ID="showLogout" runat="server" style="float: right;margin-top: 6px;margin-right: 5px;" visible="true">
            <asp:Button ID="logout" runat="server" BorderStyle="Double" class="btn btn-primary" type="button"  Text="Logout" Width="96px" OnClick="Button_logout_Click2" /> 
        </div>

        <div ID="showLogin" runat="server" style="float: right;margin-top: 6px;margin-right: 5px;" visible="false">
            <asp:Button ID="Button1" runat="server" BorderStyle="Double" class="btn btn-primary" type="button"  Text="Login" Width="96px" OnClick="Button_login_Click2" /> 
        </div>
            <asp:Literal ID="ctrl" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
