using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.App_Code;
using WebApp.Classes;

namespace WebApp.Pages
{
    public partial class Confirmacion : System.Web.UI.Page
    {
        Model.Student student;
        GetCurrentScheduleResult schedule;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                this.student = (Model.Student)Session["student"];
                this.schedule = (GetCurrentScheduleResult)Session["schedule"];
            }
            else
            {


                int userId = Convert.ToInt32(Session["userId"]);

                if (userId != 0)
                {
                    int studentId = Session["studentId"] != null ? Convert.ToInt32(Session["studentId"]) : Student.GetStudentId(userId);

                    if (studentId != 0)
                    {
                        this.student = Student.GetStudentById(studentId);
                        Session["student"] = this.student;

                        if (Classes.Confirmacion.isValidDateToConfirm(Classes.Confirmacion.GetCurrentSemester().id).Status)
                        {
                            if (!Classes.Confirmacion.IsStudentConfirmed(studentId))
                            {
                                schedule = Student.GetCurrentSchedule(studentId);

                                if (schedule.Status)
                                {
                                    Session["schedule"] = schedule;
                                    //GroupBy(x => x.Text).Select(x => x.FirstOrDefault());
                                    schedule.StudentScheduleList = schedule.StudentScheduleList.GroupBy(s => s.ClassId).Select(s => s.FirstOrDefault()).ToList();
                                    rptMenu.DataSource = schedule.StudentScheduleList;
                                    Session["scheduleList"] = schedule.StudentScheduleList;
                                    rptMenu.DataBind();

                                    SetStudentInformation();
                                }
                            }
                            else
                            {
                                Response.Redirect("./HojaMatricula.aspx");
                            }
                        }
                        else
                        {
                            Response.Redirect("./PeriodoVencido.aspx");
                        }
                    }
                }
                else
                {
                    Response.Redirect("../Login.aspx");
                }

            }
            //table.CssClass = "abc edf";
        }

        protected void btnConfirmClasses_Click(object sender, EventArgs e)
        {
            Session["scheduleList"] = schedule.StudentScheduleList;

            Classes.Confirmacion.ConfirmClasses(this.student.id);
            Classes.Confirmacion.RegisterStudentConfirmation(this.student.id);

            Response.Redirect("HojaMatricula.aspx", true);
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            string scheduleId = e.CommandArgument.ToString();

            Session["scheduleId"] = scheduleId;
            Response.Redirect("./EliminarAsignatura.aspx", true);
        }

        protected void btnAdd_Command(object sender, CommandEventArgs e)
        {
            string scheduleId = e.CommandArgument.ToString();

            Session["scheduleId"] = scheduleId;

            Model.Schedule x = Classes.Schedule.GetSchedule(Convert.ToInt32(scheduleId));

            Classes.Schedule.UpdateScheduleStatus(this.student.id, x, ClassStatus.Inscrita);
            Response.Redirect(Request.RawUrl);
        }

        private void SetStudentInformation()
        {
            lbStudentName.Text = this.student.first_name + ' ' + this.student.last_name;
            lbStudentLicense.Text = this.student.license;

            int scheduleId = this.schedule.StudentScheduleList.FirstOrDefault().Id;

            Model.dbModelDataContext model = new Model.dbModelDataContext();

            Model.Student_schedule firstSchedule = model.Student_schedules.Where(s => s.id.Equals(scheduleId)).FirstOrDefault();

            lbCurrentSemester.Text = firstSchedule.Schedule.Semester.name;
            lbStudentCareer.Text = firstSchedule.Schedule.Group.Career.name;
            lbStudentPeriod.Text = firstSchedule.Schedule.Period.Shift.name;
        }

        public string DisplayDeleteButton(Object scheduleId)
        {
            Model.dbModelDataContext model = new Model.dbModelDataContext();

            int statusId = (int)model.Student_schedules.Where(s => s.id == (int)scheduleId).First().status_id;
            if (statusId == (int)ClassStatus.AprobadaEstudiante || statusId == (int)ClassStatus.Inscrita)
            {
                return "d-block";
            }

            return "d-none";
        }

        public string DisplayAddButton(Object scheduleId)
        {
            Model.dbModelDataContext model = new Model.dbModelDataContext();

            int statusId = (int)model.Student_schedules.Where(s => s.id == (int)scheduleId).First().status_id;
            if (statusId == (int)ClassStatus.DescartadaEstudiante)
            {
                return "d-block";
            }

            return "d-none";
        }

        public string SetStatusColorClass(Object scheduleId)
        {
            string iconClass = "text-success";
            switch ((int)scheduleId)
            {
                case (int)ClassStatus.DescartadaEstudiante:
                    iconClass = "text-warning";
                    break;
                case (int)ClassStatus.Inscrita:
                    iconClass = "text-success";
                    break;
                default:
                    iconClass = "text-success";
                    break;
            }

            return iconClass;
        }
    }
}