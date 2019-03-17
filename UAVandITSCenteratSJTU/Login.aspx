<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户登录</title>
    <link href="images/Default.css" type="text/css" rel="stylesheet">
    <link href="images/xtree.css" type="text/css" rel="stylesheet">
    <link href="images/User_Login.css" type="text/css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <meta content="MSHTML 6.00.6000.16674" name="GENERATOR">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body id="userlogin_body">
    <form id="form1" runat="server">
    <div>
    </div>
    <div id="user_login">
        <dl>
            <dd id="user_top">
                <ul>
                    <li class="user_top_l"></li>
                    <li class="user_top_c"></li>
                    <li class="user_top_r"></li>
                </ul>
                <dd id="user_main">
                    <ul>
                        <li class="user_main_l"></li>
                        <li class="user_main_c">
                            <div class="user_main_box">
                                <ul>
                                    <li class="user_main_text">用户名： </li>
                                    <li class="user_main_input">
                                        <asp:TextBox ID="txtName" runat="server" CausesValidation="True" class="TxtUserNameCssClass"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                            ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </li>
                                </ul>
                                <ul>
                                    <li class="user_main_text">密&nbsp;&nbsp;&nbsp; 码： </li>
                                    <li class="user_main_input">
                                        <asp:TextBox ID="txtPwd" runat="server" class="TxtPasswordCssClass" CausesValidation="True"
                                            TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                                            ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </li>
                                </ul>
                                <ul>
                                    <li class="user_main_text">&nbsp;</li>
                                    <li class="user_main_input">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Selected="True" Value="1">管理员</asp:ListItem>
                                            <asp:ListItem Value="2">学生</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </li>
                                </ul>
                                <ul>
                                    <li class="user_main_text">验证码：&nbsp;</li>
                                    <li class="user_main_input">
                                        <table cellpadding="0" cellspacing="0" class="style1">
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtCheckCode" runat="server" Width="90px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCheckCode"
                                                        ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td>
                                                <td>
                                                    <img id="vcodeimg" style="float: right; padding-top: 0px; padding-left: 20px;" alt="验证码"
                                                        onclick="document.getElementById('vcodeimg').src='image.aspx?time=' + Math.random()"
                                                        src="image.aspx" />
                                                </td>
                                            </tr>
                                        </table>
                                        <%-- <div style=" float:right; margin-top:7px; margin-left:20px;"></div>--%>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="user_main_r">
                            <asp:ImageButton ID="ImageButton1" runat="server" class="IbtnEnterCssClass" Style="border-top-width: 0px;
                                border-left-width: 0px; border-bottom-width: 0px; border-right-width: 0px" OnClick="btnLogin_Click"
                                Text="登录" type="image" src="images/user_botton.gif" name="IbtnEnter" />
                        </li>
                    </ul>
                    <dd id="user_bottom">
                        <ul>
                            <li class="user_bottom_l"></li>
                            <li class="user_bottom_c"></li>
                            <li class="user_bottom_r"></li>
                        </ul>
                    </dd>
        </dl>
    </div>
    <span id="ValrUserName" style="display: none; color: red"></span><span id="ValrPassword"
        style="display: none; color: red"></span><span id="ValrValidateCode" style="display: none;
            color: red"></span>
    <div id="ValidationSummary1" style="display: none; color: red">
    </div>
    <div>
    </div>
    </form>
</body>
</html>
