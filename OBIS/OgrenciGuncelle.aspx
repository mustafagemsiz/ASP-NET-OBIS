﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle.aspx.cs" Inherits="OBIS.OgrenciGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <h4 style="text-align: center;">Öğrenci Bilgi Güncelleme Sayfası</h4>
        <hr />
        <form runat="server" id="Form1">
            <div class="form-group" aria-hidden="True">
                <asp:textbox id="TxtOgrId" runat="server" cssclass="form-control" required Visible="False"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtOgrAd" runat="server" text="Öğrenci Ad" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtOgrAd" runat="server" cssclass="form-control" required MaxLength="20"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtOgrSoyad" runat="server" text="Öğrenci Soyad" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtOgrSoyad" runat="server" cssclass="form-control" required MaxLength="20"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtOgrTelefon" runat="server" text="Öğrenci Telefon" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtOgrTelefon" runat="server" cssclass="form-control" required MaxLength="11"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtOgrMail" runat="server" text="Öğrenci Mail" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtOgrMail" runat="server" type="email" cssclass="form-control" required MaxLength="25"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtOgrSifre" runat="server" text="Öğrenci Şifre" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtOgrSifre" runat="server" cssclass="form-control" required MaxLength="4"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label for="TxtOgrFoto" runat="server" text="Öğrenci Fotoğraf Linki" style="font-weight: bold;"></asp:label>
                <asp:textbox id="TxtOgrFoto" runat="server" cssclass="form-control" required MaxLength="100"></asp:textbox>
            </div>
            <asp:button id="Button1" runat="server" text="Kaydet" cssclass="btn btn-success" OnClick="Button1_Click" />
            <asp:hyperlink id="HyperLink1" runat="server" navigateurl="~/Default.aspx" cssclass="btn btn-info">Geri dön</asp:hyperlink>

        </form>
    </div>
</asp:Content>
