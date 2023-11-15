using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeOperations
{
    public partial class EmployeesInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = "Selected Date :" + Calendar1.TodaysDate.ToShortDateString();
            }

            
        }

        protected void DateSelection(object sender ,EventArgs e)
        {
            
            Label1.Text = "Selected Date :" + Calendar1.SelectedDate.ToShortDateString();
        }
    }
}