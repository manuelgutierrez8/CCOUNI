using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApp.App_Code
{
    public class Student
    {
        public static StudentSchedule GetCurrentSchedule(int studentId)
        {
            StudentSchedule result = new StudentSchedule();

            Model.dbModelDataContext model = new Model.dbModelDataContext();

            try
            {
                var schedule = from ss in model.Student_schedules
                               where ss.current == true && ss.student_id == studentId
                               select new StudentSchedule
                               {
                                   ClassId = ss.Schedule.Class.id,
                                   ClassName = ss.Schedule.Class.name,
                                   Credits = Convert.ToInt32(ss.Schedule.Class.credits),
                                   GroupId = Convert.ToInt32(ss.Schedule.group_id),
                                   GroupName = ss.Schedule.Group.name,
                               };

                foreach (var s in schedule)
                {
                    Console.WriteLine(s);
                }
                               
                               //model.Student_schedules.Where(s => s.current.Equals(true) && s.student_id.Equals(studentId)).Select< model.Users.Where(u => u.email.ToLower().Equals(username) && u.password.Equals(password)).FirstOrDefault();

                
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
    }
}