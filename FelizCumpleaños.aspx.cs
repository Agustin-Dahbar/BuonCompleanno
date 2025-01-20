using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CumpleañosFeliz
{
    public partial class FelizCumpleaños : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void torta_Click(object sender, EventArgs e)
        {
            lblCompleanno.Visible = true;
            titulo.Visible = false;
        }

    }
}