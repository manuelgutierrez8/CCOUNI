using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Classes;
using WebApp.App_Code;

namespace WebApp.Pages
{
    public partial class Reportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                mvReports.ActiveViewIndex = 0;
            }
        }

        protected void linkReport1_Click(object sender, EventArgs e)
        {
            mvReports.ActiveViewIndex = 1;
        }

        protected void btnGenerateConfirmationReport_Click(object sender, EventArgs e)
        {

            GetConfirmedStudentReportResult result = Classes.Confirmacion.GetConfirmedStudentReport(2);
            if(result.confirmedStudents.Count > 0)
            {
                btnDownloadConfirmationReport.Visible = true;
                rptStudents.DataSource = result.confirmedStudents;
                rptStudents.DataBind();
            }

        }

        protected void DownloadGenerateConfirmationReport_Click(object sender, EventArgs e)
        {

            Page.Response.Redirect("../Assets/confirmados.csv");

        }
        
    }
}