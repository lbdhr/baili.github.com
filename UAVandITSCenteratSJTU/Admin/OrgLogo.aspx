<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrgLogo.aspx.cs" Inherits="Admin_OrgLogo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../Styles/styleback.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
    </style>
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
                                <td align="right" width="13%" valign="top">
                                    组织logo：
                                </td>
                                <td width="35%">
                                    <asp:Image ID="Image1" runat="server" Height="300px" Width="270px" />
                                </td>
                                <td align="right" width="10%" valign="top">
                                    新logo：
                                </td>
                                <td width="30%">
                                    <asp:Image ID="Image2" runat="server" Height="300px" Width="270px" />
                                </td>
                            </tr>
                            <tr style="font-family: 微软雅黑; font-size: 12px;">
                                <td align="right" width="13%" class="style1">
                                    &nbsp;
                                </td>
                                <td class="style1">
                                    </td>
                                <td align="right" class="style1">
                                    &nbsp;上传新logo：</td>
                                <td class="style1">
                                    &nbsp;<asp:FileUpload ID="fileuploadPic" 
                                        runat="server" Width="200px"  />
                                    <asp:Button ID="btnSubmit0" runat="server" Text="上传图片" Width="100px" 
                                        OnClick="btnSubmit_Click" />
                                </td>
                            </tr>
                            <tr style="font-family: 微软雅黑; font-size: 12px;">
                                <td align="right" width="13%" class="style1">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                                <td align="right" class="style1">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" width="13%">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Button ID="btnSubmit444" runat="server" Text="保存修改" Width="100px" 
                                        OnClick="btnSubmit444_Click" />
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
