using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; // importar

namespace PracticandoBasedeDatosConVariasTAblas
{
    public partial class consultaarticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["codigo"].DefaultValue = txtCodigo.Text;
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
                Label2.Text = "Descripcion:" +
                    registros["descriarticulo"] + "<br>" +
                    "Precio:" + registros["precio"] + "<br>" +
                    "Rubro:" + registros["descrirubro"];
            else
                Label2.Text = "No existe un artículo con dicho código";
        }
    }
}