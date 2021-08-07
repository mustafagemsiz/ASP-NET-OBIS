<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GelenMesajlar.aspx.cs" Inherits="OBIS.GelenMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
