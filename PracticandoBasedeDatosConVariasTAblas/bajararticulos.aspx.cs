using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticandoBasedeDatosConVariasTAblas
{
    public partial class bajararticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.DeleteParameters["codigo"].DefaultValue = txtCodigo.Text;
            int cant;
            cant = SqlDataSource1.Delete();
            if (cant == 1)
                Label2.Text = "Se borró el artículo";
            else
                Label2.Text = "No existe el codigo";
        }
    }
}