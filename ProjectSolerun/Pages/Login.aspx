<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectSolerun.WebForm1" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" />
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script src="../bootstrap/js/jquery-3.3.1.min.js"></script>
</body>

     <form id="form1" runat="server">
   
    <center>
      

      <div class="form-group">
         <label for="Login">Login:</label>
            <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
            </div>

       <div class="form-group">
           <label for="Senha">Senha:</label>
            <asp:TextBox ID="txtSenha" TextMode="Password" runat="server"></asp:TextBox>
            </div>

     <div class="form-group">
         <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click" />
            </div>
        <p>
        <asp:Image ID="Solerun" runat="server" ImageUrl="~/Imagens/bonecos-775x465.png"/>
          </p>
          
      </center>
    </form>

</html>
