<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentsInfo.aspx.cs" Inherits="Admin_TeachersInfo" %>

<%@ Register Assembly="CuteEditor" Namespace="CuteEditor" TagPrefix="CE" %>
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
                    <td style="padding-right: 10px; padding-left: 10px; padding-bottom: 10px; padding-top: 10px;
                        background-color: white" valign="top">
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
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="100px">
                                            <asp:ListItem Selected="True">男</asp:ListItem>
                                            <asp:ListItem>女</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="13%">
                                        籍贯：
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtNation" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        入学年级：
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Width="100px">
                                            <asp:ListItem Selected="True">2010级</asp:ListItem>
                                            <asp:ListItem>2011级</asp:ListItem>
                                            <asp:ListItem>2012级</asp:ListItem>
                                            <asp:ListItem>2013级</asp:ListItem>
                                            <asp:ListItem>2014级</asp:ListItem>
                                            <asp:ListItem>2015级</asp:ListItem>
                                            <asp:ListItem>2016级</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="13%">
                                        导师：
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtTeacher" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        电子邮箱：
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="13%">
                                        专业：
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtInterst" runat="server"></asp:TextBox>
                                    </td>
                                    <td align="right">
                                        攻读学位：
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Width="100px">
                                            <asp:ListItem Selected="True">博士后</asp:ListItem>
                                            <asp:ListItem>博士</asp:ListItem>
                                            <asp:ListItem>硕士</asp:ListItem>
                                        </asp:DropDownList>
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
                                        <asp:Button ID="btnSubmit" runat="server" Text="提交" Width="100px" OnClick="btnSubmit_Click1" />
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
