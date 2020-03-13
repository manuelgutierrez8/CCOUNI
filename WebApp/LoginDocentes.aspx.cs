using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.App_Code;

namespace WebApp
{
    public partial class LoginDocentes : System.Web.UI.Page
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

                //Encrypt Password
                string encryptedPassword = App_Code.Utils.EncryptMD5(password);

                LoginResult result = Auth.Login(email, encryptedPassword);

                if (result.Status)
                {
                    int roleId = Convert.ToInt32(result.RoleId);
                    Session["userId"] = result.UserId;

                    Response.Redirect(Auth.SetStartPage(roleId));
                }
                else
                {
                    lbMessage.Text = result.Message;
                }

                /*if (email == "manuel@test.com" && encryptedPassword == "96917805fd060e3766a9a1b834639d35")
                {
                    Response.Redirect("./Pages/Confirmacion.aspx");
                }
                else if (email == "secretaria@fec.uni.edu.ni" && encryptedPassword == "96917805fd060e3766a9a1b834639d35")
                {
                    Response.Redirect("./Pages/Busqueda.aspx");
                }
                else
                {
                    
                }*/
            }
        }
    }
}