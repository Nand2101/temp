<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="wallet.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>Sign Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- MATERIAL DESIGN ICONIC FONT -->
    <link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

    <!-- STYLE CSS -->
    <link rel="stylesheet" href="css2/style.css">

</head>
<body>
    
        <div class="wrapper" style="background-image: url('images2/bg-registration-form-1.jpg');">
        <div class="inner">
            <div class="image-holder">
                <img src="images2/registration-form-1.jpg" alt="">
            </div>
            <form id="form1" runat="server">
                <h3>Registration Form</h3>
                <div class="form-group">
                    <!--<input type="text" id="firstName" placeholder="First Name" class="form-control"> -->
                    <asp:TextBox ID="firstname" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                    <!--<input type="text" id="lastName" placeholder="Last Name" class="form-control"> -->
                    <asp:TextBox ID="lastname" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                </div>
                <div class="form-wrapper">
                    <!--<input type="text" id="userName" placeholder="Username" class="form-control"> -->
                    <asp:TextBox ID="username" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
                    <i class="zmdi zmdi-account"></i>
                </div>
                <div class="form-wrapper">
                    <!--<input type="text" id="email" placeholder="Email Address" class="form-control"> -->
                    <asp:TextBox ID="email" runat="server" class="form-control" TextMode="Email" placeholder="Email Address"></asp:TextBox>
                    <i class="zmdi zmdi-email"></i>
                </div>
                <div class="form-wrapper">
                    <select name="" id="gender" class="form-control">
							<option value="" disabled selected>Gender</option>
							<option value="male">Male</option>
							<option value="femal">Female</option>
					</select>
                    <i class="zmdi zmdi-caret-down" style="font-size: 17px"></i>
                </div>
                <div class="form-wrapper">
                    <!--<input type="number" id="mobileNo" placeholder="Mobile Number" class="form-control"> -->
                    <asp:TextBox ID="mobileno" runat="server" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                    <i class="zmdi zmdi-lock"></i>
                </div>
                <div class="form-wrapper">
                    <!--<input type="password" id="password1" placeholder="Password" class="form-control"> -->
                    <asp:TextBox ID="password1" runat="server" class="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                    <i class="zmdi zmdi-lock"></i>
                </div>
                <div class="form-wrapper">
                    <!--<input type="password" id="password2" placeholder="Confirm Password" class="form-control"> -->
                    <asp:TextBox ID="password2" runat="server" class="form-control" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                    <i class="zmdi zmdi-lock"></i>
                </div>
                <!--<button onclick="signup_clicked">Register
					<i class="zmdi zmdi-arrow-right"></i>
				</button> -->
                
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register"/>
            </form>
        </div>
    </div>
   </body>
</html>
