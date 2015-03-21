<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NovoProduto.aspx.cs" Inherits="Produtoaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 219px;
        }
        .auto-style3 {
            height: 26px;
            width: 219px;
        }
        .auto-style4 {
            width: 431px;
        }
        .auto-style5 {
            height: 26px;
            width: 431px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Novo Produto<br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">Categoria</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DDLCategoria" runat="server" Width="100%">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Nome produto</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtNomeProduto" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Preço Unidade</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPrecoUnidade" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Preço Kilo</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPrecoKg" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnNovoProduto" runat="server" OnClick="btnNovoProduto_Click" Text="Novo Produto" Width="100%" />
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="LabelMensagem" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

