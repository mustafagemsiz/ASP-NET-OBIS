<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciMesajOlustur.aspx.cs" Inherits="OBIS.OgrenciMesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <a href="MesajOlustur.aspx">
        <button class="btn btn-success"><i class="fas fa-comment-dots"></i>Mesaj Oluştur</button></a>
    <a href="GelenMesajlar.aspx">
        <button class="btn btn-primary"><i class="fas fa-download"></i>Gelen Mesajlar</button></a>
    <a href="GidenMesajlar.aspx">
        <button class="btn btn-primary"><i class="fas fa-upload"></i>Giden Mesajlar</button></a>

    <hr />
    <div>
        <h4 style="text-align: center;">Yeni Mesaj Gönderme Sayfası</h4>
        <hr />
        <form runat="server" id="Form1">
            <div class="form-group">
                <asp:label for="TxtMsjGonderen" runat="server" text="Gönderen" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtMsjGonderen" runat="server" cssclass="form-control" required maxlength="50" enabled="False"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtMsjAlici" runat="server" text="Alıcı" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtMsjAlici" runat="server" cssclass="form-control" required maxlength="50"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtMsjBaslik" runat="server" text="Mesaj Başlık" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtMsjBaslik" runat="server" cssclass="form-control" required maxlength="50"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtMsjIcerik" runat="server" text="Mesaj İçerik" style="font-weight: bold;"></asp:label>
                <textarea id="TxtMsjIcerik" class="form-control" rows="6" maxlength="250" runat="server"></textarea>
            </div>

            <asp:button id="Button1" runat="server" text="Gönder" cssclass="btn btn-success" OnClick="Button1_Click"  />
            <asp:hyperlink id="HyperLink1" runat="server" navigateurl="~/OgrenciGelenMesaj.aspx" cssclass="btn btn-info">Geri dön</asp:hyperlink>
        </form>
    </div>
</asp:Content>
