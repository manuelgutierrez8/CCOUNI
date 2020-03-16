using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.App_Code;

namespace WebApp.MasterPages
{
    public partial class Dean : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetMenuItems();
        }

        private void SetMenuItems()
        {
            List<MenuOption> itemList = new List<MenuOption>();

            /*MenuOption option2 = new MenuOption();
            option2.Title = "Solicitud Asignaturas";
            option2.Url = "./RevisionSolicitud.aspx";
            itemList.Add(option2);*/

            MenuOption option1 = new MenuOption();
            option1.Title = "Reportes";
            option1.Url = "./Reportes.aspx";
            itemList.Add(option1);

            rptMenu.DataSource = itemList;
            rptMenu.DataBind();
        }

        public string SetActiveClass(string path)
        {
            string currentPage = Request.Url.Segments.Last();

            if (path.Contains(currentPage))
            {
                return "active";
            }

            return "";
        }
    }
}