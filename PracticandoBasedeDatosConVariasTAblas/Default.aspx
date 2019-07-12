<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PracticandoBasedeDatosConVariasTAblas.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/altarubros.aspx" Text="Alta de rubros"></asp:HyperLink><br /><br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/altaarticulos.aspx" Text="Alta de articulos"></asp:HyperLink><br /><br />
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/consultaarticulos.aspx" Text="Consulta de articulos"></asp:HyperLink><br /><br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/bajararticulos.aspx" Text="Baja de articulos"></asp:HyperLink><br /><br />
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/modificacionarticulos.aspx" Text="Modificaciones de articulos"></asp:HyperLink><br /><br />
        </div>
    </form>
</body>
</html>
