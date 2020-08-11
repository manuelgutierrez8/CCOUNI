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
                 //(List<StudentSchedule>)Session["scheduleList"];

                if (student != null)
                {
                    studentSchedule = App_Code.Student.GetCurrentSchedule(this.student.id).StudentScheduleList;
                    studentSchedule = studentSchedule.GroupBy(s => s.ClassId).Select(s => s.FirstOrDefault()).ToList();
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

            //Obtener todas las clases registradas para el estudiante 
            //en el semestre
            finalList = Student.GetCurrentSchedule(this.student.id).StudentScheduleList;

            //El alumno ya confirmó clases?
            if (Classes.Confirmacion.IsStudentConfirmed(this.student.id))
            {
                //Mostrar solo las clases confirmadas
                finalList = this.studentSchedule.Where(ss => ss.statusId == (int)ClassStatus.Confirmada).ToList();
            }
            else
            {
                //Mostrar las clases inscritas, ya que no se ha ejecutado la confirmación
                finalList = this.studentSchedule.Where(ss => ss.statusId == (int)ClassStatus.Inscrita
                                            || ss.statusId == (int)ClassStatus.DescartadaEstudiante).ToList();
            }

            lbStudentName.Text = string.Format("{0} {1}", student.first_name, student.last_name);
            lbStudentLicense.Text = student.license;

            rptClasses.DataSource = finalList;
            rptClasses.DataBind();
        }
    }
}