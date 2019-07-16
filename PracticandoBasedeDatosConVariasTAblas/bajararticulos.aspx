<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bajararticulos.aspx.cs" Inherits="PracticandoBasedeDatosConVariasTAblas.bajararticulos" %>

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
            <asp:Button ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBuscar_Click" />
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink><br /><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=TEAMLAPTOP90;Initial Catalog=base1;Integrated Security=True" DeleteCommand="DELETE FROM articulos WHERE (codigo = @codigo)" ProviderName="System.Data.SqlClient">
                <DeleteParameters>
                    <asp:Parameter Name="codigo" />
                </DeleteParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
