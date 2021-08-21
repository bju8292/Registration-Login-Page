<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Registration_login_page.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 296px;
            text-align: right;
        }
        .auto-style3 {
            width: 799px;
        }
        .auto-style4 {
            margin-left: 15px;
        }
        .auto-style5 {
            margin-left: 21px;
        }
        .auto-style6 {
            font-size: x-large;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style6">
            <strong>Registration Page</strong></div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" id="TextBoxUN">UserName</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="190px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Pls enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Date" Width="190px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Pls enter email id" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter the valid emaid id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxPass" runat="server" Width="190px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Pls enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxRPass" runat="server" Width="190px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="confirm password is required" ForeColor="Red"></asp:RequiredFieldValidator>
    
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Both Password should be same" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Country</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownListCountry" runat="server" Width="190px">
                        <asp:ListItem>Select an item</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>japan</asp:ListItem>
                        <asp:ListItem>America</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="select your country name" ForeColor="Red" InitialValue="Select an item"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="AspButton1" runat="server" Text="submit" OnClick="Button1_Click" BackColor="Yellow" />  
    </div>
                    
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
