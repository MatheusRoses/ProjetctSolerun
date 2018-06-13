<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GCadastro_Funcionario.aspx.cs" Inherits="ProjectSolerun.Pages.GCadastro_Funcionario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Funcionario</title>

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
    <div>
        <label for="NomeFuncionario">Nome do Funcionario:</label>
            <asp:TextBox ID="txtNomeFuncionario" columns="10" runat="server"></asp:TextBox>
         <br />
            <label for="DataNascimento">Data de Nascimento:</label>
             <asp:TextBox ID="txtDtNascimento" columns="10" runat="server" ></asp:TextBox>
        <br />
            <label for="Telefone">Telefone:</label>
            <asp:TextBox ID="txtTelefone" columns="10" runat="server"></asp:TextBox>
         <br />
            <label for="Celular">Celular:</label>
            <asp:TextBox ID="txtCelular" columns="10" runat="server"></asp:TextBox>
        <br />
            <label for="Endereço">Endereço:</label>
            <asp:TextBox ID="txtEndereco" columns="10" runat="server"></asp:TextBox>
         <br />
            <label for="usuario">Usuario:</label>
            <asp:TextBox ID="txtUsuario" columns="10" runat="server"></asp:TextBox>
         <br />
           <label for="DataCriacao">Data de Criação do Usuario:</label>
            <asp:TextBox ID="txtDataCriacao" columns="10" runat="server"></asp:TextBox>
          <br />
        <label for="CPF">CPF:</label>
            <asp:TextBox ID="txtCPF" columns="10" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnCadasFunc" runat="server" OnClick="btnCadasFunc_Click" Text="Cadastrar Funcionario" />
          <br />
    </div>
    </form>
</body>
</html>
