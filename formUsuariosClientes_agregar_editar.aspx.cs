using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using MySql.Data.Types;
using MySql.Data;


namespace isomedGUMO
{
    public partial class formUsuariosClientes_agregar_editar : System.Web.UI.Page
    {

        string var_tipoUsuario_string = "CLIENTE";
        int var_idTIPOUSUARIO_FK_int;

        protected void Page_Load(object sender, EventArgs e)
        {
            rbuCliente.Checked = true;
            labFechaModificacion.Text = DateTime.Now.ToString();
        }

        // ----------------------------------------------------------------------------------------------------
        // M é t o d o s
        // ----------------------------------------------------------------------------------------------------


       

        protected void butCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }

        



        private void metodo_bd_agregarRegistro()
        {
            DateTime fechaHoraSistema = DateTime.Now;
            var_idTIPOUSUARIO_FK_int = clases.metodo_obtener_idTIPOUSUARIO_FK(var_tipoUsuario_string);



            try
            {
                // inicia proceso de escritura en BD
                MySqlCommand ingreso = new MySqlCommand("INSERT  INTO tableUSUARIO(" +
                    //"idUSUARIO, " + el id es autoincremental
                    "idTIPOUSUARIO_FK, " +
                    "idCLIENTE_FK, " +
                    "nombre_completoUSUARIO, " +
                    "emailUSUARIO, " +
                    "passwordUSUARIO, " +
                    "fecha_movUSUARIO) " +

                    "VALUES (" +
                    "@idTIPOUSUARIO_FK, " +
                    "@idCLIENTE_FK, " +
                    "@nombre_completoUSUARIO, " +
                    "@emailUSUARIO, " +
                    "@passwordUSUARIO, " +
                    "@fecha_movUSUARIO)", clases.conexion);

                ingreso.Parameters.AddWithValue("idTIPOUSUARIO_FK", var_idTIPOUSUARIO_FK_int);

                if (tbo_idCLIENTE_FK.Text == "")
                {
                    ingreso.Parameters.AddWithValue("idCLIENTE_FK", null);
                }
                else
                {
                    ingreso.Parameters.AddWithValue("idCLIENTE_FK", tbo_idCLIENTE_FK.Text);
                }

                ingreso.Parameters.AddWithValue("nombre_completoUSUARIO", tbo_nombre_completoUSUARIO.Text);
                ingreso.Parameters.AddWithValue("emailUSUARIO", tbo_emailUSUARIO.Text);
                ingreso.Parameters.AddWithValue("passwordUSUARIO", tbo_password_1_USUARIO.Text);
                ingreso.Parameters.AddWithValue("fecha_movUSUARIO", fechaHoraSistema);

                clases.conexion.Open();
                ingreso.ExecuteScalar();
                //banderaMovimientoSQL = true; // indica que el movimiento SQL se ha realizado
                Response.Write("<script language=javascript>alert('El registro se ha guardado. ISOMED INGENIERÍA EN SOLUCIONES MEDICAS.');</script>");
                //Response.Write("El registro se ha guardado. ISOMED INGENIERÍA EN SOLUCIONES MEDICAS");

                var_idTIPOUSUARIO_FK_int = 0;
                tbo_idCLIENTE_FK.Text = "";
                tbo_nombre_completoUSUARIO.Text = "";
                tbo_emailUSUARIO.Text = "";
                tbo_password_1_USUARIO.Text = "";
                tbo_password_2_USUARIO.Text = "";

                var_tipoUsuario_string = "";

                rbuAdministrador.Checked = false;
                rbuColaborador.Checked = false;
                rbuCliente.Checked = false;

            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally { clases.conexion.Close(); }
        }

        // ----------------------------------------------------------------------------------------------------
        // E v e n t o s 
        // ----------------------------------------------------------------------------------------------------


        protected void butAgregar_Click(object sender, EventArgs e)
        {
            // validar si hay algún campo vacío
            
            if (rbuAdministrador.Checked ==false && rbuColaborador.Checked ==false && rbuCliente.Checked ==false)
            {
                Response.Write("<script language=javascript>alert('Debe seleccionar el tipo de usuario.');</script>");
                return;
            }

            else if (tbo_nombre_completoUSUARIO.Text == "")
            {
                Response.Write("<script language=javascript>alert('No ha escrito el nombre dle usuario.');</script>");
                tbo_nombre_completoUSUARIO.Focus();
                return;
            }

            else if (tbo_emailUSUARIO.Text == "")
            {
                Response.Write("<script language=javascript>alert('No ha escrito un email o el campo está vacío.');</script>");
                tbo_emailUSUARIO.Focus();
                return;
            }

            else if (tbo_password_1_USUARIO.Text == "")
            {
                Response.Write("<script language=javascript>alert('Es necesaria una contraseña.');</script>");
                tbo_password_1_USUARIO.Focus();
                return;
            }

            else if (tbo_password_2_USUARIO.Text == "")
            {
                Response.Write("<script language=javascript>alert('Es necesaria una contraseña.');</script>");
                tbo_password_2_USUARIO.Focus();
                return;
            }

            // validar si la contraseña es la misma en ambos textbox de password
            else if (tbo_password_1_USUARIO.Text != tbo_password_2_USUARIO.Text)
            {
                Response.Write("<script language=javascript>alert('Las contraseñas deben ser iguales');</script>");
                tbo_password_1_USUARIO.Focus();
                return;           
            }

            metodo_bd_agregarRegistro();
        }

        protected void rbuAdministrador_CheckedChanged(object sender, EventArgs e)
        {
            if (rbuAdministrador.Checked == true)
            {
                var_tipoUsuario_string = "ADMINISTRADOR";
            }
        }

        protected void rbuColaborador_CheckedChanged(object sender, EventArgs e)
        {
            if (rbuColaborador.Checked == true)
            {
                var_tipoUsuario_string = "COLABORADOR";
            }
        }

        protected void rbuCliente_CheckedChanged(object sender, EventArgs e)
        {
            if (rbuCliente.Checked == true)
            {
                var_tipoUsuario_string = "CLIENTE";
            }
        }

        protected void tbo_idCLIENTE_FK_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tbo_nombre_completoUSUARIO_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tbo_emailUSUARIO_TextChanged(object sender, EventArgs e)
        {

        }




    }
}