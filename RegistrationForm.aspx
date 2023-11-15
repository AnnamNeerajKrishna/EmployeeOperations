<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="EmployeeOperations.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        body {
            background-color: #f5f5f5;
        }

        .container{
            max-width:400px;
            margin:20px auto;
            background-color: wheat;
            border-radius:15px;
            box-shadow:0px 0px 25px 5px;
        }
        .form-group {
            margin:20px;
        }
        #Button1{
            background-color:#007bff;
            border:none;
            border-radius:5px;
            padding:8px 15px;
            margin-bottom:10px;
            cursor:pointer;
        }
        #Button1:hover{
            background-color:crimson;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center">Registration Form </h2>
            <br />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="EmployeeID :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Employee Name :"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>

            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Employee Phno :"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Password :"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Re-Enter Password :"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>

            </div>

            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="RegisterUser" CssClass="btn btn-info" />

             <div class="alert registration-error" id="registrationError" runat="server" visible="false">Please Enter Valid Inputs</div>
            <div class="alert registration-success" id="registrationSuccess" runat="server" visible="false" >
                Successful Registered
            </div>

        </div>
    </form>
</body>
</html>
