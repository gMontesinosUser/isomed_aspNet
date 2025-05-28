<%@ Page Title="panel clientes  - isomed" Language="C#" MasterPageFile="~/pagina_maestra.Master" AutoEventWireup="true" CodeBehind="panelCliente.aspx.cs" Inherits="isomedGUMO.panelCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
                <td></td>
				<td>&nbsp;
                <asp:Label ID="labNombreUsuario" runat="server" Text="Label" Font-Bold="True" Font-Names="Aptos Display" Font-Size="Medium" Font-Underline="True" ForeColor="#006600"></asp:Label>
                </td>				
			</tr>
        <tr>
                <td></td>
				<td>
                    <br />
                </td>				
			</tr>	
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;
                <asp:Button ID="Button2" runat="server" Font-Names="Aptos Display" TabIndex="1" Text="O R D E N E S   D E   T R A B A J O" Font-Size="Medium" ForeColor="#535353" />
                &nbsp;
                &nbsp;
                &nbsp;
                </td>
           
        </tr>
        
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="butCerrarSesion" runat="server" Font-Names="Aptos Display" Font-Size="Medium" ForeColor="#535353" Height="30px" OnClick="butCancelar_Click" Text="Cerrar Sesión" Width="100px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />

</asp:Content>
