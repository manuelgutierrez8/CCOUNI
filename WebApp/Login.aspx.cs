using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                txtUsername.Text = "";
                txtPassword.Text = "";
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string email = txtUsername.Text;
                string password = txtPassword.Text;

                string encryptedPassword = App_Code.Utils.EncryptMD5(password);

                if (email == "manuel@test.com" && encryptedPassword == "96917805fd060e3766a9a1b834639d35")
                {
                    Response.Redirect("./Pages/Confirmacion.aspx");
                }
                else {
                    lbMessage.Text = "Combinación de usuario y contraseña invalida";
                }
            }
        }
    }
}