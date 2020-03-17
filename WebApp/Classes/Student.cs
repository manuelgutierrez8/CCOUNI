using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApp.Classes;

namespace WebApp.App_Code
{
    public class Student
    {
        public static GetCurrentScheduleResult GetCurrentSchedule(int studentId)
        {
            GetCurrentScheduleResult result = new GetCurrentScheduleResult();

            Model.dbModelDataContext model = new Model.dbModelDataContext();

            try
            {
                //Seleccionar los registros de clases inscritas del estudiante
                //para el semestre actual
                var schedule = from ss in model.Student_schedules
                               where ss.current == true && ss.student_id == studentId
                               select new StudentSchedule
                               {
                                   Id = ss.id,
                                   ClassId = ss.Schedule.Class.id,
                                   ClassName = ss.Schedule.Class.name,
                                   ClassroomName = ss.Schedule.Group.Classroom,
                                   Credits = Convert.ToInt32(ss.Schedule.Class.credits),
                                   GroupId = Convert.ToInt32(ss.Schedule.group_id),
                                   GroupName = ss.Schedule.Group.name,
                                   statusId = Convert.ToInt32(ss.status_id),
                                   StatusName = ss.Status_catalog.name
                               };

                result.StudentScheduleList = schedule.ToList();
                result.Status = true;
                result.Message = "";
            }
            catch (Exception ex)
            {
                result.Message = ex.Message;
                result.Status = false;
            }

            return result;
        }

        public static int GetStudentId(int userId)
        {
            Model.dbModelDataContext model = new Model.dbModelDataContext();

            return model.Students.Where(s => s.user_id.Equals(userId)).FirstOrDefault().id;
        }

        public static Model.Student GetStudentById(int studentId)
        {
            Model.dbModelDataContext model = new Model.dbModelDataContext();

            return model.Students.Where(s => s.id.Equals(studentId)).FirstOrDefault();
        }

        public static GetStudentsByFilterResult FilterStudents(string filter)
        {
            GetStudentsByFilterResult result = new GetStudentsByFilterResult();
            Model.dbModelDataContext model = new Model.dbModelDataContext();

            try
            {
                var query = from ss in model.Student_schedules
                            where ss.current == true && (ss.Student.first_name + ' ' + ss.Student.last_name).ToLower().Contains(filter.ToLower())
                                    || ss.Student.license.Contains(filter)
                            select new StudentFiltered
                            {
                                License = ss.Student.license,
                                CareerId = ss.Schedule.Group.Career.id,
                                CareerName = ss.Schedule.Group.Career.name,
                                StudentId = ss.Student.id,
                                StudentName = ss.Student.first_name + ' ' + ss.Student.last_name,
                                GroupId = (int)ss.Schedule.group_id,
                                GroupName = ss.Schedule.Group.name,
                            };

                result.FilteredStudents = query.GroupBy(f => f.StudentId).Select(s => s.FirstOrDefault()).ToList();

                result.Message = "Filtro completado";
                result.Status = true;
            }
            catch (Exception ex)
            {
                result.FilteredStudents = new List<StudentFiltered>();
                result.Message = ex.Message;
                result.Status = false;
            }

            return result;
        }
    }
}