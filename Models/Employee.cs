using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EmployeeOperations.Models
{
    public class Employee
    {

        public int SNo { get; set; }

        public int EmpNo { get; set; }

        public string EmpName { get; set; }

        public string Department { get; set; }

        public string Operation { get; set; }
    }
}