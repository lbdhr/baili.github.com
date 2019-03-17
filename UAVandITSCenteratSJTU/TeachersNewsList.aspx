<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeachersNewsList.aspx.cs"
    Inherits="TeachersNewsList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <table style="margin-left: 10px;" class="tabs">
                    <tr>
                        <td>
                            <img src="images/d.jpg" />
                        </td>
                        <td style="width: 90%;">
                            &nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor='<%# Change(DataBinder.Eval(Container.DataItem,"NewsIsRed").ToString())%>'
                                ToolTip='<%# DataBinder.Eval(Container.DataItem,"NewsTitle").ToString()%>' Target="rightFrame"
                                NavigateUrl='<%# "NewsDetial.aspx?type=news&ID=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'> <%#ChageString( DataBinder.Eval(Container.DataItem,"NewsTitle").ToString())%></asp:HyperLink>
                        </td>
                        <td>
                            &nbsp;
                            <label id="Name">
                                <%# DataBinder.Eval(Container.DataItem, "NewsDate", "{0:yyyy/MM/dd}")%></label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <FooterTemplate>
                <asp:Label ID="Label3" runat="server" Width="520px" Text=""></asp:Label>
                请选择页数
                <asp:DropDownList ID="PageCount" AutoPostBack="true" OnTextChanged="PageIndex" runat="server">
                </asp:DropDownList>
                第<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>页/共<asp:Label ID="Label2"
                    runat="server" Text="Label"></asp:Label>页
            </FooterTemplate>
        </asp:Repeater>
        <iframe marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="rightFrame"
            name="rightFrame" onload="javascript:dyniframesize('rightFrame');" width="100%">
        </iframe>
    </div>
    </form>
</body>
</html>
