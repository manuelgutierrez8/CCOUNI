﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

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
    }
}