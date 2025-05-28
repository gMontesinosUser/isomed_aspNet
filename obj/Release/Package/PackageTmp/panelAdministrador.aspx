<%@ Page Title="" Language="C#" MasterPageFile="~/pagina_maestra.Master" AutoEventWireup="true" CodeBehind="panelAdministrador.aspx.cs" Inherits="isomedGUMO.panelAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table style="width:100%;">
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Names="Aptos Display" Text="C L I E N T E S" Width="97px" />
                <asp:Button ID="Button2" runat="server" Font-Names="Aptos Display" TabIndex="1" Text="O R D E N E S   D E   T R A B A J O" />
                <asp:Button ID="Button3" runat="server" Font-Names="Aptos Display" TabIndex="2" Text="P R O D U C T O S" />
                <asp:Button ID="Button4" runat="server" Font-Names="Aptos Display" TabIndex="3" Text="P R O V E E D O R E S" />
                <asp:Button ID="Button5" runat="server" Font-Names="Aptos Display" TabIndex="4" Text="U S U A R I O S" OnClick="Button5_Click" />
            </td>
           
        </tr>
        
    </table>
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />


</asp:Content>
