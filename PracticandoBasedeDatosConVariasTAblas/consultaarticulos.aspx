<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaarticulos.aspx.cs" Inherits="PracticandoBasedeDatosConVariasTAblas.consultaarticulos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingrese el código del artículos: "></asp:Label>
            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink><br /><br /><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=TEAMLAPTOP90;Initial Catalog=base1;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT ar.descripcion AS descriarticulo, ar.precio, ru.descripcion AS descrirubro FROM articulos AS ar INNER JOIN rubros AS ru ON ru.codigo = ar.codigorubro WHERE (ar.codigo = @codigo)">
                <SelectParameters>
                    <asp:Parameter Name="codigo" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
