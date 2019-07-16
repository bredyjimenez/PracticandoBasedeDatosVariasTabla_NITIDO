using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticandoBasedeDatosConVariasTAblas
{
    public partial class altaarticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            SqlDataSourceArticulos.InsertParameters["descripcion"].DefaultValue = txtDescripcion.Text;
            SqlDataSourceArticulos.InsertParameters["precio"].DefaultValue = txtPrecio.Text;
            SqlDataSourceArticulos.InsertParameters["codigorubro"].DefaultValue = ddlRubro.SelectedValue;
            SqlDataSourceArticulos.Insert();
            Label4.Text = "se efectuó la carga";
            txtDescripcion.Text = "";
            txtPrecio.Text = "";
        }
    }
}