<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="OBIS.NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <h4 style="text-align: center;">Öğrenci Not Güncelleme Sayfası</h4>
        <hr />
        <form runat="server" id="Form1">
            <div class="form-group">
                <asp:Label for="TxtDersAd" runat="server" Text="Ders Ad" Style="font-weight: bold;"></asp:Label>
                <asp:DropDownList ID="TxtDersAd" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label for="TxtOgrId" runat="server" Text="Öğrenci Id" Style="font-weight: bold;"></asp:Label>
                <asp:TextBox ID="TxtOgrId" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="TxtOgrAdSoyad" runat="server" Text="Öğrenci Ad Soyad" Style="font-weight: bold;"></asp:Label>
                <asp:TextBox ID="TxtOgrAdSoyad" runat="server" CssClass="form-control" required MaxLength="30"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="TxtSinav1" runat="server" Text="Sınav 1" Style="font-weight: bold;"></asp:Label>
                <asp:TextBox ID="TxtSinav1" runat="server"  CssClass="form-control" required MaxLength="3"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="TxtSinav2" runat="server" Text="Sınav 2" Style="font-weight: bold;"></asp:Label>
                <asp:TextBox ID="TxtSinav2" runat="server" CssClass="form-control" required MaxLength="3"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="TxtSinav3" runat="server" Text="Sınav 3" Style="font-weight: bold;"></asp:Label>
                <asp:TextBox ID="TxtSinav3" runat="server" CssClass="form-control" required MaxLength="3"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="TxtOrtalama" runat="server" Text="Ortalama" Style="font-weight: bold;"></asp:Label>
                <asp:TextBox ID="TxtOrtalama" runat="server" CssClass="form-control" required MaxLength="10"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="TxtDurum" runat="server" Text="Durum" Style="font-weight: bold;"></asp:Label>
                <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control" required MaxLength="10"></asp:TextBox>
            </div>
            <asp:Button ID="Button2" runat="server" Text="Hesapla" CssClass="btn btn-default" />            
            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" CssClass="btn btn-info">Geri dön</asp:HyperLink>

        </form>
    </div>
</asp:Content>
