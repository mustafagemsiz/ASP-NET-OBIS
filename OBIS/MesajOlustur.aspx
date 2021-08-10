<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="OBIS.MesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <a href="MesajOlustur.aspx">
        <button class="btn btn-success"><i class="fas fa-comment-dots"></i> Mesaj Oluştur</button></a>
    <a href="GelenMesajlar.aspx">
        <button class="btn btn-primary"><i class="fas fa-download"></i> Gelen Mesajlar</button></a>
    <a href="GidenMesajlar.aspx">
        <button class="btn btn-primary"><i class="fas fa-upload"></i> Giden Mesajlar</button></a>

    <hr />
    <div>
        <h4 style="text-align: center;">Yeni Mesaj Gönderme Sayfası</h4>
        <hr />
        <form runat="server" id="Form1">
            <div class="form-group">
                <asp:Label for="TxtMsjGonderen" runat="server" Text="Gönderen" Style="font-weight: bold;"></asp:Label>
                <asp:TextBox ID="TxtMsjGonderen" runat="server" CssClass="form-control" required MaxLength="50" Enabled="False"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="TxtMsjAlici" runat="server" Text="Alıcı" Style="font-weight: bold;"></asp:Label>
                <asp:TextBox ID="TxtMsjAlici" runat="server" CssClass="form-control" required MaxLength="50"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="TxtMsjBaslik" runat="server" Text="Mesaj Başlık" Style="font-weight: bold;"></asp:Label>
                <asp:TextBox ID="TxtMsjBaslik" runat="server" CssClass="form-control" required MaxLength="50"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="TxtMsjIcerik" runat="server" Text="Mesaj İçerik" Style="font-weight: bold;"></asp:Label>
                <textarea id="TxtMsjIcerik" class="form-control" rows="6" maxlength="250" runat="server"></textarea>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn btn-success" OnClick="Button1_Click" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MesajListesi.aspx" CssClass="btn btn-info">Geri dön</asp:HyperLink>
        </form>
    </div>
</asp:Content>
