<%@ Page Title="agregar usuarios - isomed" Language="C#" MasterPageFile="~/pagina_maestra.Master" AutoEventWireup="true" CodeBehind="formUsuariosClientes_agregar_editar.aspx.cs" Inherits="isomedGUMO.formUsuariosClientes_agregar_editar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
        <td class="auto-style2">&nbsp;

        </td>
        <td class="auto-style9">
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="id usuario (autogenerado)" Font-Names="Aptos Display" ForeColor="#535353"></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="tbo_idUSUARIO" runat="server" Enabled="False" ReadOnly="True" Width="115px" Font-Names="Aptos Display" ForeColor="#535353"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                
                </table>
            </td>
            </tr>
    </table>
    <table>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>                        
                        <asp:Label ID="Label3" runat="server" Text="tipo de usuario" Font-Names="Aptos Display" ForeColor="#535353"></asp:Label>

                    </td>
                    <td>&nbsp;
                        <asp:RadioButton ID="rbuAdministrador" runat="server" Font-Names="Aptos Display" Text="Administrador" GroupName="tipo_de_cliente" OnCheckedChanged="rbuAdministrador_CheckedChanged" ForeColor="#535353" Enabled="False" />
                        &nbsp;
                    <asp:RadioButton ID="rbuColaborador" runat="server" Font-Names="Aptos Display" Text="Colaborador" GroupName="tipo_de_cliente" OnCheckedChanged="rbuColaborador_CheckedChanged" ForeColor="#535353" Enabled="False" />
                        &nbsp;
                    <asp:RadioButton ID="rbuCliente" runat="server" Font-Names="Aptos Display" Text="Cliente" GroupName="tipo_de_cliente" OnCheckedChanged="rbuCliente_CheckedChanged" ForeColor="#535353" />

                    </td>
                </tr>
            </table>

            <table>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="id de cliente (cuando aplica)" Font-Names="Aptos Display" ForeColor="#535353"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbo_idCLIENTE_FK" runat="server" Width="107px" Font-Names="Aptos Display" onkeypress="if(event.keyCode<48 || event.keyCode>57)event.returnValue=false;" MaxLength="10" ForeColor="#535353" Enabled="False" OnTextChanged="tbo_idCLIENTE_FK_TextChanged"></asp:TextBox>
                                               
                        &nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Asignar Cliente" Font-Names="Aptos Display" Font-Size="Medium" Enabled="False" ForeColor="#535353" />
                    </td>

                </tr>
            </table>

            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Font-Names="Aptos Display" Text="nombre completo" ForeColor="#535353"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbo_nombre_completoUSUARIO" onkeyup="this.value=this.value.toUpperCase()" runat="server" Width="489px" Font-Names="Aptos Display" OnTextChanged="tbo_nombre_completoUSUARIO_TextChanged" ForeColor="#535353"></asp:TextBox>
                    </td>

                </tr>
            </table>

            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Font-Names="Aptos Display" Text="email" onkeyup="this.value=this.value.toUpperCase()" ForeColor="#535353"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbo_emailUSUARIO" runat="server" Width="437px" Font-Names="Aptos Display" TextMode="Email" onfocus="this.type='email'" OnTextChanged="tbo_emailUSUARIO_TextChanged" ForeColor="#535353"></asp:TextBox>
                    </td>

                </tr>

            </table>

            <table>
			<tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="contraseña" Font-Names="Aptos Display" ForeColor="#535353"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="tbo_password_1_USUARIO" runat="server" Font-Names="Aptos Display" TextMode="Password" MaxLength="12" ForeColor="#535353"></asp:TextBox>
                    
                </td>
				<td>
                    &nbsp;
                    &nbsp;
                    <asp:Label ID="Label1" runat="server" Text="confirmar contraseña" Font-Names="Aptos Display" ForeColor="#535353"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="tbo_password_2_USUARIO" runat="server" Font-Names="Aptos Display" TextMode="Password" MaxLength="12" ForeColor="#535353"></asp:TextBox>

                </td>				
			</tr>			
		</table>
            <br />


            <table style="width: 100%;">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label8" runat="server" Font-Names="Aptos Display" Text="fecha de última modificación" ForeColor="#666666" Font-Size="Small"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="labFechaModificacion" runat="server" Font-Names="Aptos Display" Text="FechaModificacion" ForeColor="#666666" Font-Size="Small"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        &nbsp;</td>

                </tr>

            </table>

            <br />

   <table>
			<tr>
                <td class="auto-style2">
                </td>
				<td>
                    <table>
                <tr>
                    <td style="text-align: left; margin-left: 40px;">
                    <asp:Button ID="butCancelar" runat="server" Text="Regresar" Font-Names="Aptos Display" Font-Size="Medium" Width="100px" Height="30px" OnClick="butCancelar_Click" ForeColor="#535353" />
                        &nbsp;
                    <asp:Button ID="butAgregar" runat="server" Text="Agregar" Font-Names="Aptos Display" Font-Size="Medium" Width="100px" Height="30px" OnClick="butAgregar_Click" ForeColor="Blue" />
                    </td>
                    <td>
                        &nbsp;</td>

                </tr>
             </table>
				</td>				
			</tr>			
		</table>
    

</asp:Content>
