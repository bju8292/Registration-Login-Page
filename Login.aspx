<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Registration.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .divider:after,
.divider:before {
  content: "";
  flex: 1;
  height: 1px;
  background: #eee;
}
.h-custom {
  height: calc(100% - 73px);
}
@media (max-width: 450px) {
  .h-custom {
    height: 100%;
  }
  .nowrap {
  white-space: nowrap;
}
}
        .welcomePage {
            margin-left: 625px;
            font-size:24px;
        }
        .left {
            align-content:start;
        }
        .right {
            float:right;
        }
        .admin_page1 {
            width: 102%;
        }
        .admin_page2 {
            width: 696px;
            text-align: right;
        }
        .admin_page3 {
            text-align: center;
            font-size: x-large;
            color:red;
        }
        .admin_page4 {
            width: 870px;
        }
        .admin_page6 {
            margin-left: 692px;
            margin-top:6px;
        }

        .auto-style1
        {
            font-size: xx-large;
            text-align: center;
            margin-left:480px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 600px;
            text-align: right;
        }
        .auto-style4 {
            margin-left: 15px;
        }
        .auto-style5 {
            width: 614px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</head>
<body>       

<section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-8 col-lg-6 col-xl-4">
        <form ID="form1" runat="server">
            <!-- admin and logout button -->
        <div ID="showAdmin" runat="server" style="float: left;margin-left: -518px;margin-top: -190px;" visible="false">
            <asp:Button ID="adminButton" runat="server" BorderStyle="Double" class="btn btn-primary" type="button" Text="Admin" Width="96px" OnClick="Button_admin_Click" /> 
        </div>
          <div ID="showHome" runat="server" style="float: left;margin-left: -408px;margin-top: -190px;" visible="false">
            <asp:Button ID="Button2" runat="server" BorderStyle="Double" class="btn btn-primary" type="button" Text="Home" Width="96px" /> 
        </div> 

        <div ID="showLogout" runat="server" style="float: right;margin-right: -513px;margin-top: -190px;" visible="false">
            <asp:Button ID="logout" runat="server" BorderStyle="Double" class="btn btn-primary" type="button"  Text="Logout" Width="96px" OnClick="Button_logout_Click2" /> 
        </div>

        <div ID="showAdmin2" runat="server" style="float: left;margin-left: -518px;margin-top: -472px;" visible="false">
            <asp:Button ID="adminButton2" runat="server" BorderStyle="Double" class="btn btn-primary" type="button" Text="Admin" Width="96px" OnClick="Button_admin_Click" /> 
        </div>       

        <div ID="showLogout2" runat="server" style="float: right;margin-right: -513px;margin-top: -472px;" visible="false">
            <asp:Button ID="logout2" runat="server" BorderStyle="Double" class="btn btn-primary" type="button"  Text="Logout" Width="96px" OnClick="Button_logout_Click2" /> 
        </div>

            <!-- ---------------------- -->

         <div id="loginPage" runat="server">
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
            <h2 class="lead me-3" style="margin-left: 120px;margin-bottom: 41px;font-weight:700;font-size:25px">Sign into your account</h2>
          </div>

          <!-- Email input -->
          <div class="form-outline mb-4">
              <asp:TextBox ID="TextBoxUserName" runat="server" class="form-control form-control-lg" placeholder="Username"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Pls enter username" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
              <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" class="form-control form-control-lg" placeholder="Enter password"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="pls enter password" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>

           <div class="text-center pt-1 mb-1 pb-1 ">
                <asp:Button ID="Button_Login"  runat="server" class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="button" style="width:482px" OnClick="Button_Login_Click" Text="Login"></asp:Button>
           </div>
           <div class="d-flex align-items-center justify-content-center pb-4">
                <p class="mb-0 me-2">Don't have an account?</p>
                <asp:Button ID="Create_User" runat="server" class="btn btn-outline-danger" CausesValidation="false" OnClick="Button1_Click" Text="Create new"/>
           </div>
          </div>

            <!-- admin page -->
 <div ID="adminpage" runat="server" visible="false">
            <div class="auto-style3" id="admin" style="margin-bottom: 30px; font-size: 23px;text-align: left; margin-left: 130px;">
                <strong>Admin Control Page</strong></div>
        <table style="--bs-table-bg: #0dcaf0" class="table table-bordered table-striped table-highlight">
            <tbody>
                <tr>
                    <td style="padding: 0px; padding-left: 63px; padding-top: 2px;font-size: 21px;"> Default Text1: </td>
                    <td style="padding:0px"><asp:TextBox ID="TextBox_Default_Page" runat="server" type="text" class="form-control" /></td>
                </tr>
                <tr>
                    <td style="padding: 0px; padding-left: 63px; padding-top: 2px;font-size: 21px;"> Default Text2: </td>
                    <td style="padding:0px"><asp:TextBox ID="TextBox_Default_Text" runat="server" type="text" class="form-control" /></td>
                </tr>
                <tr>
                    <td style="padding: 0px; padding-left: 63px; padding-top: 2px;font-size: 21px;"> Header Text: </td>
                    <td style="padding:0px"><asp:TextBox ID="TextBox_Header_Text" runat="server" type="text" class="form-control" /></td>
                </tr>
                <tr>
                    <td style="padding: 0px; padding-left: 63px; padding-top: 2px;font-size: 21px;"> Footer Text </td>
                    <td style="padding:0px"><asp:TextBox ID="TextBox_Footer" runat="server" type="text" class="form-control" /></td>
                </tr>
            </tbody>
        </table>
        <div class="text-center pt-1 mb-1 pb-1 ">
            <asp:Button ID="Button1" runat="server" BorderStyle="Double" class="btn btn-outline-success" CausesValidation="false" Text="Save Settings" Width="217px" OnClick="Button_save_Click" /> 
        </div>       
 </div>

        </form>
      </div>
    </div>
  </div>
</section>


</body>
</html>
