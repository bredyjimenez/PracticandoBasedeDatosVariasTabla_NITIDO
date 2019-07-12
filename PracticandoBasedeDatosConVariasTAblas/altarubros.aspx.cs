using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticandoBasedeDatosConVariasTAblas
{
    public partial class altarubros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["descripcion"].DefaultValue = txtRubro.Text;
            SqlDataSource1.Insert();
            Label2.Text = "Se efectuó la carga";
            txtRubro.Text = "";
        }
    }
}