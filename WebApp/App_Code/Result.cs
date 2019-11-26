using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApp.App_Code
{
    public class Result
    {
        public bool Status { get; set; }
        public string Message { get; set; }
    }

    public class LoginResult: Result
    {
        public int UserId { get; set; }
        public int? RoleId { get; set; }
    }

    public class StudentSchedule : Result
    {
        public int ClassId { get; set; }
        public string ClassName { get; set; }
        public int GroupId { get; set; }
        public string GroupName { get; set; }
        public int Credits { get; set; }
    }
}