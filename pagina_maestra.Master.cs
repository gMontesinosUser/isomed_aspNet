using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace isomedGUMO
{
    public partial class pagina_maestra : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            labAnnoFooter.Text = "© " + System.DateTime.Now.Year.ToString() + "  -  ";
        }

        protected void Label1_Load(object sender, EventArgs e)
        {

        }
    }
}