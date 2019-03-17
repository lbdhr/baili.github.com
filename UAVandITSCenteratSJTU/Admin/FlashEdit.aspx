<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FlashEdit.aspx.cs" Inherits="Admin_FlashEdit" %>

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
                        <table cellpadding="0" cellspacing="0" class="style1" width="100%">
                            <tr style="font-family: 微软雅黑; font-size: 12px;">
                                <td align="right" width="13%">
                                    Flash图片编号：
                                </td>
                                <td width="35%">
                                    <asp:Label ID="lblflahid" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td align="right" width="15%">
                                    &nbsp;</td>
                                <td width="30%">
                                    &nbsp;</td>
                            </tr>
                            <tr style="font-family: 微软雅黑; font-size: 12px;">
                                <td align="right" width="13%">
                                    &nbsp;Flash标题：
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFlashTitle" runat="server" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtFlashTitle" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                                <td align="right">
                                    &nbsp;Flash图片：
                                </td>
                                <td>
                                    &nbsp;<asp:FileUpload ID="fileuploadPic" runat="server" Width="200px" />
                                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr style="font-family: 微软雅黑; font-size: 12px;">
                                <td align="right" width="13%">
                                    Flash网页链接地址：
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFlashUrl" runat="server" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtFlashUrl" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                        <table cellpadding="0" cellspacing="0" class="style1" width="100%">
                                            <tr style="FONT-FAMILY: 微软雅黑; FONT-SIZE: 12px">
                                                <td align="right">
                                                    <span style="COLOR: #ff0066">宽*高 690px*340px</span></td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" width="13%">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Button ID="btnReturn" runat="server" CausesValidation="False" Text="返回" OnClick="btnReturn_Click"
                                        Width="100px" />
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Button ID="btnSubmit" runat="server" Text="更改" Width="100px" 
                                        OnClick="btnSubmit_Click" />
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
