<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NovoPadeiro.aspx.cs" Inherits="NovoPadeiro" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 165px;
        }
        .style2
        {
            width: 503px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Novo Padeiro<br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    Nome</td>
                <td class="style2">
                    <asp:TextBox ID="txtNomePadeiro" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Login</td>
                <td class="style2">
                    <asp:TextBox ID="txtLoginPadeiro" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Password</td>
                <td class="style2">
                    <asp:TextBox ID="txtPasswordPadeiro" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="btnAdicionarPadeiro" runat="server" Text="Novo Padeiro" 
                        Width="100%" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="LabelMensagem" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
