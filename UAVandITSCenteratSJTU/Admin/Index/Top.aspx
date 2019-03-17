<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top.aspx.cs" Inherits="Admin_Index_Top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>西南交通大学 交通运输与物流学院 学生组织网站后台管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script language="javascript" type="text/javascript">
        function a() {
            self.opener = null;
            self.close();
        }
    </script>
    <style type="text/css">
        *
        {
            font-size: 12px;
            color: white;
        }
        #logo
        {
            color: white;
        }
        #logo A
        {
            color: white;
        }
        FORM
        {
            margin: 0px;
        }
    </style>
    <script src="Top.files/Clock.js" type="text/javascript"></script>
    <meta content="MSHTML 6.00.2900.5848" name="GENERATOR">
</head>
<body style="background-image: url(../images/bg.gif); margin: 0px; background-repeat: repeat-x">
    <form id="form1" runat="server">
    <div id="logo" style="background-image: url(../images/logo.png); background-repeat: no-repeat">
        <div style="padding-right: 10px; background-position: right 50%; display: block;
            padding-left: 0px; background-image: url(../images/bg_banner_menu.gif); padding-bottom: 0px;
            padding-top: 3px; background-repeat: no-repeat; height: 30px; text-align: right">
            <div style="margin-top: 0px; font-weight: bold; font-size: medium;">
                  无人机应用与智能交通研究中心网站</div>
        </div>
        <div style="display: block; height: 54px">
        </div>
        <div style="background-image: url(../images/bg_nav.gif); background-repeat: repeat-x;
            height: 30px">
            <table cellspacing="0" cellpadding="0" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <div>
                                <img src="Top.files/nav_pre.gif" align="absMiddle">
                                欢迎使用 <span id="lblBra"></span><span id="lblDep">上海交通大学 无人机应用与智能交通研究中心 网站后台管理系统</span> <a onclick='a()'
                                    href='#'></a>
                            </div>
                        </td>
                        <td align="right" width="70%">
                            <span style="padding-right: 50px"><a href="javascript:history.go(-1);">
                                <img src="Top.files/nav_back.gif" align="absMiddle" border="0">后退</a> <a href="javascript:history.go(1);">
                                    <img src="Top.files/nav_forward.gif" align="absMiddle" border="0">前进</a> <a href="../LogOut.aspx"
                                        target="_top">
                                        <img src="Top.files/nav_changePassword.gif" align="absMiddle" border="0">注销</a>
                                <a href="../updatePwd.aspx" target="mainFrame">
                                    <img src="Top.files/nav_resetPassword.gif" align="absMiddle" border="0">修改密码</a>
                                <a href="../Help.htm" target="mainFrame">
                                    <img src="Top.files/nav_help.gif" align="absMiddle" border="0">帮助</a>
                                <img src="Top.files/menu_seprator.gif" align="absMiddle">
                                <span id="clock"></span></span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <script type="text/javascript">
        var clock = new Clock();
        clock.display(document.getElementById("clock"));
    </script>
    </form>
</body>
</html>
