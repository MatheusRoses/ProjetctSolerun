using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectSolerun.Pages
{
    public partial class GCadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  txtUsuario.Text = Session["UserName"].ToString();
        }

        protected void btnPaginaAnterior_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaginaInicial.aspx");
        }
    }
}