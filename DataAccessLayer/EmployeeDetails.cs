using EmployeeOperations.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EmployeeOperations.DataAccessLayer
{
    public class EmployeeDetails
    {
        private List<Employee> employees;

        public EmployeeDetails()
        {
            employees = new List<Employee>
            {
                new Employee{SNo=1,EmpNo=546685,EmpName="ArunKumar",Department="DotNet",Operation="VeiwDetails"},
                    new Employee{SNo=2,EmpNo=546686,EmpName="Arjun",Department="Oracel",Operation="VeiwDetails"},
                    new Employee{SNo=3,EmpNo=546687,EmpName="Siva Kumar",Department="DotNet",Operation="VeiwDetails"},
                    new Employee{SNo=4,EmpNo=546688,EmpName="Srinivas",Department="Angular",Operation="VeiwDetails"},
            };
        }
        public List<Employee> GetEmployeesByDepartment(string department)
        {
            return employees.Where(employee => employee.Department.Equals(department, StringComparison.OrdinalIgnoreCase)).ToList();
        }

        public List<Employee> GetAllEmployees()
        {
            return employees;
        }

        public List<Employee> SearchEmployee(string SearchBox)
        {
            return employees.FindAll(employee => employee.EmpName==SearchBox);
        }
    }     
}