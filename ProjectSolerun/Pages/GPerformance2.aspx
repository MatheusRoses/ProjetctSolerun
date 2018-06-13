<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPerformance2.aspx.cs" Inherits="ProjectSolerun.Pages.GPerformance2" debug ="true" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gestão de Performance</title>
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

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
              
 <a class="navbar-brand" href="PaginaInicial.aspx">Solerun</a>
              
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
                </button>

  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="reportMensalCidade.aspx">Relatorio Mensal</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="reportAnualCidade.aspx">Relatorio Anual</a>
      </li>
      
    </ul>
  </div>  
</nav>

    <form id="form1" runat="server" visible="True">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    </div>
       
</body>
</html>
    <br />
    Informe o Filtro (Codigo ou Cliente or Cidade):
     <asp:TextBox ID="txtFiltrar" columns="10" runat="server"></asp:TextBox>
      
    <input type="submit" id="btnSubmeter" value="Filtrar" runat="server" />
<br />
<div style="clear:both;padding:10px 0;">
    <label id="info" runat="server"></label>
</div>
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idSolerun_saidaProduto" DataSourceID="SqlDataSource1" OnRowCreated="GridView1_RowCreated" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="idSolerun_saidaProduto" HeaderText="Codigo de Saida" InsertVisible="False" ReadOnly="True" SortExpression="idSolerun_saidaProduto" />
            <asp:BoundField DataField="NomeFuncionario" HeaderText="Nome Funcionario" SortExpression="NomeFuncionario" />
            <asp:BoundField DataField="NotaFiscal" HeaderText="Nota Fiscal" SortExpression="NotaFiscal" />
            <asp:BoundField DataField="NomeProduto" HeaderText="Nome do Produto" SortExpression="NomeProduto" />
            <asp:BoundField DataField="Descricao" HeaderText="Descriço" SortExpression="Descricao" />
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
            <asp:BoundField DataField="Cliente" HeaderText="Cliente" SortExpression="Cliente" />
            <asp:BoundField DataField="Litragem" HeaderText="Litragem" SortExpression="Litragem" />
            <asp:BoundField DataField="QuantidadeSaida" HeaderText="Quantidade p/ Saida" SortExpression="QuantidadeSaida" />
            <asp:BoundField DataField="ValorIndividual" HeaderText="Valor Individual" SortExpression="ValorIndividual" />
            <asp:BoundField DataField="ValorTotal" HeaderText="ValorTotal" SortExpression="ValorTotal" />
            <asp:BoundField DataField="DescontoFuncionario" HeaderText="Desconto p/ Funcionario" SortExpression="DescontoFuncionario" />
            <asp:BoundField DataField="Desconto" HeaderText="Desconto" SortExpression="Desconto" />
            <asp:BoundField DataField="ValorDesconto" HeaderText="Valor do Desconto" SortExpression="ValorDesconto" />
            <asp:BoundField DataField="Cidade" HeaderText="Cidade" SortExpression="Cidade" />
            <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
            <asp:BoundField DataField="data" HeaderText="Data" SortExpression="data" />
            <asp:BoundField DataField="quantidadeLitragem" HeaderText="Quantidade p/ Litragem" SortExpression="quantidadeLitragem" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcerv_solerunConnectionString %>" ProviderName="<%$ ConnectionStrings:dbcerv_solerunConnectionString.ProviderName %>" 
        SelectCommand="SELECT idSolerun_saidaProduto, NomeFuncionario, NotaFiscal, NomeProduto, Descricao, Codigo, Cliente, Litragem, QuantidadeSaida, ValorIndividual, ValorTotal, DescontoFuncionario, Desconto, ValorDesconto, Cidade, Telefone, data, quantidadeLitragem FROM solerun_saidaproduto" 
     FilterExpression="(CONVERT(Codigo, 'System.String') like '%{0}%') or ([Cidade] LIKE '%{0}%') or ([Cliente] LIKE '%{0}%')">
        
        <FilterParameters>  
     <asp:ControlParameter Name="Filtar" ControlID="txtFiltrar" PropertyName="Text" />            
</FilterParameters>
    </asp:SqlDataSource>
    </form>
