<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGelenMesaj.aspx.cs" Inherits="OBIS.OgrenciGelenMesaj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <a href="OgrenciMesajOlustur.aspx">
        <button class="btn btn-success"><i class="fas fa-comment-dots"></i>Mesaj Oluştur</button></a>
    <a href="OgrenciGelenMesaj.aspx">
        <button class="btn btn-primary"><i class="fas fa-download"></i>Gelen Mesajlar</button></a>
    <a href="OgrenciGidenMesaj.aspx">
        <button class="btn btn-primary"><i class="fas fa-upload"></i>Giden Mesajlar</button></a>

    <hr />
    <table class="myList" class="table table-bordered">
        <thead>
            <tr>
                <th scope="col">GÖNDEREN</th>
                <th scope="col">BAŞLIK</th>
                <th scope="col">İÇERİK</th>
                <th scope="col">TARİH VE SAAT</th>
            </tr>
        </thead>
        <tbody>
            <asp:repeater id="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("GONDEREN")%></td>
                        <td><%#Eval("MSJBASLIK")%></td>
                        <td><%#Eval("MSJICERIK")%></td>
                        <td><%#Eval("MSJTARIH")%></td>
                </ItemTemplate>
            </asp:repeater>
        </tbody>
    </table>
</asp:Content>
