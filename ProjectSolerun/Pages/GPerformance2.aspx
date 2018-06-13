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

    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    </div>
       
</body>
</html>
    <br />
    <br />
    Informe o Codigo do Produto:
     <asp:TextBox ID="txtCodigo" columns="10" runat="server"></asp:TextBox>
    <asp:Button ID="btnCodigoFiltro" runat="server" Text="Filtrar" OnClick="btnCodigoFiltro_Click" />
    <br />
    Informe o Cidade:
    <asp:TextBox ID="txtCidade" columns="10" runat="server"></asp:TextBox>
    <asp:Button ID="btnCidadeFiltro" runat="server" Text="Filtrar" />
    <br />
    Informe o Cliente:
    <asp:TextBox ID="txtCliente" columns="10" runat="server"></asp:TextBox>
    <asp:Button ID="btnClienteFiltro" runat="server" Text="Filtrar" />
    &nbsp;&nbsp;&nbsp;<br />
    Periodo de Venda:
    <asp:TextBox ID="txtCliente0" columns="10" runat="server"></asp:TextBox>
    &nbsp;ate
    <asp:TextBox ID="txtCliente1" columns="10" runat="server"></asp:TextBox>
    &nbsp;<asp:Button ID="btnClienteFiltro0" runat="server" Text="Filtrar" />
    &nbsp;
<br />
    </form>
