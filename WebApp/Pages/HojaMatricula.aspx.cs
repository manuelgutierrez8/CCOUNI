using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.App_Code;

namespace WebApp.Pages
{
    public partial class HojaMatricula : System.Web.UI.Page
    {
        Model.Student student;
        List<StudentSchedule> studentSchedule;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                student = (Model.Student)Session["student"];
                studentSchedule = (List<StudentSchedule>)Session["scheduleList"];

                if (student != null && studentSchedule != null)
                {
                    Console.Write("stutent");
                }
                else
                {
                    Response.Redirect("../Login.aspx");
                }
            }
        }
    }
}