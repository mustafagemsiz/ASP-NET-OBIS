<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="OBIS.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <h4 style="text-align:center;">Yeni Öğrenci Ekleme Sayfası</h4>
        <hr />
        <form runat="server" id="Form1">
            <div class="form-group">
                <asp:label for="TxtOgrAd" runat="server" text="Öğrenci Ad" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtOgrAd" runat="server" cssclass="form-control" required MaxLength="20"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtOgrSoyad" runat="server" text="Öğrenci Soyad" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtOgrSoyad" runat="server" cssclass="form-control" required MaxLength="20"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtOgrTelefon" runat="server" text="Öğrenci Telefon" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtOgrTelefon" runat="server" cssclass="form-control" required MaxLength="11"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtOgrMail" runat="server" text="Öğrenci Mail" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtOgrMail" runat="server" type="email" cssclass="form-control" required MaxLength="25"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtOgrSifre" runat="server" text="Öğrenci Şifre" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtOgrSifre" runat="server" cssclass="form-control" required MaxLength="4"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtOgrFoto" runat="server" text="Öğrenci Fotoğraf Linki" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtOgrFoto" runat="server" cssclass="form-control" required MaxLength="100"></asp:textbox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" CssClass="btn btn-info">Geri dön</asp:HyperLink>
        </form>
    </div>
</asp:Content>
