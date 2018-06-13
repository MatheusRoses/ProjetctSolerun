<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GEstoque_Saida.aspx.cs" Inherits="ProjectSolerun.GEstoque_Saida" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <title></title>
       <style>
           footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}
          article {
   border-right: 1px solid gray;
    overflow: hidden;
    
}
div.container {
    width: 50%;
   border: 0px;
    float: right;
}
nav {
    margin: 0px;
    padding: 1em;
    
}
nav ul {
    list-style-type: none;
    padding: 0px;
}
   
nav ul a {
    text-decoration: none;
    width: 200px;
    height: 855px;
}
.clearfix {
    content: "";
    clear: both;
    display: table;
    width: 350px;
    height: 855px;
    
}
.column {
    float: none;
    padding: 0px;
}

       </style>
       </head>
      
  <body>     
      <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" />
      <script src="../bootstrap/js/bootstrap.js"></script>
      <script src="../bootstrap/js/jquery-3.3.1.min.js"></script> 
   <header>
          <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
         <a class="navbar-brand" href="PaginaInicial.aspx">Solerun</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
         <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
               <li class="nav-item">
                  <a class="nav-link" href="GEstoque_Entrada.aspx">Entrada de Estoque</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="GEstoque_Saida.aspx">Saida de Estoque</a>
               </li>                    
            </ul>   
         </div>
      </nav>
      </header>

