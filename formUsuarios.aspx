<%@ Page Title="usuario - isomed" Language="C#" MasterPageFile="~/pagina_maestra.Master" AutoEventWireup="true" CodeBehind="formUsuarios.aspx.cs" Inherits="isomedGUMO.formUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 301px;
        }

        .auto-style3 {
            width: 371px;
        }

        .auto-style4 {
            width: 333px;
        }

        .auto-style6 {
            width: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table>
			<tr>
                <td></td>
				<td>
                    &nbsp;
                <asp:Label ID="labNombreUsuario" runat="server" Text="Label" Font-Bold="True" Font-Names="Aptos Display" Font-Size="Medium" Font-Underline="True" ForeColor="#000099"></asp:Label>
                </td>				
			</tr>			
		</table>
	

    <table>
        <tr>
            <td></td>
            <td>
                &nbsp;
                </td>
            <td></td>
        </tr>
        
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                &nbsp;
                <asp:Label ID="Label3" runat="server" Font-Names="Aptos Display" Text="escriba el tipo o nombre de usuario a buscar" ForeColor="#535353"></asp:Label></td>
            <td>
                <asp:TextBox ID="tboBusqueda" onkeyup="this.value=this.value.toUpperCase()" runat="server" Font-Names="Aptos Display" Width="431px" AutoPostBack="True" MaxLength="45" OnTextChanged="tboBusqueda_TextChanged" ForeColor="#535353"></asp:TextBox></td>

        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:GridView ID="dgvNavegacion" runat="server" AutoGenerateColumns="False" Font-Names="Aptos Display" PageSize="5" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="dgvNavegacion_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="idUSUARIO" HeaderText="id de usuario">
                            <ItemStyle HorizontalAlign="Center" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="descripcionTIPOUSUARIO" HeaderText="tipo de usuario">
                            <ItemStyle HorizontalAlign="Center" Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="nombre_completoUSUARIO" HeaderText="nombre completo del usuario">
                            <ItemStyle HorizontalAlign="Left" Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="emailUSUARIO" HeaderText="email">
                            <ItemStyle HorizontalAlign="Left" Width="300px" />
                        </asp:BoundField>
                        <asp:CommandField ShowEditButton="True">
                            <ItemStyle Font-Names="Aptos Display" ForeColor="#CC3300" />
                        </asp:CommandField>
                        <asp:CommandField ShowSelectButton="True">
                            <ItemStyle Font-Names="Aptos Display" ForeColor="#0000CC" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
    </table>



    <br />
    <table style="width: 100%;">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Font-Names="Aptos Display" Font-Size="Medium" Text="Cancelar" Width="100px" Height="30px" OnClick="Button1_Click" ForeColor="#535353" />
                &nbsp;
                <asp:Button ID="butAgregar" runat="server" Text="Agregar" Font-Names="Aptos Display" Font-Size="Medium" OnClick="butAgregar_Click" Width="100px" Height="30px" ForeColor="#535353" />
            </td>
            <td style="text-align: right;" class="auto-style3">&nbsp;</td>

            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

    </table>
    <br />
    <br />
    <br />




</asp:Content>
