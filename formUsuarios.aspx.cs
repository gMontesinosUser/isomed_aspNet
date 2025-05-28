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
    public partial class formUsuarios : System.Web.UI.Page
    {
        //creamos la conexión a la base de datos
        //public static MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; Database=isomed; UserID=root; Password=administrador1_;");

        protected void Page_Load(object sender, EventArgs e)
        {
            string nombreUsuario = Request.QueryString["nomUser"];
            labNombreUsuario.Text = "Bienvenido " + nombreUsuario;

            tboBusqueda.Focus();

            //if (Page.Session.Count == 0)
            //{
            //    Response.Redirect("~/inicio.aspx");            
            //}

            if (!this.IsPostBack)
            {
                clases.data1 = new MySqlDataAdapter("SELECT idUSUARIO, descripcionTIPOUSUARIO, idCLIENTE_FK, nombre_completoUSUARIO, emailUSUARIO " +
                    "FROM tableUSUARIO " +
                    "INNER JOIN tableTIPOUSUARIO " + 
                    "ON tableUSUARIO.idTIPOUSUARIO_FK = tableTIPOUSUARIO.idTIPOUSUARIO " +
                    "WHERE descripcionTIPOUSUARIO LIKE '%" + tboBusqueda.Text + "%' OR nombre_completoUSUARIO LIKE '%" + tboBusqueda.Text + "%' ORDER BY idUSUARIO ASC", clases.conexion);
                clases.data1.FillSchema(clases.ds, SchemaType.Source, "tableUSUARIO");
                clases.data1.Fill(clases.ds, "tableUSUARIO");

                bindData();
            }



        }


        protected void bindData()
        {
            dgvNavegacion.DataSource = clases.ds;
            dgvNavegacion.DataMember = "tableUSUARIO";
            dgvNavegacion.ShowFooter = false;
            dgvNavegacion.DataBind();                
        }

        protected void binding()
        {
            dgvNavegacion.DataSource = clases.ds;
            dgvNavegacion.DataMember = "tableUSUARIO";
            dgvNavegacion.ShowFooter = false;
            dgvNavegacion.DataBind();
        }

        protected void dgvNavegacion_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvNavegacion.PageIndex = e.NewPageIndex;
            refreshData2();
            binding();
        }

        protected void refreshData2()
        {
            clases.data1 = new MySqlDataAdapter("SELECT idUSUARIO, descripcionTIPOUSUARIO, idCLIENTE_FK, nombre_completoUSUARIO, emailUSUARIO " +
                    "FROM tableUSUARIO " +
                    "INNER JOIN tableTIPOUSUARIO " +
                    "ON tableUSUARIO.idTIPOUSUARIO_FK = tableTIPOUSUARIO.idTIPOUSUARIO " +
                    "WHERE descripcionTIPOUSUARIO LIKE '%" + tboBusqueda.Text + "%' OR nombre_completoUSUARIO LIKE '%" + tboBusqueda.Text + "%' ORDER BY idUSUARIO ASC", clases.conexion);
            clases.data1.FillSchema(clases.ds, SchemaType.Source, "tableUSUARIO");
            binding();
        
        }

        protected void tboBusqueda_TextChanged(object sender, EventArgs e)
        {
            clases.ds.Clear();
            clases.data1 = new MySqlDataAdapter("SELECT idUSUARIO, descripcionTIPOUSUARIO, idCLIENTE_FK, nombre_completoUSUARIO, emailUSUARIO " +
                    "FROM tableUSUARIO " +
                    "INNER JOIN tableTIPOUSUARIO " +
                    "ON tableUSUARIO.idTIPOUSUARIO_FK = tableTIPOUSUARIO.idTIPOUSUARIO " +
                    "WHERE descripcionTIPOUSUARIO LIKE '%" + tboBusqueda.Text + "%' OR nombre_completoUSUARIO LIKE '%" + tboBusqueda.Text + "%' ORDER BY idUSUARIO ASC", clases.conexion);
            clases.data1.FillSchema(clases.ds, SchemaType.Source, "tableUSUARIO");
            clases.data1.Fill(clases.ds, "tableUSUARIO");
            
            bindData();
            tboBusqueda.Focus();
            

        }

        

        protected void butAgregar_Click(object sender, EventArgs e)
        {
            string nombreUsuario = Request.QueryString["nomUser"];
            Response.Redirect("~/formUsuarios_agregar_editar.aspx?nomUser=" + nombreUsuario);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombreUsuario = Request.QueryString["nomUser"];
            Response.Redirect("~/panelAdministrador.aspx?nomUser=" + nombreUsuario);
        }

    }
}