using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeOperations
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterUser(object sender, EventArgs e)
        {
            string EmployeeID = TextBox1.Text;

            string PassWord = TextBox4.Text;

            string Re_Enter_Password = TextBox5.Text;


            if (EmployeeID!=null && PassWord != null && Re_Enter_Password != null)
            {
                registrationSuccess.Visible= true;

              //  Page.ClientScript.RegisterStartupScript(this.GetType(), "showContent", "showContent()", true);
            }
            else
            {

                registrationError.Visible = true;
                
            }





            
        }
    }
}