<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsDetial.aspx.cs" Inherits="NewsDetial" %>

<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>上海交通大学-无人机应用与智能交通研究中心</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="上海交通大学,无人机,智能交通,UAV,ITS" />
    <link rel="stylesheet" href="images/css.css" />
    <script type="text/javascript">
        function setHeight() {
            var iframe = document.getElementById("rightFrame");
            try {
                var aHeight = iframe.contentWindow.document.body.scrollHeight;
                var bHeight = iframe.contentWindow.document.documentElement.scrollHeight;
                var height = Math.max(aHeight, bHeight); //取最高值;

                iframe.height = height;
            } catch (e) {
                alert(e.ToString())
            }
        }
    </script>
    <script language="javascript" type="text/javascript">
        function dyniframesize(down) {
            var pTar = null;
            if (document.getElementById) {
                pTar = document.getElementById(down);
            }
            else {
                eval('pTar = ' + down + ';');
            }
            if (pTar && !window.opera) {
                //begin resizing iframe 
                pTar.style.display = "block"
                if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight) {
                    //ns6 syntax 
                    pTar.height = pTar.contentDocument.body.offsetHeight + 20;
                    pTar.width = pTar.contentDocument.body.scrollWidth + 20;
                }
                else if (pTar.Document && pTar.Document.body.scrollHeight) {
                    //ie5+ syntax 
                    pTar.height = pTar.Document.body.scrollHeight;
                    pTar.width = pTar.Document.body.scrollWidth;
                }
            }
        } 
    </script>
</head>
<body>
    <form id="form2" runat="server">
    <div class="hg">
        <div id="header">
        </div>
    </div>
    <div id="container" style="margin-bottom: 40px;">
        <div id="nav">
            <uc1:header ID="Header2" runat="server" />
        </div>
        <div id="section_news">
            <div>
                <div style="text-align: center; margin-top: 20px; margin-left: 10px; margin-bottom: 20px;
                    float: left; width: 100%;">
                    <div>
                        <table cellpadding="0" cellspacing="0" width="98%">
                            <tr>
                                <td align="center" colspan="4">
                                    <asp:Label ID="lblTitle" runat="server" Font-Names="黑体" Font-Size="Large" Width="500px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <asp:Label ID="lblHr" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td width="5%">
                                    &nbsp;
                                </td>
                                <td align="right" style="font-size: small; font-family: 宋体, Arial, Helvetica, sans-serif"
                                    width="20%">
                                    <asp:Label ID="lblType" runat="server" Font-Names="宋体" Font-Size="Small"></asp:Label>
                                    &nbsp;
                                </td>
                                <td align="right" style="font-size: small; font-family: 宋体, Arial, Helvetica, sans-serif"
                                    width="20%">
                                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lblDate" runat="server" Font-Names="宋体" Font-Size="Small"></asp:Label>
                                    &nbsp; &nbsp;&nbsp;
                                </td>
                                <td style="font-family: 宋体, Arial, Helvetica, sans-serif; font-size: small" width="20%">
                                    &nbsp;&nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td style="padding: -1px" class="style2" height="4px">
                                </td>
                                <td style="padding: -1px" class="style2">
                                </td>
                                <td style="padding: -1px" class="style2">
                                </td>
                                <td style="padding: -1px" class="style2">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" style=" text-align:left;">
                                    <asp:Label ID="lblContent" runat="server" CssClass="nooverflow"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <uc2:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>
