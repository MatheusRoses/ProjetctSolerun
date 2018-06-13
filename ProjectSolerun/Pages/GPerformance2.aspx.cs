using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using Microsoft.Reporting.WebForms;
using System.Data;

namespace ProjectSolerun.Pages
{
    public partial class GPerformance2 : System.Web.UI.Page
    {
        private object gvClientes;

        protected void Page_Load(object sender, EventArgs e)
        {
          //  ReportVendas.Visible = false;
        }

          private void CarregaRelatorio()

          {
      
            String sqlQuery = "SELECT Cidade,sum(if (month(data) = '01', QuantidadeSaida, 0)) as Janeiro,sum(if (month(data) = '02', QuantidadeSaida, 0)) as Fevereiro,sum(if (month(data) = '03', QuantidadeSaida, 0)) as Março,sum(if (month(data) = '04', QuantidadeSaida, 0)) as Abril,sum(if (month(data) = '05', QuantidadeSaida, 0)) as Maio,sum(if (month(data) = '06', QuantidadeSaida, 0)) as Junho,sum(if (month(data) = '07', QuantidadeSaida, 0)) as Julho,sum(if (month(data) = '08', QuantidadeSaida, 0)) as Agosto,sum(if (month(data) = '09', QuantidadeSaida, 0)) as Setembro,sum(if (month(data) = '10', QuantidadeSaida, 0)) as Outubro,sum(if (month(data) = '11', QuantidadeSaida, 0)) as Novembro,sum(if (month(data) = '12', QuantidadeSaida, 0)) as Dezembro,sum(ValorTotal) as ValorTotal,sum(quantidadeLitragem) as Litros,count(QuantidadeSaida) as TotalVendas,round((count(*) / (select count(*) from dbcerv_solerun.solerun_saidaproduto) * 100),2) as '%' from dbcerv_solerun.solerun_saidaproduto group by cidade order by ValorTotal desc;";
            String conexao = "Persist Security Info=false;server=den1.mysql2.gear.host;database=dbcervsolerun;uid=dbcervsolerun;pwd=Zx8Z_0?08oTu";

            MySqlConnection objConexao = new
            MySqlConnection(conexao);

            MySqlDataAdapter objAdapter = new MySqlDataAdapter();
            objAdapter.SelectCommand = new MySqlCommand(sqlQuery, objConexao);

            DataSet dSet = new DataSet();

            objAdapter.Fill(dSet);

            dSet.Dispose();
            objAdapter.Dispose();
            objConexao.Close();
            objConexao.Dispose();
        }

        protected void btnCodigoFiltro_Click(object sender, EventArgs e)
        {
            
        }
    }
}
