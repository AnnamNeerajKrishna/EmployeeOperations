using EmployeeOperations.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EmployeeOperations.DataAccessLayer
{
      public class Details
    {
        public List<EmployeeInfo> employeeInfos;

        public Details()
        {
            employeeInfos = new List<EmployeeInfo>
            {
                new EmployeeInfo{ID=9767,Name="A-10AMHF",Description="Sa-4X10,Sa-Mo-Th-Fr",FirstDay="Saturday",MealAllowThreshold=12,GuaranteeType="No GuaranteeType",OfWks=1,Status='A'},
                new EmployeeInfo{ID=9767,Name="A-10AMHF",Description="Sa-4X10,Sa-Su-Th-Fr",FirstDay="Saturday",MealAllowThreshold=12,GuaranteeType="No GuaranteeType",OfWks=1,Status='A'},
                new EmployeeInfo{ID=9767,Name="A-10AMHF",Description="Sa-4X10,Sa-Su-Tu-We",FirstDay="Saturday",MealAllowThreshold=12,GuaranteeType="No GuaranteeType",OfWks=1,Status='A'},
                new EmployeeInfo{ID=9767,Name="A-10AMHF",Description="Sa-4X10,Sa-We-Th-Fr",FirstDay="Saturday",MealAllowThreshold=12,GuaranteeType="No GuaranteeType",OfWks=1,Status='A'},
                new EmployeeInfo{ID=9767,Name="A-10AMHF",Description="Sa-4X10,Sa-Mo-Th-Fr",FirstDay="Saturday",MealAllowThreshold=12,GuaranteeType="No GuaranteeType",OfWks=1,Status='A'},


            };
        }

        public List<EmployeeInfo> GetAllInfo()
        {
            return employeeInfos;
        }
        public string Description()
        {


            return string.Empty;
        }
    }
}