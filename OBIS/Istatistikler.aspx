<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Istatistikler.aspx.cs" Inherits="OBIS.Istatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <h4 style="text-align: center;">İstatistikler Sayfası</h4>
        <hr />
        <form runat="server" id="Form1">
            <div class="form-group">
                <asp:textbox id="TextBox1" runat="server" cssclass="form-control" required maxlength="50" enabled="False"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:textbox id="TextBox2" runat="server" cssclass="form-control" required maxlength="50" enabled="False"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:textbox id="TextBox3" runat="server" cssclass="form-control" required maxlength="50" enabled="False"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:textbox id="TextBox4" runat="server" cssclass="form-control" required maxlength="50" enabled="False"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:textbox id="TextBox5" runat="server" cssclass="form-control" required maxlength="50" enabled="False"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:textbox id="TextBox6" runat="server" cssclass="form-control" required maxlength="50" enabled="False"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:textbox id="TextBox7" runat="server" cssclass="form-control" required maxlength="50" enabled="False"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:textbox id="TextBox8" runat="server" cssclass="form-control" required maxlength="50" enabled="False"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:textbox id="TextBox9" runat="server" cssclass="form-control" required maxlength="50" enabled="False"></asp:textbox>
            </div>
        </form>
    </div>
</asp:Content>
