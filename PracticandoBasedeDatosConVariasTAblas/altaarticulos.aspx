<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altaarticulos.aspx.cs" Inherits="PracticandoBasedeDatosConVariasTAblas.altaarticulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Descripcion: " AssociatedControlID="txtDescripcion"></asp:Label>
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="Label2" runat="server" Text="Precio: " AssociatedControlID="txtPrecio"></asp:Label>
            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="Label3" runat="server" Text="Rubro: "></asp:Label>
            <asp:DropDownList ID="ddlRubro" runat="server" DataSourceID="SqlDataSourceRubros" DataTextField="descripcion" DataValueField="codigo"></asp:DropDownList><br /><br />
            <asp:Button ID="btnAlta" runat="server" Text="Alta" OnClick="btnAlta_Click" /><br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><br /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Text="Retornar"></asp:HyperLink>
        </div><br /><br />
        <asp:SqlDataSource ID="SqlDataSourceRubros" runat="server" ConnectionString="Data Source=TEAMLAPTOP90;Initial Catalog=base1;Integrated Security=True" SelectCommand="SELECT codigo, descripcion FROM rubros"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSourceArticulos" runat="server" ConnectionString="Data Source=TEAMLAPTOP90;Initial Catalog=base1;Integrated Security=True" InsertCommand="INSERT INTO articulos(descripcion, precio, codigorubro) VALUES (@descripcion, @precio, @codigorubro)" ProviderName="System.Data.SqlClient">
            <InsertParameters>
                <asp:Parameter Name="descripcion" />
                <asp:Parameter Name="precio" />
                <asp:Parameter Name="codigorubro" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
