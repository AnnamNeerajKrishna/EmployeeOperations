using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EmployeeOperations.Models
{
    public class EmployeeInfo
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string FirstDay { get; set; }
        public int MealAllowThreshold { get; set; }
        public string GuaranteeType { get; set; }
        public int OfWks { get; set; }
        public char Status { get; set; }
    }
}