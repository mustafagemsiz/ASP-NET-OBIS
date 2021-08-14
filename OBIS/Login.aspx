<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OBIS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .body {
            background-image: url("Images/bg.jpg");
        }
    </style>
    <!-- Bootstrap CSS CDN -->
    <link href="Content/bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Our Custom CSS -->
    <link href="Content/StyleSheet.css" rel="stylesheet" />
    <title>Giriş Sayfası</title>
</head>
<body class="body">
    <form id="form1" runat="server" style="margin: auto;">
        <div style="width: 700px; margin: auto">
            <h1 style="text-align: center; margin-top: 25%; font-family: Corbel; color: #FFFFFF; font-size: 50px;">E-Okul Bilgi Sistemi</h1>
            <div style="margin: auto; text-align: center">
                <img src="/Images/okul.png" width="150px" height="150px" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" Text="Öğrenci Numarası" Font-Size="Medium" ForeColor="White"></asp:Label>
                <asp:TextBox id="TxtNumara" runat="server" class="form-control" required ></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" Text="Şifre" Font-Size="Medium" ForeColor="White"></asp:Label>
                <asp:TextBox  id="TxtSifre" runat="server" class="form-control" TextMode="Password" required></asp:TextBox>
            </div>
            <asp:Button runat="server" Text="Öğrenci Giriş" class="btn btn-success" Style="width: 100%; margin-bottom: 10px" OnClick="Unnamed5_Click" />
            <asp:Button runat="server" Text="Öğretmen Giriş" class="btn btn-warning" Style="width: 100%" OnClick="Unnamed4_Click" />
        </div>
    </form>
</body>
</html>
