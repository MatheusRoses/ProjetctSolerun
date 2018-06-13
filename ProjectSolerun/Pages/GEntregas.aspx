<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GEntregas.aspx.cs" Inherits="ProjectSolerun.Pages.GEntregas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gestão de Entregas</title>

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
    <form id="form1" runat="server">
    <div>
    
              <asp:Label ID="NomeUsuario" runat="server" Text="Nome do Usuario:"></asp:Label>
              <asp:TextBox ID="txtUsuario" runat="server" ></asp:TextBox>
              <br />
              <asp:Button ID="btnPaginaInicial" Text="Pagina Incial"  runat="server" PostBackUrl="~/Pages/PaginaInicial.aspx"/>
              <br />
              <asp:Button ID="btnPaginaAnterior" Text="Pagina Anterior"  runat="server" OnClick="btnPaginaAnterior_Click"/>

    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="nomefuncionario" HeaderText="nomefuncionario" SortExpression="nomefuncionario" />
            <asp:BoundField DataField="servico" HeaderText="servico" SortExpression="servico" />
            <asp:BoundField DataField="valorservico" HeaderText="valorservico" SortExpression="valorservico" />
            <asp:BoundField DataField="notafiscal" HeaderText="notafiscal" SortExpression="notafiscal" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcerv_solerunConnectionString %>" ProviderName="<%$ ConnectionStrings:dbcerv_solerunConnectionString.ProviderName %>" SelectCommand="select nomefuncionario, servico, valorservico, notafiscal from solerun_servicos;"></asp:SqlDataSource>
    </form>
    </body>
</html>
