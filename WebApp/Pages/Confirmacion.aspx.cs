using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.App_Code;

namespace WebApp.Pages
{
    public partial class Confirmacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                tbSignedClasses.CssClass = "table table-striped table-responsive-sm signed-classes deleted";
            }
            else {
                int userId = Convert.ToInt32(Session["userId"]);

                if (userId != 0)
                {
                    int studentId = Student.GetStudentId(userId);
                    Student.GetCurrentSchedule(studentId);
                }
            }
            //table.CssClass = "abc edf";
        }

        protected void btnConfirmClasses_Click(object sender, EventArgs e)
        {
            Response.Redirect("HojaMatricula.aspx", true);
        }
    }
}