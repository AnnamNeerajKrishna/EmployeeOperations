<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="EmployeeOperations.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>



    <style>
        #form1{
            background-color:darkblue;
        }
        .container{
            max-width:500px;
            max-height:2000px;
            margin:150px auto;
            background-color: wheat;
            border-radius:25px;
            box-shadow:0px 0px 25px 5px;
        }
        #Button1{
            border-radius:5px;
            margin-bottom:10px;
        }
    </style>







</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center">Login Form</h2>

            <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Employee User_ID"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <asp:Button ID="Button1" runat="server" Text="Login"  CssClass="btn btn-info"/>
        </div>
    </form>
</body>
</html>
