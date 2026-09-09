using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["AssessHubDB"].ToString()))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "spAcceso";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = cn;
            cmd.Parameters.AddWithValue("@usuario", Login1.UserName);
            cmd.Parameters.AddWithValue("@contraseña", Login1.Password);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Session["Usuario_username"] = reader.GetValue(0);
                    Session["Usuario_tipo"] = reader.GetValue(1);
                    Session["Candidato_id"] = reader.GetValue(2);
                    Session["Supervisor_id"] = reader.GetValue(3);
                    Session["NoExamen"] = "1";

                }
                e.Authenticated = true;

            }
            else
            {
                e.Authenticated = false;
                Response.Redirect("login.aspx");
            }

        }
    }

    protected void Login1_LoggedIn(object sender, EventArgs e)
    {
        int tipo = Convert.ToInt32(Session["Usuario_tipo"].ToString());
        if (tipo <= 2)
        {
            Response.Redirect("./Default.aspx");
        }
        else
        {
            Session["tiempo"] = 300;
            Response.Redirect("./pruebas/Default.aspx");
        }
    }

    
}