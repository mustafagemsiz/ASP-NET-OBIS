<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDefault.aspx.cs" Inherits="OBIS.OgrenciDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div>
        <h4 style="text-align: center;">İstatistikler Sayfası</h4>
        <hr />
        <form runat="server" id="Form1">
            <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  MaxLength="50" Enabled="False">Numara</asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"  MaxLength="50" Enabled="False">Ad Soyad</asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"  MaxLength="50" Enabled="False">Mail</asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"  MaxLength="50" Enabled="False">Telefon</asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"  MaxLength="50" Enabled="False">Şifre</asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"  MaxLength="50" Enabled="False">Fotoğraf</asp:TextBox>
            </div>
                        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success"/>

        </form>
    </div>
</asp:Content>
