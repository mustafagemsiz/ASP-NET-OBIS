<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OBIS.WebForm1" %>

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
                <th scope="col">NUMARA</th>
                <th scope="col">AD</th>
                <th scope="col">SOYAD</th>
                <th scope="col">TELEFON</th>
                <th scope="col">MAIL</th>
                <th scope="col">PAROLA</th>
                <th scope="col">İŞLEMLER</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("OGRID")%></td>
                        <td><%#Eval("OGRNUMARA")%></td>
                        <td><%#Eval("OGRAD")%></td>
                        <td><%#Eval("OGRSOYAD")%></td>
                        <td><%#Eval("OGRTELEFON")%></td>
                        <td><%#Eval("OGRMAIL")%></td>
                        <td><%#Eval("OGRSIFRE")%></td>
                        <td>
                            <asp:HyperLink ID="Guncelle" CssClass="btn btn-warning" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+Eval("OGRID") %>' runat="server"><i class="fas fa-user-edit"></i> Güncelle</asp:HyperLink>
                            <asp:HyperLink ID="Sil" CssClass="btn btn-danger" NavigateUrl='<%#"~/OgrenciSil.aspx?OGRID="+Eval("OGRID") %>' runat="server"><i class="fas fa-user-times"></i> Sil</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>


