<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GCadastro_Fornecedor.aspx.cs" Inherits="ProjectSolerun.Pages.GCadastro_Fornecedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Fornecedor</title>

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
           <br />
        <asp:Label ID="Label2" runat="server" Text="Selecione o Tipo de Fornecedor:"></asp:Label>
        <br />
        <asp:RadioButton ID="rbPF" Text="Pessoa Fisica" runat="server" OnCheckedChanged="rbPF_CheckedChanged"/>
&nbsp;&nbsp;
        <asp:RadioButton ID="rbPJ" Text="Pessoa Juridica" runat="server" OnCheckedChanged="rbPJ_CheckedChanged"/>
        <br />
         <label for="NomeCompleto" itemid="NomeCompleto">
           <br />
           <br />
           Nome Completo:</label>
            <asp:TextBox ID="txtNomeCompleto" columns="10" runat="server"></asp:TextBox>
        <br />
    <label for="RazaoSocial">Razão Social:</label>
            <asp:TextBox ID="txtRazaoSocial" columns="10" runat="server"></asp:TextBox>
           <br />             			
    <label for="CPF">CPF:</label>
            <asp:TextBox ID="txtCPF" columns="10" runat="server"></asp:TextBox>
                <br />
    <label for="CNPJ">CNPJ:</label>
            <asp:TextBox ID="txtCNPJ" columns="10" runat="server"></asp:TextBox>
                    <br />
    <label for="InscricaoEstadual">Inscrição Estadual:</label>
            <asp:TextBox ID="txtInscricaoEstadual" columns="10" runat="server"></asp:TextBox>
                         <br />
    <label for="Email">Email:</label>
            <asp:TextBox ID="txtEmail" columns="10" runat="server"></asp:TextBox>
                             <br />
    <label for="Telefone">Telefone:</label>
            <asp:TextBox ID="txtTelefone" columns="10" runat="server"></asp:TextBox>
                                <br />
    <label for="CEP">CEP:</label>
            <asp:TextBox ID="txtCEP" columns="10" runat="server"></asp:TextBox>
                                   <br />
    <label for="Logradouro">Logradouro:</label>
            <asp:TextBox ID="txtLogradouro" columns="10" runat="server"></asp:TextBox>
                                        <br />
    <label for="Endereco">Endereço:</label>
            <asp:TextBox ID="txtEndereco" columns="10" runat="server"></asp:TextBox>
                                            <br />
    <label for="Numero">Número:</label>
            <asp:TextBox ID="txtNumero" columns="10" runat="server"></asp:TextBox>
                                               <br />
    <label for="Completemento">Completemento:</label>
            <asp:TextBox ID="txtComplemento" columns="10" runat="server"></asp:TextBox>
                                                    <br />
           Cidade:<asp:TextBox ID="txtCidade" columns="10" runat="server"></asp:TextBox>
                                                    <br />
           <br />
           <asp:Button ID="btnCadasFornecedor" runat="server" OnClick="Button1_Click" Text="Cadastrar Fornecedor" />
                                                    <br />
    </div>
    </div>
    </form>
</body>
</html>
