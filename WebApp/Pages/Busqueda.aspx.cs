using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Classes;
using WebApp.App_Code;

namespace WebApp.Pages
{
    public partial class Busqueda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                
            }
            else
            {
                txtSearch.Text = "";
            }
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            SearchStudents(txtSearch.Text);
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("Confirmacion.aspx");
        }

        protected void btnConfirm_Command(object sender, CommandEventArgs e)
        {
            string studentId = e.CommandArgument.ToString();

            Session["studentId"] = studentId;
            Response.Redirect("./Confirmacion.aspx", true);
        }

        protected void btnHojaMatricula_Command(object sender, CommandEventArgs e)
        {
            string studentId = e.CommandArgument.ToString();

            Session["studentId"] = studentId;
            Response.Redirect("./HojaMatricula.aspx", true);
        }

        public string DisplayConfirmButton(Object studentId)
        {
            if (!Classes.Confirmacion.IsStudentConfirmed((int)studentId))
            {
                return "d-block";
            }

            return "d-none";
        }

        public string DisplayHojaMatriculaButton(Object studentId)
        {
            if (Classes.Confirmacion.IsStudentConfirmed((int)studentId))
            {
                return "d-block";
            }

            return "d-none";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SearchStudents(txtSearch.Text);
        }

        private void SearchStudents(string filter)
        {
            GetStudentsByFilterResult result = Student.FilterStudents(txtSearch.Text);
            if (result.Status)
            {
                rptStudents.DataSource = result.FilteredStudents;
                rptStudents.DataBind();
            }
        }
    }
}