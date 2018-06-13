<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GCadastro_servico.aspx.cs" Inherits="ProjectSolerun.Pages.GCadastro_servico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Serviço</title>

    <style>

    footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}

    </style>

</head>
<body>

    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" />
    <script src="../bootstrap/js/bootstrap.js"></script>
    <script src="../bootstrap/js/jquery-3.3.1.min.js"></script>

    <form id="form1" runat="server">
    <div>
        <center>
         <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
              
 <a class="navbar-brand" href="PaginaInicial.aspx">Solerun</a>
              
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
                </button>

  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="GCadastro_Fornecedor.aspx">Cadastro de Fornecedor</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="GCadastro_Cliente.aspx">Cadastro de Cliente</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="GCadastro_Funcionario.aspx">Cadastro de Funcionario</a>
      </li>  
        <li class="nav-item">
        <a class="nav-link" href="GCadastro_Produto.aspx">Cadastro de Produto</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="GCadastro_Codigo.aspx">Cadastro de Codigo</a>
      </li>          
        <li class="nav-item">
        <a class="nav-link" href="GCadastro_servico.aspx">Cadastro de Serviços</a>
      </li>          
    </ul>
  </div>  
</nav>
       
        <br />
        
        Nome do Serviço:<asp:TextBox ID="txtNomeServico" runat="server"></asp:TextBox>
        <br />
        Valor do Serviço:<asp:TextBox ID="txtValorServiço" runat="server"></asp:TextBox>
        <br />
        Tipo:
        <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
        <br />
        <br />
             
            <asp:Button ID="btnCadastroServico" Text="Cadastrar Serviço"  runat="server" OnClick="btnCadastroServico_Click"/>
        </center>
    </div>
    </form>
</body>
</html>
