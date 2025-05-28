using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace isomedGUMO
{
    public partial class panelAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombreUsuario = Request.QueryString["nomUser"];
            labNombreUsuario.Text = "Bienvenido " + nombreUsuario;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string nombreUsuario = Request.QueryString["nomUser"];
            //Response.Redirect("~/formUsuarios.aspx");
            Response.Redirect("~/formUsuarios.aspx?nomUser=" + nombreUsuario);
        }

        protected void butCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/inicio.aspx");
        }

        
    }
}