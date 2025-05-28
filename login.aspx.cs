using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace isomedGUMO
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void butIniciarSesion_Click(object sender, EventArgs e)
        {

            if (tboEmailUsuario.Text == "")
            {
                Response.Write("<script> alert(" + "'Ingrese su eMail'" + ")</script>");
                tboEmailUsuario.Focus();
                return;
            }

            if (tboPassword.Text == "")
            {
                Response.Write("<script> alert(" + "'Ingrese su contraseña'" + ")</script>");
                tboPassword.Focus();
                return;
            }

            string valorrecibidoIDUsuario = clases.validarEmail_Password(tboEmailUsuario.Text, tboPassword.Text);
            string nombreUsuario = clases.metodo_obtener_nombreUSUARIO(valorrecibidoIDUsuario);
            //string nombreusuarioRecortado = nombreUsuario.Substring(5);
            string cadenaMensajeOK = "Bienvenido " + nombreUsuario + ""; // + valorrecibidoIDUsuario + " - " + nombreUsuario;

            if (valorrecibidoIDUsuario == "0")
            {
                Response.Write("<script> alert(" + "'El eMail o contraseña no son correctos'" + ")</script>");
                tboEmailUsuario.Focus();
                return;
            }

            else
            {
                string valor_descripcionTIPOUSUARIO_string = clases.metodo_obtener_descripcionTIPOUSUARIO(valorrecibidoIDUsuario);

                if (valor_descripcionTIPOUSUARIO_string == "CLIENTE")
                {
                    Response.Redirect("~/panelCliente.aspx?nomUser=" + nombreUsuario);
                }
                else
                {
                    Response.Redirect("~/panelAdministrador.aspx?nomUser=" + nombreUsuario);
                }
                
            }
        }

        protected void butCrearCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/formUsuariosClientes_agregar_editar.aspx");
        }


    }
}