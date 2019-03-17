<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminEdit.aspx.cs" Inherits="Admin_AdminEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/styleback.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-position-y: -120px; background-image: url(images/bg.gif);
    background-repeat: repeat-x">
    <form id="form1" runat="server">
    <div>
        <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0" style="font-family: 微软雅黑;
            font-size: 12px;">
            <tbody>
                <tr style="background-image: url(images/bg_header.gif); background-repeat: repeat-x;
                    background-position: 40% bottom;" height="10">
                    <td width="10" style="background-position: 50% bottom; background-image: url(images/main_hl.gif)">
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td style="background-position: 50% bottom; background-image: url(images/main_rc.gif)"
                        width="10">
                    </td>
                </tr>
                <tr>
                    <td style="background-image: url(images/main_ls.gif)">
                        &nbsp;
                    </td>
                    <td style="padding-right: 10px; padding-left: 10px; padding-bottom: 10px; padding-top: 10px;
                        background-color: white" valign="top">
                        <table cellpadding="0" cellspacing="0" class="style1">
                            <tr>
                                <td align="right" width="50%">
                                    用户名：
                                </td>
                                <td>
                                    <asp:Label ID="lblName" runat="server" Width="200px"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    密码：
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPwd" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                                        ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    重复密码：
                                </td>
                                <td>
                                    <asp:TextBox ID="txtRPwd" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRPwd"
                                        ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd"
                                        ControlToValidate="txtRPwd" ErrorMessage="密码不同！" ForeColor="Red"></asp:CompareValidator>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Button ID="btnRe" runat="server" CausesValidation="False" OnClick="btnRe_Click"
                                        Text="返回" Width="100px" />
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="修改" Width="100px" />
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="background-image: url(images/main_rs.gif)">
                    </td>
                </tr>
                <tr style="background-image: url(images/main_fs.gif); background-repeat: repeat-x"
                    height="10">
                    <td style="background-image: url(images/main_lf.gif)">
                    </td>
                    <td style="background-image: url(images/main_fs.gif)">
                    </td>
                    <td style="background-image: url(images/main_rf.gif)">
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