<div class="container">
      <form id="form1"  runat="server">
          <center>
            Codigos dos Produtos
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" Height="16px" Width="100px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="NomeProduto" HeaderText="NomeProduto" SortExpression="NomeProduto" />
                            <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                            <asp:BoundField DataField="Quantidade" HeaderText="Quantidade" SortExpression="Quantidade" />
                            <asp:BoundField DataField="ValorVenda" HeaderText="ValorVenda" SortExpression="ValorVenda" />
                            <asp:BoundField DataField="Litragem" HeaderText="Litragem" SortExpression="Litragem" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
            Codigo dos Clientes
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-left: 24px" AllowPaging="True" DataKeyNames="idsolerun_clientes" Height="97px" Width="247px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="idsolerun_clientes" HeaderText="idsolerun_clientes" SortExpression="idsolerun_clientes" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="nomeCompleto" HeaderText="nomeCompleto" SortExpression="nomeCompleto" />
                            <asp:BoundField DataField="RazaoSocial" HeaderText="RazaoSocial" SortExpression="RazaoSocial" />
                            <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
                            <asp:BoundField DataField="Cidade" HeaderText="Cidade" SortExpression="Cidade" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
            Codigos dos Serviços
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Height="87px" Width="112px">
             <AlternatingRowStyle BackColor="White" />
               <Columns>
                  <asp:CommandField ShowSelectButton="True" />
                  <asp:BoundField DataField="nomes" HeaderText="nomes" SortExpression="nomes" />
                  <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
                  <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
               </Columns>
                <EditRowStyle BackColor="#2461BF" />
               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
               <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
               <SortedAscendingCellStyle BackColor="#F5F7FB" />
               <SortedAscendingHeaderStyle BackColor="#6D95E1" />
               <SortedDescendingCellStyle BackColor="#E9EBEF" />
               <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>              
            Entregadores
            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" Height="307px" Width="140px">
               <AlternatingRowStyle BackColor="White" />
               <Columns>
                  <asp:CommandField ShowSelectButton="True" />
                  <asp:BoundField DataField="nomefuncionario" HeaderText="nomefuncionario" SortExpression="nomefuncionario" />
               </Columns>
                <EditRowStyle BackColor="#2461BF" />
               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
               <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
               <SortedAscendingCellStyle BackColor="#F5F7FB" />
               <SortedAscendingHeaderStyle BackColor="#6D95E1" />
               <SortedDescendingCellStyle BackColor="#E9EBEF" />
               <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
           </center>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbcerv_solerunConnectionString %>" ProviderName="<%$ ConnectionStrings:dbcerv_solerunConnectionString.ProviderName %>" SelectCommand="Select idsolerun_clientes, nomeCompleto, RazaoSocial, Telefone, Cidade  from solerun_clientes"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcerv_solerunConnectionString %>" ProviderName="<%$ ConnectionStrings:dbcerv_solerunConnectionString.ProviderName %>" SelectCommand="select NomeProduto, Codigo, Quantidade, ValorVenda,Litragem from solerun_produto;"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbcerv_solerunConnectionString %>" ProviderName="<%$ ConnectionStrings:dbcerv_solerunConnectionString.ProviderName %>" SelectCommand="select nomes, valor, tipo from solerun_nomesservicos"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbcerv_solerunConnectionString %>" ProviderName="<%$ ConnectionStrings:dbcerv_solerunConnectionString.ProviderName %>" SelectCommand="select nomefuncionario from solerun_funcionario"></asp:SqlDataSource>
            
    </div>   
          <article>
            <div class="clearfix">
        <nav>
            <div class="column menu">
           <ul>
        Informações da Nota:
               <br />
          <li> Nome do Funcionario:
            <asp:TextBox ID="txtNomeFuncionario"  columns="10" runat="server" Width="100px"></asp:TextBox></li>
         <li> Nota Fiscal:
            <asp:TextBox ID="txtNotaFiscal"  columns="10" runat="server" Width="100px"></asp:TextBox></li>
         <li> Nome do Produto:
            <asp:TextBox ID="txtNomeProduto"  columns="10" runat="server" Width="100px"></asp:TextBox></li>
        <li>  Descrição:
            <asp:TextBox ID="txtDescricao"  columns="10" runat="server" Width="100px"></asp:TextBox></li>
         <li>  Cliente:
            <asp:TextBox ID="txtCliente"  columns="10" runat="server" Width="100px"></asp:TextBox></li>
            </ul>
                </div>
            <div class="column menu">
                <ul>
             Descontos
        <br />
         <li>  Nome do Funcionario:
            <asp:TextBox ID="txtDescontoFunc" columns="10" runat="server" Width="100px"></asp:TextBox></li>
          <li> Desconto:
            <asp:TextBox ID="txtDesconto"  columns="10" runat="server" Width="100px" Enabled="False"></asp:TextBox></li>
         <li>   Valor Desconto:
            <asp:TextBox ID="txtValorDesconto"  columns="10" runat="server" Width="100px"></asp:TextBox></li>
         <li>   Cidade:
            <asp:TextBox ID="txtCidade"  columns="10" runat="server" Width="100px"></asp:TextBox></li>
          <li>  Telefone:
            <asp:TextBox ID="txtTelefone"  columns="10" runat="server" Width="100px"></asp:TextBox></li>
         <li> Data:
            <asp:TextBox ID="txtDataSaida" columns="10" runat="server" Width="100px"></asp:TextBox>
            <asp:TextBox ID="txtData1"  columns="10" runat="server" Width="100px"></asp:TextBox>
            <asp:TextBox ID="txtData2"  columns="10" runat="server" Width="100px"></asp:TextBox>  </li>  
                    <li>   
               <asp:Button ID="btnDesconto" runat="server" OnClick="btnDesconto_Click" Text="Desconto" />
         <asp:Button ID="btnEntregas" runat="server" OnClick="btnDesconto_Click" Text="Entregas" />  
           </ul>
                    </div>
            <div class="column menu">
               <ul>
         Serviços
        <br />
            Nome do Funcionario:
           <li> <asp:TextBox ID="txtNomeFuncionarioEntrega" columns="10" runat="server" Width="100px"></asp:TextBox></li>
            Tipo de Serviço:
            <li><asp:TextBox ID="txtNomeServiço" columns="10" runat="server" Width="100px"></asp:TextBox></li>
            Valor do Serviço:
            <li><asp:TextBox ID="txtValorServiço" columns="10" runat="server" Width="100px"></asp:TextBox>
            
                   </li>
                  </ul>
                </div>
                
            <div class="column menu">
            Informe os Produtos:
                    <ul>
          <li> Codigo:
            <asp:TextBox ID="txtCodigo" class="form-control" columns="10" runat="server" Width="100px" Enabled="False"></asp:TextBox>   </li>     
           <li> Litros:
            <asp:TextBox ID="txtLitros" class="form-control" columns="10" runat="server" Width="100px" Enabled="False"></asp:TextBox> </li>        
        <li>  Quantidade:
            <asp:TextBox ID="txtQuantidade" columns="10" runat="server" Width="100px" OnTextChanged="txtQuantidade_TextChanged"></asp:TextBox></li>
         <li>  Quantidade P/ Litros:
            <asp:TextBox ID="txtQuantidadeLitros" class="form-control" columns="10" runat="server" Width="100px" Enabled="False" ></asp:TextBox>  </li>       
         <li>   Valor Individual:
            <asp:TextBox ID="txtValorIndividual" class="form-control" columns="10" runat="server" Width="100px" Enabled="False"></asp:TextBox>  </li>      
           <li>Valor Total:
            <asp:TextBox ID="txtValorTotal" class="form-control" columns="10" runat="server" Width="100px" Enabled="False" ></asp:TextBox></li>
           </ul>
            </div>
                
                </nav>
                </div>
          <asp:Button ID="Button3" Text="Finalizar Venda"  runat="server" OnClick="btnFinalizarVenda_Click"/>         
          </article>
      </form>
   </body>
</html>
