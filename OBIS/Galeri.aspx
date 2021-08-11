<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="OBIS.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<div class="row">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
  <div class="col-md-4">
    <div class="thumbnail"> 
        <img src="<%#Eval("OGRFOTOGRAF")%>" style="width:150px; height:150px">
         <div class="caption" style="text-align:center">
            <p><%#Eval("OGRAD")%> <%#Eval("OGRSOYAD") %></p>
          </div>
    </div>
  </div>  
        </ItemTemplate>
    </asp:Repeater>
</div>

</asp:Content>
