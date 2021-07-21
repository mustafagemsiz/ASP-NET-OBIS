<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="OBIS.NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <a href="OgrenciEkle.aspx">
        <button class="btn btn-primary"><i class="fas fa-user-plus"></i>Yeni Ekle</button></a>
    <br />
    <br />
    <table class="myList" class="table table-bordered">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">AD SOYAD</th>
                <th scope="col">DERS</th>
                <th scope="col">SINAV 1</th>
                <th scope="col">SINAV 2</th>
                <th scope="col">SINAV 3</th>
                <th scope="col">ORTALAMA</th>
                <th scope="col">DURUM</th>
                <th scope="col">İŞLEM</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("OGRENCIID")%></td>
                        <td><%#Eval("OGRADSOYAD")%></td>
                        <td><%#Eval("DERSAD")%></td>
                        <td><%#Eval("SINAV1")%></td>
                        <td><%#Eval("SINAV2")%></td>
                        <td><%#Eval("SINAV3")%></td>
                        <td><%#Eval("ORTALAMA")%></td>
                        <td><%#Eval("DURUM")%></td>
                        <td>
                            <asp:HyperLink ID="Guncelle" CssClass="btn btn-warning" runat="server"><i class="fas fa-user-edit"></i> Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
