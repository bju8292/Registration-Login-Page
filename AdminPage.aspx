<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Registration.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 84%;
        }
        .auto-style2 {
            width: 696px;
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style4 {
            width: 870px;
        }
        .auto-style6 {
            margin-left: 615px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style3" id="admin">
                <strong>Admin Control Page</strong></div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Default Page Text 1</td>
                    <td class="auto-style4">&nbsp;</td>
                    <asp:TextBox ID="TextBox_Default_Page" runat="server" Width="190px"></asp:TextBox>
                </tr>
                <tr>
                    <td class="auto-style2">Default Page Text 2</td>
                    <td class="auto-style4">&nbsp;</td>
                    <asp:TextBox ID="TextBox_Default_Text" runat="server" Width="190px"></asp:TextBox>
                </tr>
                <tr>
                    <td class="auto-style2">Header Text</td>
                    <td class="auto-style4">&nbsp;</td>
                    <asp:TextBox ID="TextBox_Header_Text" runat="server" Width="190px"></asp:TextBox>
                </tr>
                <tr>
                    <td class="auto-style2">Footer Text</td>
                    <td class="auto-style4">&nbsp;</td>
                    <asp:TextBox ID="TextBox_Footer" runat="server" Width="190px"></asp:TextBox>
                </tr>
            </table>
        </div>
        <asp:Button ID="Button_save" runat="server" BorderStyle="Double" CssClass="auto-style6" Text="Save Settings" Width="217px" OnClick="Button_save_Click" />
    </form>
</body>
</html>
