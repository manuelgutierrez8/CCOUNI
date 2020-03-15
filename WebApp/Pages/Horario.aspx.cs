using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.App_Code;

namespace WebApp.Pages
{
    public partial class Horario : System.Web.UI.Page
    {
        Model.Student student;
        List<StudentSchedule> studentScheduleList;

        protected void Page_Load(object sender, EventArgs e)
        {
            studentScheduleList = (List<StudentSchedule>) Session["scheduleList"];
            student = (Model.Student) Session["student"];

            if (student != null && studentScheduleList != null)
            {
                SetStudentInformation();
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

            int scheduleId = this.studentScheduleList.FirstOrDefault().Id;

            Model.dbModelDataContext model = new Model.dbModelDataContext();

            Model.Student_schedule firstSchedule = model.Student_schedules.Where(s => s.id.Equals(scheduleId)).FirstOrDefault();

            lbCurrentSemester.Text = firstSchedule.Schedule.Semester.name;
            lbStudentCareer.Text = firstSchedule.Schedule.Group.Career.name;
            lbStudentPeriod.Text = firstSchedule.Schedule.Period.Shift.name;
        }
    }
}