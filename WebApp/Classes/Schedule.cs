using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApp.App_Code;

namespace WebApp.Classes
{
    public class Schedule
    {
        public static Model.Schedule GetSchedule(int scheduleId)
        {
            Model.dbModelDataContext model = new Model.dbModelDataContext();

            return model.Student_schedules.Where(s => s.id == scheduleId).First().Schedule;
        }

        public static Result UpdateScheduleStatus(int studentId, Model.Schedule scheduleInfo, ClassStatus classStatus)
        {
            Result result = new Result();
            List<Model.Student_schedule> scheduleRows = new List<Model.Student_schedule>();

            Model.dbModelDataContext model = new Model.dbModelDataContext();

            try
            {
                scheduleRows = model.Student_schedules.Where(ss => ss.current == true && ss.Schedule.class_id == scheduleInfo.class_id 
                                                            && ss.Student.id == studentId).ToList();

                foreach (Model.Student_schedule item in scheduleRows)
                {
                                       item.status_id = (int)classStatus;
                }

                //scheduleRows.ForEach(x => x.status_id = (int)classStatus);

                model.SubmitChanges();

                result.Status = true;
                result.Message = "Actualizado con exito";
            }
            catch (Exception ex)
            {
                result.Status = false;
                result.Message = ex.Message;
            }
            

            return result;
        }

        public static List<Model.Student_schedule> GetSchedulePerSemester(int studentId, int semesterId)
        {
            Model.dbModelDataContext model = new Model.dbModelDataContext();

            return model.Student_schedules.Where(ss => ss.student_id == studentId && ss.Schedule.Semester.id == semesterId).ToList();
        }
    }
}