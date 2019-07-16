<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacionarticulos.aspx.cs" Inherits="PracticandoBasedeDatosConVariasTAblas.modificacionarticulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Código de artículo a buscar: "></asp:Label>
            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br /><br />

            <asp:SqlDataSource ID="SqlDataSourceArticulos" runat="server" ConnectionString="Data Source=TEAMLAPTOP90;Initial Catalog=base1;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT descripcion, precio, codigorubro FROM articulos WHERE (codigo = @codigo)" UpdateCommand="UPDATE articulos SET descripcion = @descripcion, precio = @precio, codigorubro = @codigorubro WHERE (codigo = @codigo)">
                <SelectParameters>
                    <asp:Parameter Name="codigo" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="descripcion" />
                    <asp:Parameter Name="precio" />
                    <asp:Parameter Name="codigorubro" />
                    <asp:Parameter Name="codigo" />
                </UpdateParameters>
            </asp:SqlDataSource><br />

            <asp:Label ID="Label3" runat="server" Text="Descripción: "></asp:Label>
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="Label4" runat="server" Text="Precio: "></asp:Label>
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="Label5" runat="server" Text="Modificar: "></asp:Label>
            <asp:DropDownList ID="ddlModificar" runat="server" DataSourceID="SqlDataSourceRubros" DataTextField="descripcion" DataValueField="codigo"></asp:DropDownList><br /><br />

            <asp:SqlDataSource ID="SqlDataSourceRubros" runat="server" ConnectionString="Data Source=TEAMLAPTOP90;Initial Catalog=base1;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT codigo, descripcion FROM rubros"></asp:SqlDataSource>

            <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label><br /><br /><br />

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Text="Retornar"></asp:HyperLink>
        </div>
    </form>
</body>
</html>
