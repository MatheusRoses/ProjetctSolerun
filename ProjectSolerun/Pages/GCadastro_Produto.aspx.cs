using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace ProjectSolerun
{
    public partial class GCadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void limparTodosTextbox(Control Controle)
        {
            foreach (Control ctle in Controle.Controls)
            {
                if (ctle is TextBox)
                {
                    ((TextBox)ctle).Text = string.Empty;
                } else if (ctle.Controls.Count>0)
                {
                    limparTodosTextbox(ctle);
                }
            }
        }

        protected void btnCadastroProduto_Click(object sender, EventArgs e)
        {
            try
            {
                string conectarDB = "Persist Security Info=false;server=den1.mysql2.gear.host;database=dbcervsolerun;uid=dbcervsolerun;pwd=Zx8Z_0?08oTu";
                MySqlConnection conectar = new MySqlConnection(conectarDB);

                MySqlCommand command = new MySqlCommand("INSERT INTO solerun_Produto (NomeProduto,Codigo,Descricao,Quantidade,ValorCusto,ValorVenda, Litragem)"
                     + "VALUES ('" + txtNome.Text + "','" + txtCodigo.Text + "','" + txtTipoProduto.Text + "','" + txtQuantidade.Text + "','" + txtCusto.Text + "','" + txtVenda.Text + "','" + txtLitragem.Text + "')", conectar);
                conectar.Open();
                command.ExecuteNonQuery();

                Console.Write("Conexao aberta");

                limparTodosTextbox(this);
            }
            catch (Exception erro)
            {
                String message = string.Format("Message: {0}\\n\\n", erro.Message);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(\"" + message + "\");", true);
            }
        }

        protected void btnPaginaAnterior_Click(object sender, EventArgs e)
        {
            Response.Redirect("GCadastro.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCodigo.Text = GridView1.SelectedRow.Cells[1].Text;
            txtTipoProduto.Text = GridView1.SelectedRow.Cells[2].Text;          
        }
    }
}