<%@ Page Title="quienes somos - isomed" Language="C#" MasterPageFile="~/pagina_maestra.Master" AutoEventWireup="true" CodeBehind="quienessomos.aspx.cs" Inherits="isomedGUMO.quienessomos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 41px;
        }
    .auto-style3 {
        width: 700px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    
                    <table style="width:100%;">        
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:HyperLink ID="hli_nosotros" runat="server" Font-Names="Aptos Display" NavigateUrl="~/inicio.aspx">Nosotros</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hli_quienesSomos" runat="server" Font-Names="Aptos Display" NavigateUrl="~/quienessomos.aspx">Quienes somos</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hli_contacto" runat="server" Font-Names="Aptos Display" NavigateUrl="~/contacto.aspx">Contacto</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style3">
                <br />
        
                <asp:Label ID="Label4" runat="server" Font-Names="Aptos Display" ForeColor="#003300" Text="Nuestra historia"></asp:Label>
                <font class="ws16" color="#FF9900" face="Arial Narrow">
                <br />
                    <br />
                <div align="justify">
                    <asp:Label ID="Label2" runat="server" Font-Names="Aptos Display" ForeColor="#535353" Text="Estamos constituidos desde 2014 en el estado de Chiapas, trabajando para clientes del sector público y privado. Hemos instalado muchos sistemas de tratamientos de agua para hemodiálisis en clínicas y hospitales en Chiapas y Tabasco. También hemos reacondicionado sistemas completos donde ha sido necesario."></asp:Label>
                    <font class="ws8" color="#808080" face="Tahoma">
                    <br />
                    </font>
                </div>
                <div align="right">
                <font class="ws16" color="#FF9900" face="Arial Narrow">
                <div align="justify">
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Names="Aptos Display" ForeColor="#535353" Text="Realizamos mantenimiento a equipos de hemodiálisis de diferentes marcas. Conseguimos refacciones y partes tanto nacionales como extranjeros. Tambien vendemos insumos tales como línea arterial venosa, filtros, hemofiltros, bicarbonatos y ácidos."></asp:Label>
                    <font class="ws8" color="#808080" face="Tahoma">
                    <br />
                    </font>
                </div>
                </font>
                    <font class="ws8" color="#FF9900" face="Tahoma"></font>
                </div>
                    <br />
                <div align="right">
                <div align="justify">
                    <asp:Label ID="Label6" runat="server" Font-Names="Aptos Display" ForeColor="#535353" Text="Ing. David Nucamendi Nuriulú"></asp:Label>
                    <br />
                    <font class="ws8" color="#808080" face="Tahoma">
                <font class="ws16" color="#FF9900" face="Arial Narrow">
                    <asp:Label ID="Label7" runat="server" Font-Names="Aptos Display" ForeColor="#535353" Text="D I R E C T O R"></asp:Label>
                    <br />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="210px" ImageUrl="~/imagenes/david_revisando.jpeg" Width="178px" />
                    <br />
                    <br />
                </font>
                    <br />
                    </font>
                </div>
                    <font class="ws8" color="#FF9900" face="Tahoma"></font>
                </div>
                </font>
            </td>
            <td>
                <br />
            </td>
        </tr>
    </table>
    <br />
    <div>
    <br />
</div>

    <

    <br />
    <br />
				
			
    

    <br />
    <br />
</asp:Content>
