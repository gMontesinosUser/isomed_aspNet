<%@ Page Title="login - isomed" Language="C#" MasterPageFile="~/pagina_maestra.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="isomedGUMO.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 166px;
        }
    .auto-style13 {
            width: 20px;
            height: 31px;
        }
    .auto-style14 {
            width: 144px;
            height: 31px;
        }
    .auto-style15 {
        height: 31px;
    }
        .auto-style16 {
            width: 20px;
        }
        .auto-style18 {
            width: 783px;
        }
        .auto-style19 {
            width: 55px;
        }
        .auto-style20 {
            width: 144px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
			<tr>
                <td class="auto-style16"></td>
				<td class="auto-style18">
                    <asp:Label ID="Label5" runat="server" Text="En esta página usted puede registrarse si ya es cliente nuestro o está en proceso de serlo. Aquí puede rastrear sus cotizaciones, revisar el estado de sus órdenes de trabajo y anotar sus observaciones. Su número de cliente no es necesario en este momento. Puede realizar su registro y nosotros realizaremos el enlace cliente - usuario." Font-Names="Aptos Display" ForeColor="#535353"></asp:Label>
                    &nbsp;<asp:Label ID="Label6" runat="server" Text="Gracias por hacer negocio con nosotros.  será un placer atenderle." Font-Names="Aptos Display" ForeColor="#535353"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Ing. David Nucamendi Nuriulú" Font-Names="Aptos Display" ForeColor="#535353"></asp:Label>
                    <br />
                </td>
                <td class="auto-style19"></td>				
			</tr>			
		</table>
    <br />
    <table style="width:100%;">
    <tr> 
        	       
				<td class="auto-style16"></td>				
				
        <td class="auto-style20">
            <asp:Label ID="Label2" runat="server" Font-Names="Aptos Display" Text="email" ForeColor="#535353"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="tboEmailUsuario" runat="server" Font-Names="Aptos Display" TextMode="Email" Font-Size="Medium"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style16">
            &nbsp;</td>
        <td class="auto-style20">
            <asp:Label ID="Label3" runat="server" Font-Names="Aptos Display" Text="Contraseña" ForeColor="#535353"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tboPassword" runat="server" Font-Names="Aptos Display" TextMode="Password" Font-Size="Medium"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style14">
            &nbsp;</td>
        <td class="auto-style15">
            <asp:Button ID="butIniciarSesion" runat="server" Font-Names="Aptos Display" Text="Iniciar sesión" OnClick="butIniciarSesion_Click" Font-Size="Medium" ForeColor="#535353" />
        </td>
    </tr>
        <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style14">
            &nbsp;</td>
        <td class="auto-style15">
            
        </td>
    </tr>
        <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style14">
            <asp:Label ID="Label4" runat="server" Font-Names="Aptos Display" Text="¿Es cliente y aún no tiene cuenta?" ForeColor="#535353"></asp:Label>
            </td>
        <td class="auto-style15">
            <asp:Button ID="butCrearCuenta" runat="server" Font-Names="Aptos Display" Text="Crear cuenta" OnClick="butCrearCuenta_Click" Font-Size="Medium" ForeColor="#535353" />
        </td>
    </tr>
</table>
    <br />
    <br />
    <br />
</asp:Content>
