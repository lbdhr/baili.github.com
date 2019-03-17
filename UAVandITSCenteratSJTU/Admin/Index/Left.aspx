<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="Admin_Index_Left" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>无标题页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style type="text/css">
        .
        {
            font-size: 18px;
        }
        #menuTree A
        {
            color: #566984;
            text-decoration: none;
            font-size: 15px;
        }
    </style>
    <script src="Left.files/TreeNode.js" type="text/javascript"></script>
    <script src="Left.files/Tree.js" type="text/javascript"></script>
    <meta content="MSHTML 6.00.2900.5848" name="GENERATOR">
</head>
<body style="background-position-y: -120px; background-image: url(../images/bg.gif);
    background-repeat: repeat-x">
    <form id="form1" runat="server">
    <table height="100%" cellspacing="0" cellpadding="0" width="100%">
        <tbody>
            <tr>
                <td width="10" height="29">
                    <img src="Left.files/bg_left_tl.gif">
                </td>
                <td style="font-size: 18px; background-image: url(../images/bg_left_tc.gif); color: white;">
                    主菜单
                </td>
                <td width="10">
                    <img src="Left.files/bg_left_tr.gif">
                </td>
            </tr>
            <tr>
                <td style="background-image: url(../images/bg_left_ls.gif)">
                </td>
                <td id="menuTree" style="padding-right: 10px; padding-left: 10px; padding-bottom: 10px;
                    padding-top: 10px; height: 100%; background-color: white; font-size: 18px;" valign="top">
                </td>
                <td style="background-image: url(../images/bg_left_rs.gif)">
                </td>
            </tr>
            <tr style="overflow:hidden; background-color:White;">
                <td width="10">
                    <img src="Left.files/bg_left_bl.gif">
                </td>
                <td >
                </td>
                <td width="10">
                    <img src="Left.files/bg_left_br.gif">
                </td>
            </tr>
        </tbody>
    </table>
    <%=javascript.ToString() %>
        
      </form>
</body>
</html>
