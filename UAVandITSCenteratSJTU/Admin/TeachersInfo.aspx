<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeachersInfo.aspx.cs" Inherits="Admin_TeachersInfo" %>
<%@ Register assembly="CuteEditor" namespace="CuteEditor" tagprefix="CE" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                                        姓名：
                                    </td>
                                    <td width="35%">
                                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                            ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td align="right" width="15%">
                                        性别： 
                                    </td>
                                    <td width="30%">
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                            Width="100px">
                                            <asp:ListItem Selected="True">男</asp:ListItem>
                                            <asp:ListItem>女</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="13%">
                                        职称：</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                            Width="100px">
                                            <asp:ListItem Selected="True">教授</asp:ListItem>
                                            <asp:ListItem>副教授</asp:ListItem>
                                            <asp:ListItem>讲师</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td align="right">
                                        头像照片：</td>
                                    <td>
                                        <asp:FileUpload ID="fileuploadPic" runat="server" />
                                        <table cellpadding="0" cellspacing="0" class="style1" width="100%">
                                            <tr style="FONT-FAMILY: 微软雅黑; FONT-SIZE: 12px">
                                                <td align="right">
                                                    <span style="COLOR: #ff0066">宽*高 170px*130pxx</span></td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="13%">
                                       联系电话：</td>
                                    <td>
                                        <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        电子邮箱：</td>
                                    <td>
                                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="13%">
                                        详细信息： 
                                    </td>
                                    <td colspan="3" align="left" dir="ltr" valign="top">
                            <CE:Editor ID="Editor1" runat="server" AutoConfigure="Simple" EditorWysiwygModeCss="~/example.css"
                                FilesPath="CuteSoft_Client/CuteEditor" Width="97%">
                            </CE:Editor>
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
