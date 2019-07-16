using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; // importar

namespace PracticandoBasedeDatosConVariasTAblas
{
    public partial class modificacionarticulos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            SqlDataSourceArticulos.SelectParameters["codigo"].DefaultValue = txtCodigo.Text;
            SqlDataSourceArticulos.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlDataSourceArticulos.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
            {
                txtDescripcion.Text = registros["descripcion"].ToString();
                txtPrecio.Text = registros["precio"].ToString();
                ddlModificar.SelectedValue = registros["codigorubro"].ToString();
                // Este código lo elimine porque no fue necesario pero era parte del proyecto
                /*ddlModificar.DataSource = SqlDataSourceRubros;
                ddlModificar.DataTextField = "descripcion";
                ddlModificar.DataValueField = "codigo";
                ddlModificar.DataBind();*/
            }
            else
                Label2.Text = "No existe un artículo con dicho código";
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            SqlDataSourceArticulos.UpdateParameters["descripcion"].DefaultValue = txtDescripcion.Text;
            SqlDataSourceArticulos.UpdateParameters["precio"].DefaultValue = txtPrecio.Text;
            SqlDataSourceArticulos.UpdateParameters["codigorubro"].DefaultValue = ddlModificar.SelectedValue;
            SqlDataSourceArticulos.UpdateParameters["codigo"].DefaultValue = txtCodigo.Text;
            int cant;
            cant = SqlDataSourceArticulos.Update();
            if (cant == 1)
                Label6.Text = "Se modifico el artículo";
            else
                Label6.Text = "No existe el codigo";
        }
    }
}