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
    public partial class PeriodoVencido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetConfirmationPeriodResult result = Classes.Confirmacion.GetConfirmationPeriod(Classes.Confirmacion.GetCurrentSemester().id);

            lbMessage.Text = string.Format("El periodo de confirmación del {2} esta definido entre " +
                                    "{0:dd/MM/yyyy} y {1:dd/MM/yyyy}", result.Start, result.End, result.SemesterName);
        }
    }
}