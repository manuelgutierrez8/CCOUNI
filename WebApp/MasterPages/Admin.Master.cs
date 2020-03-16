using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.App_Code;

namespace WebApp.MasterPages
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetMenuItems();
        }

        private void SetMenuItems()
        {
            List<MenuOption> itemList = new List<MenuOption>();

            MenuOption option2 = new MenuOption();
            option2.Title = "Busqueda";
            option2.Url = "./Busqueda.aspx";
            itemList.Add(option2);

            //MenuOption option1 = new MenuOption();
            //option1.Title = "Confirmación";
            //option1.Url = "./Confirmacion.aspx";
            //itemList.Add(option1);

            MenuOption option3 = new MenuOption();
            option3.Title = "Reportes";
            option3.Url = "./Reportes.aspx";
            itemList.Add(option3);


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