<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="OBIS.DuyuruListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <a href="DuyuruEkle.aspx">
        <button class="btn btn-primary"><i class="fas fa-user-plus"></i>Yeni Ekle</button></a>
      <hr/>
    <table class="myList" class="table table-bordered">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">BAŞLIK</th>
                <th scope="col">İÇERİK</th>
                <th scope="col">ÖĞRETMEN</th>
                <th scope="col">İŞLEMLER</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DYRID")%></td>
                        <td><%#Eval("DYRBASLIK")%></td>
                        <td><%#Eval("DYRICERIK")%></td>
                        <td><%#Eval("DYROGRETMEN")%></td>
                        <td>
                            <asp:HyperLink ID="Guncelle" CssClass="btn btn-warning" NavigateUrl='<%#"~/DuyuruGuncelle.aspx?DYRID="+Eval("DYRID") %>' runat="server"><i class="fas fa-user-edit"></i> Güncelle</asp:HyperLink>
                            <asp:HyperLink ID="Sil" CssClass="btn btn-danger" NavigateUrl='<%#"~/DuyuruSil.aspx?DYRID="+Eval("DYRID") %>' runat="server"><i class="fas fa-user-times"></i> Sil</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
