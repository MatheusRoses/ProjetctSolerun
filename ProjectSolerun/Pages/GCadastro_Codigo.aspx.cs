using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace ProjectSolerun.Pages
{
    public partial class GCadastro_Codigo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCadastroCodigo_Click(object sender, EventArgs e)
        {
            
            {
                try
                {
                    string conectarDB = "Persist Security Info=false;server=den1.mysql2.gear.host;database=dbcervsolerun;uid=dbcervsolerun;pwd=Zx8Z_0?08oTu";
                    MySqlConnection conectar = new MySqlConnection(conectarDB);

                    MySqlCommand command = new MySqlCommand("INSERT INTO solerun_codigo (Codigo,CodigoNome,CodigoGroup)"
                        + "VALUES ('" + txtCodigo.Text + "','" + txtNomeProduto.Text + "','" + txtSubgrupo.Text + "')", conectar);
                    conectar.Open();
                    command.ExecuteNonQuery();
                                       
                    Console.Write("Conexao aberta");
                   

                }
                catch (Exception erro)
                {
                    String message = string.Format("Message: {0}\\n\\n", erro.Message);
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(\"" + message + "\");", true);
                }
            }
        }

        protected void btnPaginaAnterior_Click(object sender, EventArgs e)
        {
            Response.Redirect("GCadastro.aspx");
        }
    }
}
