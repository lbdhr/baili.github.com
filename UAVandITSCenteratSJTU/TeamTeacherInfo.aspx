<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeamTeacherInfo.aspx.cs"
    Inherits="TeamTeacherInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: right;
                    }
        .style3
        {
            text-align: center;
        }
        .style2
        {
            text-align: left;
            width: 20%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style1" width="700">
        <tr>
            <td width="2%">
                &nbsp;
            </td>
            <td class="style1" width="10%">
                &nbsp;
            </td>
            <td class="style3" colspan="2" width="10%">
                &nbsp; &nbsp;
                </td>
        </tr>
        <tr>
            <td width="3%">
                &nbsp;
            </td>
            <td colspan="3" style="text-align: left">
                <strong>基本信息：</strong> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td width="3%">
                &nbsp;</td>
            <td colspan="3" style="text-align: center">
                    <asp:Image ID="imgPic" runat="server" Height="220px" Width="200px" />
            </td>
        </tr>
        <tr style="height:30px">
            <td style="padding: -1px">
                &nbsp;
            </td>
            <td style="padding: -1px" class="style1" width="30%">
                姓&nbsp; 名：
            </td>
            <td style="padding: -1px" class="style2" width="10%">
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </td>
            <td style="padding: -1px" width="10%">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td class="style1" width="10%">
                性&nbsp; 别：
            </td>
            <td class="style2" width="10%">
                <asp:Label ID="lblSex" runat="server"></asp:Label>
            </td>
            <td width="10%">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td class="style1" width="10%">
                职&nbsp; 称：
            </td>
            <td class="style2" width="10%">
                <asp:Label ID="lblZhiwu" runat="server"></asp:Label>
            </td>
            <td width="10%">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td class="style1" width="10%">
                联系电话：
            </td>
            <td class="style2" width="10%">
                <asp:Label ID="lblTel" runat="server"></asp:Label>
            </td>
            <td width="10%">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td class="style1" width="10%">
                电子邮箱：
            </td>
            <td class="style2" width="10%">
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
            <td width="10%">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td colspan="3" style="text-align: left">
                <strong>详细信息：</strong>
             </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td colspan="3" style="text-align: left">
                <asp:Label ID="lblInfo" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
    </form>
</body>
</html>
