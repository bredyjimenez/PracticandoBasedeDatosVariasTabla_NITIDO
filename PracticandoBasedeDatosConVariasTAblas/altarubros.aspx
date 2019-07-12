<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altarubros.aspx.cs" Inherits="PracticandoBasedeDatosConVariasTAblas.altarubros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre del rubro: " AssociatedControlID="txtRubro"></asp:Label>
            <asp:TextBox ID="txtRubro" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnAlta" runat="server" Text="Alta" OnClick="btnAlta_Click" /><br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Text="Retornar"></asp:HyperLink><br /><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=TEAMLAPTOP90;Initial Catalog=base1;Integrated Security=True" InsertCommand="INSERT INTO rubros(descripcion) VALUES (@descripcion)" ProviderName="System.Data.SqlClient">
                <InsertParameters>
                    <asp:Parameter Name="descripcion" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
