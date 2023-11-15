<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeOperations._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:TextBox ID="SearchBox" runat="server" Placeholder="Search..." AutoPostBack="true" OnTextChanged="SearchBox_TextChanged"></asp:TextBox>
    <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
    <asp:DropDownList ID="DropDownList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DepartmentDropDown">
        <asp:ListItem Text="All Departments" Value=""></asp:ListItem>
        <asp:ListItem Text="DotNet" Value="DotNet"></asp:ListItem>
        <asp:ListItem Text="Oracel" Value="Oracel"></asp:ListItem>
        <asp:ListItem Text="Angular" Value="Angular"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="EmployeeGridView" runat="server" AutoGenerateColumns="false" CssClass="styled-table">
        <Columns>
            <asp:BoundField DataField="SNo" HeaderText="S.No" />
            <asp:BoundField DataField="EmpNo" HeaderText="EmployeeID" />
            <asp:BoundField DataField="EmpName" HeaderText="EmployeeName" />
            <asp:BoundField DataField="Department" HeaderText="Department" />




            <asp:TemplateField HeaderText="Operation">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink" runat="server" Text="View Details" NavigateUrl="#" OnClientClick='<%#"openPop(\"Sample1.aspx?id="+Eval("EmpNo")+"\",\"Popup Window\",400,600);return false;" %>' />
                </ItemTemplate>

            </asp:TemplateField>

        </Columns>
    </asp:GridView>
    <br />
    <br />

    <script>
        function openPop(url, title, width, height) {
            var left = (screen.width) / 2;
            var top = (screen.height) / 2;
            window.open(url, title, 'width=' + width, 'height=' + height, 'left=' + left, 'top=' + top);
        }
    </script>
    <div>
        <a href="EmployeesInfo.aspx">EmployeeInfo</a>
        <a href="EmployeeOperation/EmployeeInfo/Index">Go to ASP.NET Project</a>


        <style>
            .styled-table {
                border-collapse: collapse;
                width: 100%;
                border: 5px solid #ddd;
            }

                .styled-table th, .styled-table td {
                    border: 5px solid #ddd;
                    padding: 8px;
                    text-align: center;
                }

                .styled-table th {
                    background-color: blue;
                }

                /* Add a hover effect to rows */
                .styled-table tr:hover {
                    background-color: #f5f5f5;
                }
        </style>
    </div>
</asp:Content>
