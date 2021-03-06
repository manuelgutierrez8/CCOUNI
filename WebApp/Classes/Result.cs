﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApp.App_Code
{
    public enum ClassStatus { Inscrita = 4, Descartada = 5, DescartadaEstudiante = 6, AprobadaEstudiante = 7, Confirmada = 8 }

    public class Result
    {
        public bool Status { get; set; }
        public string Message { get; set; }
    }

    public class LoginResult : Result
    {
        public int UserId { get; set; }
        public int? RoleId { get; set; }
    }

    public class StudentSchedule
    {
        public int Id { get; set; }
        public int ClassId { get; set; }
        public string ClassName { get; set; }
        public int GroupId { get; set; }
        public string GroupName { get; set; }
        public int Credits { get; set; }
        public string ClassroomName { get; set; }
        public int statusId { get; set; }
        public string StatusName { get; set; }
    }

    public class GetCurrentScheduleResult : Result
    {
        public List<StudentSchedule> StudentScheduleList { get; set; }
    }

    public class StudentFiltered
    {
        public int StudentId { get; set; }
        public string StudentName { get; set; }
        public string License { get; set; }
        public int CareerId { get; set; }
        public string CareerName { get; set; }
        public int GroupId { get; set; }
        public string GroupName { get; set; }
    }

    public class GetStudentsByFilterResult : Result
    {
        public List<StudentFiltered> FilteredStudents { get; set; }
    }

    public class ConfirmedStudent
    {
        public int StudentId { get; set; }
        public string StudentName { get; set; }
        public string License { get; set; }
        public int CareerId { get; set; }
        public string CareerName { get; set; }
        public int GroupId { get; set; }
        public string GroupName { get; set; }
        public DateTime ConfirmationDate { get; set; }
        public int TeacherId { get; set; }
        public string TeacherName { get; set; }
    }

    public class TeacherReportRow
    {
        public int StudentId { get; set; }
        public string StudentName { get; set; }
        public string License { get; set; }
        public int CareerId { get; set; }
        public string CareerName { get; set; }
        public int GroupId { get; set; }
        public string GroupName { get; set; }
        public DateTime ConfirmationDate { get; set; }
        public int TeacherId { get; set; }
        public string TeacherName { get; set; }
        public int ClassId { get; set; }
        public string ClassName { get; set; }
    }

    public class GetConfirmedStudentReportResult : Result
    {
        public List<ConfirmedStudent> confirmedStudents { get; set; }
    }

    public class TeacherReportResult : Result
    {
        public List<TeacherReportRow> confirmedStudents { get; set; }
    }

    public class GetConfirmationPeriodResult : Result
    {
        public DateTime Start { get; set; }
        public DateTime End { get; set; }
        public string SemesterName { get; set; }
    }

}