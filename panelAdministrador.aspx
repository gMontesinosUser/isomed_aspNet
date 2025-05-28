<%@ Page Title="panel - isomed" Language="C#" MasterPageFile="~/pagina_maestra.Master" AutoEventWireup="true" CodeBehind="panelAdministrador.aspx.cs" Inherits="isomedGUMO.panelAdministrador" %>
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
				<td>
                    &nbsp;
                <asp:Label ID="labNombreUsuario" runat="server" Text="Label" Font-Underline="True" Font-Bold="True" Font-Names="Aptos Display" Font-Size="Medium" ForeColor="#000099"></asp:Label>
                </td>				
			</tr>	
        <tr>
                <td></td>
				<td>
                    <br />
                </td>				
			</tr>	
        <tr>
            <td class="auto-style2">
                &nbsp;
            </td>

            <td>
                <asp:Button ID="Button1" runat="server" Font-Names="Aptos Display" Text="C L I E N T E S" Width="97px" Font-Size="Medium" ForeColor="#535353" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" Font-Names="Aptos Display" TabIndex="1" Text="O R D E N E S   D E   T R A B A J O" Font-Size="Medium" ForeColor="#535353" />
                &nbsp;
                <asp:Button ID="Button3" runat="server" Font-Names="Aptos Display" TabIndex="2" Text="P R O D U C T O S" Font-Size="Medium" ForeColor="#535353" />
                &nbsp;
                <asp:Button ID="Button4" runat="server" Font-Names="Aptos Display" TabIndex="3" Text="P R O V E E D O R E S" Font-Size="Medium" ForeColor="#535353" />
                &nbsp;
                <asp:Button ID="Button5" runat="server" Font-Names="Aptos Display" TabIndex="4" Text="U S U A R I O S" OnClick="Button5_Click" Font-Size="Medium" ForeColor="#535353" />
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
    <br />
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
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
                <asp:Button ID="butCerrarSesion" runat="server" Font-Names="Aptos Display" Font-Size="Medium" Height="30px" OnClick="butCancelar_Click" Text="Cerrar Sesión" Width="100px" ForeColor="#535353" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />


</asp:Content>
