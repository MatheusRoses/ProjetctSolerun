<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaInicial.aspx.cs" Inherits="ProjectSolerun.Pages.PaginaInicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paginal Inicial</title>

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
</body>
          
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
              
 <a class="navbar-brand" href="PaginaInicial.aspx">Solerun</a>
              
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
                </button>

  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="GEstoque.aspx">Gestão de Estoque</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="GCadastro.aspx">Gestão de Cadastros</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="GPerformance2.aspx">Gestão de Performance</a>
      </li>  
        <li class="nav-item">
        <a class="nav-link" href="GEntregas.aspx">Gestão de Entregas</a>
      </li>   
    </ul>
  </div>  
</nav>

    <div class="container">
  
</div>
</html>
