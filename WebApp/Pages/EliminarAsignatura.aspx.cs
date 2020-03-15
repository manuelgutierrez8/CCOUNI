using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.App_Code;

namespace WebApp.Pages
{
    public partial class EliminarAsignatura : System.Web.UI.Page
    {
        Model.Student student;
        GetCurrentScheduleResult schedule;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student"] != null)
            {
                this.student = (Model.Student)Session["student"];
                this.schedule = (GetCurrentScheduleResult)Session["schedule"];

                if (!Page.IsPostBack)
                {
                    SetStudentInformation();
                }
            }
            else
            {
                Response.Redirect("../Login.aspx");
            }

        }

        private void SetStudentInformation()
        {
            lbStudentName.Text = this.student.first_name + ' ' + this.student.last_name;
            lbStudentLicense.Text = this.student.license;

            int scheduleId = Convert.ToInt32(Session["scheduleId"]);
                //this.schedule.StudentScheduleList.FirstOrDefault().Id;

            Model.dbModelDataContext model = new Model.dbModelDataContext();

            Model.Student_schedule firstSchedule = model.Student_schedules.Where(s => s.id.Equals(scheduleId)).FirstOrDefault();

            lbCurrentSemester.Text = firstSchedule.Schedule.Semester.name;
            lbStudentCareer.Text = firstSchedule.Schedule.Group.Career.name;
            lbStudentPeriod.Text = firstSchedule.Schedule.Period.Shift.name;
            lbClassName.Text = firstSchedule.Schedule.Class.name;
        }

        protected void btnDeleteClass_Click(object sender, EventArgs e)
        {
            if (Session["scheduleId"] != null)
            {
                Model.Schedule scheduleToDelete = Classes.Schedule.GetSchedule(Convert.ToInt32(Session["scheduleId"]));

                Result x = Classes.Schedule.UpdateScheduleStatus(this.student.id, scheduleToDelete, ClassStatus.DescartadaEstudiante);
                Response.Redirect("./Confirmacion.aspx");
            }
        }
    }
}