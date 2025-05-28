<%@ Page Title="" Language="C#" MasterPageFile="~/pagina_maestra.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="isomedGUMO.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 102px;
        }
        .auto-style12 {
            width: 166px;
        }
    .auto-style13 {
        width: 102px;
        height: 31px;
    }
    .auto-style14 {
        width: 166px;
        height: 31px;
    }
    .auto-style15 {
        height: 31px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label2" runat="server" Font-Names="Aptos Display" Text="eMail"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="tboEmailUsuario" runat="server" Font-Names="Aptos Display" TextMode="Email"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label3" runat="server" Font-Names="Aptos Display" Text="Contraseña"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="tboPassword" runat="server" Font-Names="Aptos Display" TextMode="Password"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style14">
            <asp:Button ID="butIniciarSesion" runat="server" Font-Names="Aptos Display" Text="Iniciar sesion" OnClick="butIniciarSesion_Click" />
        </td>
        <td class="auto-style15"></td>
    </tr>
</table>
    <br />
    <br />
</asp:Content>
