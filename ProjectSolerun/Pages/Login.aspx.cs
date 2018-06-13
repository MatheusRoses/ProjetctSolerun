using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace ProjectSolerun
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            try
            {
                string conectarDB = "Persist Security Info=false;server=den1.mysql2.gear.host;database=dbcervsolerun;uid=dbcervsolerun;pwd=Zx8Z_0?08oTu";
                MySqlConnection conectar = new MySqlConnection(conectarDB);

                MySqlCommand command = new MySqlCommand("select Usuario, Senha from solerun_funcionario WHERE Usuario ='" + txtLogin.Text + "'AND Senha='" + txtSenha.Text + "';" , conectar);
                conectar.Open();
                command.ExecuteNonQuery();
                IDataReader dr = command.ExecuteReader();
                if (dr.Read())
                {
                    String message = string.Format("Mensagem: Seja Bem-Vindo'" + txtLogin.Text + '"');
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(\"" + message + "\");", true);
                    Session["UserName"] = txtLogin.Text;
                    Response.Redirect("PaginaInicial.aspx");
                } else
                {
                    String message = string.Format("Mensagem: Usuario não esta cadastrado ou Senha Incorreta");
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(\"" + message + "\");", true);
                }
            }
            catch (Exception erro)
            {
                String message = string.Format("Message: {0}\\n\\n", erro.Message);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(\"" + message + "\");", true);
            }
        }
     }
    }
   