<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="OBIS.DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <h4 style="text-align: center;">Yeni Duyuru Ekleme Sayfası</h4>
        <hr />
        <form runat="server" id="Form1">
            <div class="form-group">
                <asp:Label for="TxtDyrOgretmen" runat="server" Text="Duyuru Öğretmen" Style="font-weight: bold;"></asp:Label>
                <asp:DropDownList ID="TxtDyrOgretmen" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label for="TxtDyrBaslik" runat="server" Text="Duyuru Başlık" Style="font-weight: bold;"></asp:Label>
                <asp:TextBox ID="TxtDyrBaslik" runat="server" CssClass="form-control" required MaxLength="50"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="TxtDyrIcerik" runat="server" Text="Duyuru İçerik" Style="font-weight: bold;"></asp:Label>
                <textarea id="TxtDyrIcerik" class="form-control" rows="5" maxlength="250" runat="server"></textarea>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DuyuruListesi.aspx" CssClass="btn btn-info">Geri dön</asp:HyperLink>
        </form>
    </div>
</asp:Content>  
