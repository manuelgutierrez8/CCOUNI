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
}