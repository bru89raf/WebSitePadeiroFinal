<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Encomendas.aspx.cs" Inherits="Encomendas" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 235px;
        }
        .style2
        {
            width: 235px;
            height: 29px;
        }
        .style3
        {
            height: 29px;
        }
        .style4
        {
            width: 529px;
        }
        .style5
        {
            height: 29px;
            width: 529px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;ENCOMENDAS<br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    Cliente (login)</td>
                <td class="style4">
                    <asp:TextBox ID="txtDataEntrega" runat="server" Width="100%"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDataEntrega">
                    </asp:CalendarExtender>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Data Entrega</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4">
                    Encomenda</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Categoria</td>
                <td class="style4">
                    <asp:DropDownList ID="DDLVisualizaCategorias" runat="server" Width="100%">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Produto</td>
                <td class="style5">
                    <asp:DropDownList ID="DDLVisualizaProduto" runat="server" Width="100%">
                    </asp:DropDownList>
                </td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td class="style1">
                    Quantidade</td>
                <td class="style4">
                    <asp:TextBox ID="txtQuantidadeEncomenda" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="btnAdicionaEncomenda" runat="server" Text="Add Encomenda" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
