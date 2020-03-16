using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApp.App_Code;

namespace WebApp.Classes
{
    public class Confirmacion
    {
        public static Model.Semester GetCurrentSemester()
        {
            Model.dbModelDataContext model = new Model.dbModelDataContext();
            return model.Semesters.Where(s => s.current == true).First();
        }

        public static bool IsStudentConfirmed(int studentId)
        {
            Model.dbModelDataContext model = new Model.dbModelDataContext();

            Model.Semester currentSemester = GetCurrentSemester();

            int count = model.Student_Confirmations.Where(sc => sc.student_id == studentId
                                                    && sc.semester_id == currentSemester.id).Count();

            return count > 0;
        }

        public static Result ConfirmClasses(int studentId)
        {
            Result result = new Result();

            try
            {
                Model.dbModelDataContext model = new Model.dbModelDataContext();
                List<Model.Student_schedule> semesterSchedule = new List<Model.Student_schedule>();

                Model.Semester currentSemester = GetCurrentSemester();

                semesterSchedule = model.Student_schedules.Where(ss => ss.student_id == studentId && ss.Schedule.Semester.id == currentSemester.id).ToList();

                foreach (Model.Student_schedule item in semesterSchedule)
                {
                    switch (item.status_id)
                    {
                        case (int)ClassStatus.DescartadaEstudiante:
                            item.status_id = (int)ClassStatus.Descartada;
                            break;
                        case (int)ClassStatus.Inscrita:
                            item.status_id = (int)ClassStatus.Confirmada;
                            break;
                        default: break;

                    }
                }

                model.SubmitChanges();

                result.Status = true;
                result.Message = "Actualizado";
            }
            catch (Exception ex)
            {
                result.Status = false;
                result.Message = ex.Message;
            }


            return result;
        }

        public static GetConfirmedStudentReportResult GetConfirmedStudentReport(int semesterId)
        {
            GetConfirmedStudentReportResult result = new GetConfirmedStudentReportResult();

            Model.dbModelDataContext model = new Model.dbModelDataContext();

            var filteredList = from sc in model.Student_Confirmations
                               where sc.semester_id == semesterId
                               select new ConfirmedStudent
                               {
                                   CareerName = "Ing. Computación",
                                   GroupName = "1M1-CO",
                                   StudentId = sc.student_id,
                                   StudentName = sc.Student.first_name + ' ' + sc.Student.last_name,
                                   License = sc.Student.license,
                                   ConfirmationDate = Convert.ToDateTime(sc.confirmation_date),
                               };

            result.confirmedStudents = filteredList.ToList();

            return result;
        }
    }
}