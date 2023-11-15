<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeesInfo.aspx.cs" Inherits="EmployeeOperations.EmployeesInfo" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="DateSelection"> </asp:Calendar>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Selected Date:"></asp:Label>
        </div>
    </form>
</body>
</html>
