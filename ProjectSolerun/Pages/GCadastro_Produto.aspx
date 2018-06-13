<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GCadastro_Produto.aspx.cs" Inherits="ProjectSolerun.GCadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Produto</title>

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
        <center>
            <label for="Nome">Nome:</label>
            <asp:TextBox ID="txtNome" columns="10" runat="server"></asp:TextBox>
        <p>
            <label for="Codigo">Codigo:</label>
             <asp:TextBox ID="txtCodigo" columns="10" runat="server"></asp:TextBox>
        <p>
            <label for="TipoProduto">Tipo do Produto:</label>
            <asp:TextBox ID="txtTipoProduto" columns="10" runat="server"></asp:TextBox>
        <p>
            <label for="Quantidade">Quantidade:</label>
            <asp:TextBox ID="txtQuantidade" columns="10" runat="server"></asp:TextBox>
        <p>
            <label for="Litragem">Litragem:</label>
            <asp:TextBox ID="txtLitragem" columns="10" runat="server"></asp:TextBox>
        <p>
            <label for="ValorCusto">Valor de Custo:</label>
            <asp:TextBox ID="txtCusto" columns="10" runat="server"></asp:TextBox>
        <p>
           <label for="ValorVenda">Valor de Venda:</label>
            <asp:TextBox ID="txtVenda" columns="10" runat="server"></asp:TextBox>
         <p>
             
            <asp:Button ID="btnCadastroProduto" Text="Cadastrar Produto"  runat="server" OnClientClick="return confirm('Cadastro Concluido')" OnClick="btnCadastroProduto_Click"/>
            <p>
             
                Codigos dos Produtos<div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                        <asp:BoundField DataField="CodigoNome" HeaderText="Descrição" SortExpression="CodigoNome" />
                        <asp:BoundField DataField="CodigoGroup" HeaderText="Codigo do Grupo" SortExpression="CodigoGroup" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcerv_solerunConnectionString %>" ProviderName="<%$ ConnectionStrings:dbcerv_solerunConnectionString.ProviderName %>" SelectCommand="SELECT Codigo, CodigoNome, CodigoGroup FROM solerun_codigo"></asp:SqlDataSource>
                <br />
            </div>
            <p>
             
                &nbsp;</center>
    </div>
    </form>
</body>
</html>
