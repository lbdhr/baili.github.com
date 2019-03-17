<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YYNewsRelease.aspx.cs" Inherits="Admin_NewsRelease" %>

<%@ Register assembly="CuteEditor" namespace="CuteEditor" tagprefix="CE" %>

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
        <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
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
                    <td style="padding-right: 10px; padding-left: 10px; padding-bottom: 10px; 
                        padding-top: 10px; background-color: white" valign="top" >
                        <div>
                            <table cellpadding="0" cellspacing="0" class="style1" width="100%">
                                <tr>
                                    <td align="right" width="13%">
                                        新闻标题：
                                    </td>
                                    <td width="35%">
                                        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"
                                            ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td align="right" width="15%">
                                        关键字：
                                    </td>
                                    <td width="30%">
                                        <asp:TextBox ID="txtKeyWord" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtKeyWord"
                                            ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        <span style="COLOR: #ff0066">多关键字空格隔开</span></td>
                                </tr>
                                <tr>
                                    <td align="right" width="13%">
                                        &nbsp;新闻类型：
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="120px">
                                            <asp:ListItem Selected="True">云运思考者</asp:ListItem>
                                            <asp:ListItem>云运风向标</asp:ListItem>
                                            <asp:ListItem>云运最前沿</asp:ListItem>
                                            <asp:ListItem>云运小百科</asp:ListItem>
                                            <asp:ListItem>云运万花筒</asp:ListItem>
                                            <asp:ListItem>云运喜欢你</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="right">
                                        &nbsp;标题图片：
                                    </td>
                                    <td>
                                        &nbsp;<asp:FileUpload ID="fileuploadPic" runat="server" />
                                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                                        <table cellpadding="0" cellspacing="0" class="style1" width="100%">
                                            <tr style="FONT-FAMILY: 微软雅黑; FONT-SIZE: 12px">
                                                <td align="right">
                                                    <span style="COLOR: #ff0066">宽*高 170px*130px</span></td>
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
                                        <asp:CheckBox ID="ckTop" runat="server" Text="是否置顶：" TextAlign="Left" />
                                    </td>
                                    <td align="right">
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ckRed" runat="server" Text="是否红色显示：" TextAlign="Left" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="13%">
                                        新闻正文：
                                    </td>
                                    <td colspan="3" align="left" dir="ltr" valign="top">
                            <CE:Editor ID="Editor1" runat="server" AutoConfigure="Simple" EditorWysiwygModeCss="~/example.css"
                                FilesPath="CuteSoft_Client/CuteEditor" Width="97%">
                            </CE:Editor>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Editor1"
                                            ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="13%">
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                        </td>
                                    <td>
                                        &nbsp;
                                        <asp:Button ID="btnSubmit" runat="server" Text="提交" Width="100px" 
                                            onclick="btnSubmit_Click1" />
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </div>
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