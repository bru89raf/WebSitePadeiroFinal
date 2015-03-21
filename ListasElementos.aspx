<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListasElementos.aspx.cs" Inherits="ListasElementos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 188px;
        }
        .style2
        {
            width: 188px;
            height: 33px;
        }
        .style3
        {
            height: 33px;
        }
        .style4
        {
            width: 618px;
        }
        .style5
        {
            height: 33px;
            width: 618px;
        }
        .style6
        {
            width: 198px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Lista Tudo<br />
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style1">
        Lista Categorias</td>
                <td class="style4" colspan="2">
                    <asp:DropDownList ID="DDLListaAllCategorias" runat="server" Width="100%">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                </td>
                <td class="style5" colspan="2">
                </td>
                <td class="style3" colspan="2">
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4" colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4" colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4" colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Button ID="btnEditar" runat="server" onclick="btnEditar_Click" 
                        Text="Editar" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Remover" />
                </td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
