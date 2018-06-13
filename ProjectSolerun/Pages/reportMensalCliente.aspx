<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reportMensalCliente.aspx.cs" Inherits="ProjectSolerun.Pages.reportMensalCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Relatorio Mensal de Clientes</title>

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
        <a class="nav-link" href="GPerformance2.aspx">Gestão de Performance</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="reportMensalCidade.aspx">Relatorio Mensal Cidade</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="reportMensalProduto.aspx">Relatorio Mensal Produto</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="reportMensalCliente.aspx">Relatorio Mensal Cliente</a>
      </li>
        </ul>
</div>
         </nav>
    
    <form id="form1" runat="server">
        <center>
   Cliente
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="Cliente" HeaderText="Cliente" SortExpression="Cliente" />
            <asp:BoundField DataField="Janeiro" HeaderText="Janeiro" SortExpression="Janeiro" />
            <asp:BoundField DataField="Fevereiro" HeaderText="Fevereiro" SortExpression="Fevereiro" />
            <asp:BoundField DataField="Março" HeaderText="Março" SortExpression="Março" />
            <asp:BoundField DataField="Abril" HeaderText="Abril" SortExpression="Abril" />
            <asp:BoundField DataField="Maio" HeaderText="Maio" SortExpression="Maio" />
            <asp:BoundField DataField="Junho" HeaderText="Junho" SortExpression="Junho" />
            <asp:BoundField DataField="Julho" HeaderText="Julho" SortExpression="Julho" />
            <asp:BoundField DataField="Agosto" HeaderText="Agosto" SortExpression="Agosto" />
            <asp:BoundField DataField="Setembro" HeaderText="Setembro" SortExpression="Setembro" />
            <asp:BoundField DataField="Outubro" HeaderText="Outubro" SortExpression="Outubro" />
            <asp:BoundField DataField="Novembro" HeaderText="Novembro" SortExpression="Novembro" />
            <asp:BoundField DataField="Dezembro" HeaderText="Dezembro" SortExpression="Dezembro" />
            <asp:BoundField DataField="ValorTotal" HeaderText="ValorTotal" SortExpression="ValorTotal" />
            <asp:BoundField DataField="Litros" HeaderText="Litros" SortExpression="Litros" />
            <asp:BoundField DataField="TotalVendas" HeaderText="TotalVendas" SortExpression="TotalVendas" />
            <asp:BoundField DataField="%" HeaderText="%" SortExpression="%" />
        </Columns>

    </asp:GridView>
            </center>
        </form>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbcerv_solerunConnectionString %>" ProviderName="<%$ ConnectionStrings:dbcerv_solerunConnectionString.ProviderName %>" SelectCommand="SELECT Cliente,
sum(if( month(data) = '01', QuantidadeSaida, 0)) as Janeiro,
sum(if( month(data) = '02', QuantidadeSaida, 0)) as Fevereiro,
sum(if( month(data) = '03', QuantidadeSaida, 0)) as Março,
sum(if( month(data) = '04', QuantidadeSaida, 0)) as Abril,
sum(if( month(data) = '05', QuantidadeSaida, 0)) as Maio,
sum(if( month(data) = '06', QuantidadeSaida, 0)) as Junho,
sum(if( month(data) = '07', QuantidadeSaida, 0)) as Julho,
sum(if( month(data) = '08', QuantidadeSaida, 0)) as Agosto,
sum(if( month(data) = '09', QuantidadeSaida, 0)) as Setembro,
sum(if( month(data) = '10', QuantidadeSaida, 0)) as Outubro,
sum(if( month(data) = '11', QuantidadeSaida, 0)) as Novembro,
sum(if( month(data) = '12', QuantidadeSaida, 0)) as Dezembro,
sum(ValorTotal) as ValorTotal,
sum(quantidadeLitragem) as Litros,
count(QuantidadeSaida) as TotalVendas,
round((count(*) / (select count(*) from solerun_saidaproduto)*100),2) as '%'

 from solerun_saidaproduto group by Cliente order by ValorTotal desc;"></asp:SqlDataSource>
    
   
</body>
</html>
