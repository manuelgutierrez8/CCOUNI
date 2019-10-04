using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.Pages
{
    public partial class Confirmacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) {
                tbSignedClasses.CssClass = "table table-striped table-responsive-sm signed-classes deleted";
            }
            //table.CssClass = "abc edf";
        }

        protected void btnConfirmClasses_Click(object sender, EventArgs e)
        {
            Response.Redirect("HojaMatricula.aspx", true);
        }
    }
}