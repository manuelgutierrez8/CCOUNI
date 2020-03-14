using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.App_Code;

namespace WebApp.Pages
{
    public partial class HojaMatricula : System.Web.UI.Page
    {
        Model.Student student;
        List<StudentSchedule> studentSchedule;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                student = (Model.Student)Session["student"];
                studentSchedule = (List<StudentSchedule>)Session["scheduleList"];

                if (student != null && studentSchedule != null)
                {
                    SetClassList();
                }
                else
                {
                    Response.Redirect("../Login.aspx");
                }
            }
        }

        private void SetClassList()
        {
            List<StudentSchedule> finalList;

            if (Classes.Confirmacion.IsStudentConfirmed(this.student.id))
            {
                finalList = this.studentSchedule.Where(ss => ss.statusId == (int)ClassStatus.Confirmada).ToList();
            }
            else
            {
                finalList = this.studentSchedule.Where(ss => ss.statusId == (int)ClassStatus.Inscrita
                                            || ss.statusId == (int)ClassStatus.DescartadaEstudiante).ToList();
            }

            rptClasses.DataSource = finalList;
            rptClasses.DataBind();
        }
    }
}