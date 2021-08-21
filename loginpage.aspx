<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="Registration.loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        *[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    border-radius: 0.3em;
    background-color: #f2f2f2;
}

*[role="form"] h2 { 
    font-family: 'Open Sans' , sans-serif;
    font-size: 40px;
    font-weight: 600;
    color: #000000;
    margin-top: 5%;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 4px;
}
        .auto-style1 {
            width: 100%;
            margin-top: 31px;
            margin-bottom: 30px;
        }
        .auto-style2 {
            width: 699px;
            text-align: right;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            width: 810px;
        }
        .auto-style5 {
            width: 699px;
            text-align: right;
            height: 42px;
        }
        .auto-style6 {
            width: 810px;
            height: 42px;
        }
        .auto-style7 {
            height: 42px;
        }
        .auto-style8 {
            margin-left: 25px;
        }
        .auto-style9 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</head>
<body>
<div class="container">
            <form class="form-horizontal" runat="server" role="form" style="background-color:#FFCCCC">
                <div ID="mainDev" runat="server" style="margin-left:18.5%">
                <h2 style="text-align:left;margin-bottom: 41px;font-weight:700;font-size:25px">Registration</h2>
                 <div class="form-group">
                    <label for="Username" class="col-sm-3 control-label">Username</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="Username" runat="server" type="text"  placeholder="Username"  class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="firstName" runat="server" type="text" placeholder="First Name" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName" class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-9">
                      <asp:TextBox type="text" ID="lastName" runat="server" placeholder="Last Name" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email* </label>
                    <div class="col-sm-9">
                        <asp:TextBox type="email" ID="email" runat="server" placeholder="Email" class="form-control" name= "email"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password*</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="password" runat="server" type="password" placeholder="Password" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Confirm Password*</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="confirmPassword" runat="server" type="password" placeholder="Password" class="form-control"></asp:TextBox>
                    </div>
                </div>

                <asp:Button ID="user_created" style="margin-top:15px" runat="server" type="submit" class="btn btn-primary btn-block" OnClick="Button1_Click" Text="Register"></asp:Button>
                    </div>

               <div ID="loginSuccessfull" runat="server" visible="false" class="d-flex align-items-center justify-content-center pb-4" style="background-color=#FFFFFF;height:500px">
                <p class="mb-0 me-2">Login Sucessful</p>
                <asp:Button ID="Create_User" runat="server" class="btn btn-outline-danger" CausesValidation="false" OnClick="loginSuccessFunc" Text="Redirect to Login Page"/>
           </div>

            <div ID="registrationFailed" runat="server" visible="false" class="d-flex align-items-center justify-content-center pb-4" style="background-color:#FFFFFF;height:500px">
                <p class="mb-0 me-2">User Already Exist</p>
                <asp:Button ID="Button1" runat="server" class="btn btn-outline-danger" CausesValidation="false" OnClick="userExistFunc" Text="Redirect to Login Page"/>
           </div>

            </form> <!-- /form -->
        </div> <!-- ./container -->
    
</body>
</html>
