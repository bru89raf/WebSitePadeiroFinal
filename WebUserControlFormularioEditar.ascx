<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlFormularioEditar.ascx.cs" Inherits="WebUserControlFormularioEditar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 105px;
        }
        .auto-style2 {
            width: 407px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;<asp:Label ID="LabelAccaoCategoria" runat="server"></asp:Label>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Nome</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtNomeCategoria" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Descrição</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtDescricao" runat="server" Height="98px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnCategoria" runat="server" Text="Nova Categoria" Width="100%" 
                        OnClick="btnAddCategoria_Click" />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="LabelMensagem" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

