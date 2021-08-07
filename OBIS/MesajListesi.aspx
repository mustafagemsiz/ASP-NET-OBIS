<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajListesi.aspx.cs" Inherits="OBIS.MesajListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <a href="DuyuruEkle.aspx">
        <button class="btn btn-success"><i class="fas fa-comment-dots"></i> Mesaj Oluştur</button></a>
    <a href="GelenMesajlar.aspx">
        <button class="btn btn-primary"><i class="fas fa-download"></i> Gelen Mesajlar</button></a>
    <a href="DuyuruEkle.aspx">
        <button class="btn btn-primary"><i class="fas fa-upload"></i> Giden Mesajlar</button></a>

    <hr />
</asp:Content>
