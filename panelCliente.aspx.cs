using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace isomedGUMO
{
    public partial class panelCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombreUsuario = Request.QueryString["nomUser"];
            labNombreUsuario.Text = "Bienvenido " + nombreUsuario;
        }

        protected void butCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/inicio.aspx");
        }
    }
}