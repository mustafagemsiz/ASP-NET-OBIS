<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle2.aspx.cs" Inherits="OBIS.OgrenciGuncelle2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <h4 style="text-align: center;">İstatistikler Sayfası</h4>
        <hr />
        <form runat="server" id="Form1">
            <asp:Label ID="Label2" runat="server" Text="Şifre"></asp:Label>
            <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
            </div>    
            <asp:Label ID="Label1" runat="server" Text="Şifre Tekrar"></asp:Label>
            <div class="form-group">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click" />
        </form>
    </div>
</asp:Content>
