<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="OBIS.DersListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <a href="DersEkle.aspx">
        <button class="btn btn-primary"><i class="fas fa-user-plus"></i>Yeni Ekle</button></a>
    <hr />
    <table class="myList" class="table table-bordered">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">DERS AD</th>
                <th scope="col">İŞLEMLER</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DERSID")%></td>
                        <td><%#Eval("DERSAD")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" CssClass="btn btn-warning" NavigateUrl='<%#"~/DersGuncelle.aspx?DERSID="+Eval("DERSID") %>' runat="server"><i class="fas fa-user-times"></i> Güncelle</asp:HyperLink>
                            <asp:HyperLink ID="Sil" CssClass="btn btn-danger" NavigateUrl='<%#"~/DersSil.aspx?DERSID="+Eval("DERSID") %>' runat="server"><i class="fas fa-user-times"></i> Sil</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
