\<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 207px;
        }
        .auto-style2 {
            width: 207px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Login<br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Username</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Width="100%"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="100%" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    <asp:Label ID="LabelMensagem" runat="server"></asp:Label>
                </td>
                <td class="auto-style3"></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
