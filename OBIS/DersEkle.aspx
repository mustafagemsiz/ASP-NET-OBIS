<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="OBIS.DersEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div>
        <h4 style="text-align: center;">Yeni Duyuru Ekleme Sayfası</h4>
        <hr />
        <form runat="server" id="Form1">
            <div class="form-group">
                <asp:Label for="TxtDersAd" runat="server" Text="Ders Adı" Style="font-weight: bold;"></asp:Label>
                <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control" required MaxLength="50"></asp:TextBox>
            </div>
            <asp:Button ID="BtnDersEkle" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="BtnDersEkle_Click" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DersListesi.aspx" CssClass="btn btn-info">Geri dön</asp:HyperLink>
        </form>
    </div>
</asp:Content>
