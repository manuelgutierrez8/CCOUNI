using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApp.App_Code
{
    public static class Auth
    {
        public enum Role { Admin = 1, Student = 2, Secretary = 3, Authority = 4 }

        public static LoginResult Login(string username, string password)
        {
            LoginResult result = new LoginResult();

            Model.dbModelDataContext model = new Model.dbModelDataContext();

            try
            {
                var user = model.Users.Where(u => u.email.ToLower().Equals(username) && u.password.Equals(password)).FirstOrDefault();

                if (user == null)
                {
                    result.Message = "Combinación de usuario y contraseña invalida";
                    result.Status = false;
                    result.RoleId = 0;
                    result.UserId = 0;
                }
                else
                {
                    result.Message = "Usuario Encontrado";
                    result.Status = true;
                    result.RoleId = user.id_role;
                    result.UserId = user.id;
                }
            }
            catch (Exception ex)
            {
                result.Message = ex.Message;
                result.Status = false;
                result.RoleId = 0;
                result.UserId = 0;
            }

            return result;
        }

        public static string SetStartPage(int roleId)
        {
            string url = "";

            switch (roleId)
            {
                case 1:
                    //Admin
                    url = "./Pages/Busqueda.aspx";
                    break;
                case 2:
                    //Student
                    url = "./Pages/Confirmacion.aspx";
                    break;
                case 3:
                    //Dean
                    url = "./Pages/RevisionSolicitud.aspx";
                    break;
                default:
                    url = string.Empty;
                    break;
            }

            return url;
        }
    }
}