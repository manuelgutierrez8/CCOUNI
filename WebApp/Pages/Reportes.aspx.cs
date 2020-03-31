using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Classes;
using WebApp.App_Code;
using System.Text;

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

        #region FIRST REPORT, CONFIRMATION 
        protected void linkReport1_Click(object sender, EventArgs e)
        {
            mvReports.ActiveViewIndex = 1;
        }

        protected void btnGenerateConfirmationReport_Click(object sender, EventArgs e)
        {

            GetConfirmedStudentReportResult result = Classes.Confirmacion.GetConfirmedStudentReport(2);
            if (result.confirmedStudents.Count > 0)
            {
                Session["confirmedStudents"] = result.confirmedStudents;
                btnDownloadConfirmationReport.Visible = true;
                btnPrintConfirmationReport.Visible = true;
                rptStudents.DataSource = result.confirmedStudents;
                rptStudents.DataBind();
            }

        }

        protected void btnCancelConfirmationReport_Click(object sender, EventArgs e)
        {
            mvReports.ActiveViewIndex = 0;
        }

        protected void DownloadGenerateConfirmationReport_Click(object sender, EventArgs e)
        {
            StringBuilder builder = new StringBuilder();
            List<string> columnNames = new List<string>();
            List<string> rows = new List<string>();

            List<ConfirmedStudent> confirmedStudents = (List<ConfirmedStudent>)Session["confirmedStudents"];

            columnNames.Add("Nombre");
            columnNames.Add("Carrera");
            columnNames.Add("Carnet");
            columnNames.Add("Grupo");
            columnNames.Add("Fecha");

            foreach (ConfirmedStudent student in confirmedStudents)
            {
                List<string> currentRow = new List<string>();

                currentRow.Add(student.StudentName);
                currentRow.Add(student.CareerName);
                currentRow.Add(student.License);
                currentRow.Add(student.GroupName);
                currentRow.Add(student.ConfirmationDate.ToString("dd/MM/yyyy"));

                rows.Add(string.Join(",", currentRow.ToArray()));
            }

            builder.Append(string.Join(",", columnNames.ToArray())).Append("\n");

            builder.Append(string.Join("\n", rows.ToArray()));

            Response.Clear();
            Response.ContentType = "text/csv";
            Response.AddHeader("Content-Disposition", "attachment;filename=confirmados.csv");
            Response.Write(builder.ToString());
            Response.End();
        }
        #endregion

        #region SECOND REPORT, TEACHERS
        protected void linkReport2_Click(object sender, EventArgs e)
        {
            mvReports.ActiveViewIndex = 2;
            ddlTeacherName.SelectedValue = "1";
            ddlClassName.SelectedValue = "5";
        }

        protected void btnGenerateTeacherReport_Click(object sender, EventArgs e)
        {
            int selectedTeacher = Convert.ToInt32(ddlTeacherName.SelectedValue);
            int selectedClasss = Convert.ToInt32(ddlClassName.SelectedValue);

            TeacherReportResult result = Classes.Confirmacion.GetTeacherReport(2, selectedTeacher, selectedClasss);

            if (result.confirmedStudents.Count > 0)
            {
                result.confirmedStudents = result.confirmedStudents;

                Session["teacherReport"] = result.confirmedStudents;
                DownloadTeacherReport.Visible = true;
                btnPrintTeacherReport.Visible = true;
                lbNoDataTeacherReport.Visible = false;
                rptTeacherReport.DataSource = result.confirmedStudents;
                rptTeacherReport.DataBind();
            }
            else
            {
                lbNoDataTeacherReport.Visible = true;
            }

        }

        protected void btnCancelTeacherReport_Click(object sender, EventArgs e)
        {
            mvReports.ActiveViewIndex = 0;
        }

        protected void DownloadTeacherReport_Click(object sender, EventArgs e)
        {
            StringBuilder builder = new StringBuilder();
            List<string> columnNames = new List<string>();
            List<string> rows = new List<string>();

            List<TeacherReportRow> confirmedStudents = (List<TeacherReportRow>)Session["teacherReport"];

            columnNames.Add("Nombre");
            columnNames.Add("Carrera");
            columnNames.Add("Carnet");
            columnNames.Add("Grupo");
            columnNames.Add("Docente");

            foreach (TeacherReportRow student in confirmedStudents)
            {
                List<string> currentRow = new List<string>();

                currentRow.Add(student.StudentName);
                currentRow.Add(student.CareerName);
                currentRow.Add(student.License);
                currentRow.Add(student.GroupName);
                currentRow.Add(student.TeacherName);

                rows.Add(string.Join(",", currentRow.ToArray()));
            }

            builder.Append(string.Join(",", columnNames.ToArray())).Append("\n");

            builder.Append(string.Join("\n", rows.ToArray()));

            Response.Clear();
            Response.ContentType = "text/csv";
            Response.AddHeader("Content-Disposition", "attachment;filename=confirmados.csv");
            Response.Write(builder.ToString());
            Response.End();
        }

        #endregion

        protected void ddlTeacherName_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (ddlTeacherName.SelectedValue)
            {
                case "1":
                    ddlClassName.SelectedValue = "5";
                    break;
                case "2":
                    ddlClassName.SelectedValue = "6";
                    break;
                case "3":
                    ddlClassName.SelectedValue = "7";
                    break;
                case "4":
                    ddlClassName.SelectedValue = "8";
                    break;
                case "5":
                    ddlClassName.SelectedValue = "9";
                    break;
            }
        }
    }
}