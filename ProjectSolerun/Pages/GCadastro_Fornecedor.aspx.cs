using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace ProjectSolerun.Pages
{
    public partial class GCadastro_Fornecedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void rbPF_CheckedChanged(object sender, EventArgs e)
        {
            if (rbPF.Checked == true)
            {                
                txtCPF.Visible = true;
                txtNomeCompleto.Visible = true;
            }
            else
            {
                txtCNPJ.Visible = false;
                txtInscricaoEstadual.Visible = false;
                txtRazaoSocial.Visible = false;
            }
        }

        protected void rbPJ_CheckedChanged(object sender, EventArgs e)
        {
            if (rbPJ.Checked == true)
            {
                txtCNPJ.Visible = true;
                txtInscricaoEstadual.Visible = true;
                txtRazaoSocial.Visible = true;
            } else
            {
                txtCPF.Visible = false;
                txtNomeCompleto.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string conectarDB = "Persist Security Info=false;server=den1.mysql2.gear.host;database=dbcervsolerun;uid=dbcervsolerun;pwd=Zx8Z_0?08oTu";
                MySqlConnection conectar = new MySqlConnection(conectarDB);
                MySqlCommand command = new MySqlCommand("INSERT INTO solerun_fornecedores (Solerun_NomeCompleto,Solerun_RazaoSocial,Solerun_CPF,Solerun_CNPJ, Solerun_Email, Solerun_Telefone, Solerun_CEP, Solerun_Endereco, Solerun_Numero, Solerun_Complemento, Solerun_Cidade, Solerun_InscricaoEstadual)"
                                    + "VALUES ('" + txtNomeCompleto.Text + "','" + txtRazaoSocial.Text + "','" + txtCEP.Text + "','" + txtCNPJ.Text + "','" + txtEmail.Text + "','"+ txtTelefone.Text + "','" + txtCEP.Text + "','" + txtEndereco.Text + "','" + txtNumero.Text + "','" + txtComplemento.Text + "','" + txtCidade.Text + "','" + txtInscricaoEstadual.Text + "')", conectar);
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
        protected void btnPaginaAnterior_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaginaInicial.aspx");
        }

        //  txtCNPJ.Visible = false;
        //  txtInscricaoEstadual.Visible = false;
        // txtRazaoSocial.Visible = false;

        //txtCPF.Visible = false;
        //txtNomeCompleto.Visible = false;

    }
}