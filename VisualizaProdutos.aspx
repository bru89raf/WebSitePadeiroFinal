<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VisualizaProdutos.aspx.cs" Inherits="VisualizaProdutos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 256px;
        }
        .style2
        {
            width: 413px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        VER TODOS OS PRODUTOS<br />
        <br />
        <table style="width: 69%; height: 108px;">
            <tr>
                <td class="style1">
                    Seleccionar Categoria</td>
                <td class="style2">
                    <asp:DropDownList ID="DDLSeleccionaCategoria" runat="server" Width="100%" 
                        onselectedindexchanged="DDLSeleccionaCategoria_SelectedIndexChanged" AutoPostBack=true>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Seleccionar Produto</td>
                <td class="style2">
                    <asp:DropDownList ID="DDLSeleccionaProduto" runat="server" Width="100%" 
                        AutoPostBack=true 
                        onselectedindexchanged="DDLSeleccionaProduto_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td rowspan="4">
                    <asp:Image ID="ImageProduto" runat="server" Height="106px" Width="205px" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Preço Atual</td>
                <td class="style2">
                    <asp:Label ID="LabelPrecoAtual" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Preço KG</td>
                <td class="style2">
                    <asp:Label ID="LabelPrecoKG" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="LabelMensagem" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
