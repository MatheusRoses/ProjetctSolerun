using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Collections;
using System.Data;

namespace ProjectSolerun
{
    public partial class GEstoque_Saida : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtData1.Visible = false;
            txtData2.Visible = false;
                       

         //   txtNomeFuncionario.Text = Session["UserName"].ToString();
            txtDataSaida.Text = DateTime.Now.ToShortDateString();
            txtData1.Text = DateTime.Now.ToShortDateString();
                        
        }

        protected void btnFinalizarVenda_Click(object sender, EventArgs e)
        {

            try
            {

                string conectarDB = "Persist Security Info=false;server=den1.mysql2.gear.host;database=dbcervsolerun;uid=dbcervsolerun;pwd=Zx8Z_0?08oTu";
                MySqlConnection conectar = new MySqlConnection(conectarDB);

                MySqlCommand command = new MySqlCommand("INSERT INTO solerun_saidaProduto (NomeFuncionario,NotaFiscal,NomeProduto,Descricao,Codigo,Cliente,Litragem,QuantidadeSaida,ValorIndividual,ValorTotal,DescontoFuncionario,Desconto,ValorDesconto, cidade, telefone, dataSaida, dataSaida1,quantidadeLitragem)"
                     + "VALUES ('" + txtNomeFuncionario.Text + "','" + txtNotaFiscal.Text + "','" + txtNomeProduto.Text + "','" + txtDescricao.Text + "','" + txtCodigo.Text + "','" + txtCliente.Text + "','" + txtLitros.Text + "','" + txtQuantidade.Text + "','" + txtValorIndividual.Text + "','" + txtValorTotal.Text + "','" + txtDescontoFunc.Text + "','" + txtDesconto.Text + "','" + txtValorDesconto.Text + "','" + txtCidade.Text + "','" + txtTelefone.Text + "','" + txtDataSaida.Text + "','" + txtData1.Text + "','" + txtQuantidadeLitros.Text + "')", conectar);

                conectar.Open();
                command.ExecuteNonQuery();
                IDataReader dr = command.ExecuteReader();

                if (dr.Read())
                {

                    String message = string.Format("Mensagem: Problema na baixa do Estoque'");
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(\"" + message + "\");", true);

                }
                else
                {
                    String message = string.Format("Mensagem: Baixa no Estoque Efetuada com Sucesso");
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(\"" + message + "\");", true);
                }

                Console.Write("Conexao aberta");

            }
            catch (Exception erro)
            {
                String message = string.Format("Message: {0}\\n\\n", erro.Message);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(\"" + message + "\");", true);
            }

            try
            {                
                string conectarDB = "Persist Security Info=false;server=localhost;database=dbcerv_solerun;uid=root;pwd=123456";
                MySqlConnection conectar = new MySqlConnection(conectarDB);

                MySqlCommand command = new MySqlCommand("INSERT INTO solerun_servicos (nomefuncionario,servico,valorservico,notafiscal)"
                     + "VALUES ('" + txtNomeFuncionarioEntrega.Text + "','" + txtNomeServiço.Text + "','" + txtValorServiço.Text + "','" + txtNotaFiscal.Text + "')", conectar);
                conectar.Open();
                command.ExecuteNonQuery();              
              
                Response.Redirect("GEstoque.aspx");

                Console.Write("Conexao aberta");

            }
            catch (Exception erro)
            {
                String message = string.Format("Message: {0}\\n\\n", erro.Message);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(\"" + message + "\");", true);
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNomeProduto.Text = GridView1.SelectedRow.Cells[1].Text;
            txtCodigo.Text = GridView1.SelectedRow.Cells[2].Text;
            txtValorIndividual.Text = GridView1.SelectedRow.Cells[4].Text;
            txtLitros.Text = GridView1.SelectedRow.Cells[5].Text;

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCliente.Text = GridView2.SelectedRow.Cells[2].Text;
            txtTelefone.Text = GridView2.SelectedRow.Cells[4].Text;
            txtCidade.Text = GridView2.SelectedRow.Cells[5].Text;
        }

        protected void btnPaginaAnterior_Click(object sender, EventArgs e)
        {
            Response.Redirect("GEstoque.aspx");
        }

        protected void txtQuantidade_TextChanged(object sender, EventArgs e)
        {
            txtQuantidadeLitros.Text = (Convert.ToDecimal(txtQuantidade.Text) * Convert.ToDecimal(txtLitros.Text)).ToString();
            txtValorTotal.Text = (Convert.ToDecimal(txtQuantidade.Text) * Convert.ToDecimal(txtValorIndividual.Text)).ToString();
        }

        protected void btnDesconto_Click(object sender, EventArgs e)
        {
            decimal percentual = 100;
            decimal valorDesconto = (Convert.ToDecimal(txtValorDesconto.Text));
            decimal valor = (Convert.ToDecimal(txtValorTotal.Text));
            decimal porcentagem = valor * valorDesconto / percentual; 
            
            txtDesconto.Text = (Convert.ToDecimal(txtValorTotal.Text) - porcentagem).ToString();
            
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNomeServiço.Text = GridView3.SelectedRow.Cells[2].Text;
            txtValorServiço.Text = GridView3.SelectedRow.Cells[3].Text;
        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNomeFuncionarioEntrega.Text = GridView4.SelectedRow.Cells[1].Text;
        }
    }
    }