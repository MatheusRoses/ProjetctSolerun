<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reportAnualCidade.aspx.cs" Inherits="ProjectSolerun.Pages.reportAnualCidade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Relatorio Anual por Cidade</title>
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
       <ul class="navbar-nav">
        <li class="nav-item">
        <a class="nav-link" href="GPerformance2.aspx">Gestão de Performance</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="reportAnualCidade.aspx">Relatorio Anual Cidade</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="reportAnualProduto.aspx">Relatorio Anual Produto</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="reportAnualCliente.aspx">Relatorio Anual Cliente</a>
      </li>

        </ul>
</div>
    </nav>
    <form id="form1" runat="server">
        <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Cidade" HeaderText="Cidade" SortExpression="Cidade" />
            <asp:BoundField DataField="2012" HeaderText="2012" SortExpression="2012" />
            <asp:BoundField DataField="2013" HeaderText="2013" SortExpression="2013" />
            <asp:BoundField DataField="2014" HeaderText="2014" SortExpression="2014" />
            <asp:BoundField DataField="2015" HeaderText="2015" SortExpression="2015" />
            <asp:BoundField DataField="2016" HeaderText="2016" SortExpression="2016" />
            <asp:BoundField DataField="2017" HeaderText="2017" SortExpression="2017" />
            <asp:BoundField DataField="2018" HeaderText="2018" SortExpression="2018" />
            <asp:BoundField DataField="2019" HeaderText="2019" SortExpression="2019" />
            <asp:BoundField DataField="2020" HeaderText="2020" SortExpression="2020" />
            <asp:BoundField DataField="2021" HeaderText="2021" SortExpression="2021" />
            <asp:BoundField DataField="2022" HeaderText="2022" SortExpression="2022" />
            <asp:BoundField DataField="2023" HeaderText="2023" SortExpression="2023" />
            <asp:BoundField DataField="ValorTotal" HeaderText="ValorTotal" SortExpression="ValorTotal" />
            <asp:BoundField DataField="Litros" HeaderText="Litros" SortExpression="Litros" />
            <asp:BoundField DataField="TotalVendas" HeaderText="TotalVendas" SortExpression="TotalVendas" />
            <asp:BoundField DataField="%" HeaderText="%" SortExpression="%" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcerv_solerunConnectionString %>" ProviderName="<%$ ConnectionStrings:dbcerv_solerunConnectionString.ProviderName %>" SelectCommand="SELECT Cidade,
sum(if( year(data) = '2012', QuantidadeSaida, 0)) as '2012',
sum(if( year(data) = '2013', QuantidadeSaida, 0)) as '2013',
sum(if( year(data) = '2014', QuantidadeSaida, 0)) as '2014',
sum(if( year(data) = '2015', QuantidadeSaida, 0)) as '2015',
sum(if( year(data) = '2016', QuantidadeSaida, 0)) as '2016',
sum(if( year(data) = '2017', QuantidadeSaida, 0)) as '2017',
sum(if( year(data) = '2018', QuantidadeSaida, 0)) as '2018',
sum(if( year(data) = '2019', QuantidadeSaida, 0)) as '2019',
sum(if( year(data) = '2020', QuantidadeSaida, 0)) as '2020',
sum(if( year(data) = '2021', QuantidadeSaida, 0)) as '2021',
sum(if( year(data) = '2022', QuantidadeSaida, 0)) as '2022',
sum(if( year(data) = '2023', QuantidadeSaida, 0)) as '2023',
sum(ValorTotal) as ValorTotal,
sum(quantidadeLitragem) as Litros,
count(QuantidadeSaida) as TotalVendas,
round((count(*) / (select count(*) from solerun_saidaproduto)*100),2) as '%'

 from solerun_saidaproduto group by Cidade order by ValorTotal desc;"></asp:SqlDataSource>
            </center>
         </form>
</body>
</html>
