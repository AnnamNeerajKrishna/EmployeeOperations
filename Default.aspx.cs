using EmployeeOperations.DataAccessLayer;
using EmployeeOperations.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeOperations
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindEmployees();
            }
            
        }

        private void BindEmployees()
        {
            EmployeeDetails repository = new EmployeeDetails();
            List<Employee> employees = repository.GetAllEmployees();
            EmployeeGridView.DataSource = employees;
            EmployeeGridView.DataBind();
        }
        protected void SearchBox_TextChanged(object sender, EventArgs e)
        {
            SearchEmployees();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            SearchEmployees();
        }
        protected void SearchEmployees()
        {
            string searchKeyword = SearchBox.Text.Trim();

            EmployeeDetails details = new EmployeeDetails();
            List<Employee> filteredEmployees = details.SearchEmployee(searchKeyword);

            EmployeeGridView.DataSource = filteredEmployees;
            EmployeeGridView.DataBind();
        }
        protected void DepartmentDropDown(object sender, EventArgs e)
        {
            string selectedDepartment = DropDownList.SelectedValue;
            EmployeeDetails details = new EmployeeDetails();
            if (selectedDepartment == "")
            {
                // If "All Departments" is selected, bind all employees
                BindEmployees();
            }
            else
            {
                // Filter employees by department
                List<Employee> filteredEmployees = details.GetEmployeesByDepartment(selectedDepartment);
                EmployeeGridView.DataSource = filteredEmployees;
                EmployeeGridView.DataBind();
            }
        }
        //protected void RedirectButton_Click(object sender, EventArgs e)
        //{
        //    // Redirect to Page2.aspx
        //    Response.Redirect("EmployeesInfo.aspx");
        //}

    }
}