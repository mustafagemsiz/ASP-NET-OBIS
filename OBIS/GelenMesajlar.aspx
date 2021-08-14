﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GelenMesajlar.aspx.cs" Inherits="OBIS.GelenMesajlar" %>
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
        <table class="myList" class="table table-bordered">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">GÖNDEREN</th>
                <th scope="col">BAŞLIK</th>
                <th scope="col">İÇERİK</th>
                <th scope="col">TARİH VE SAAT</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("MSJID")%></td>
                        <td><%#Eval("MSJGONDEREN")%></td>
                        <td><%#Eval("MSJBASLIK")%></td>
                        <td><%#Eval("MSJICERIK")%></td>
                        <td><%#Eval("MSJTARIH")%></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
