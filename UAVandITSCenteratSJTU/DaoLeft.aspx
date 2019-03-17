<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DaoLeft.aspx.cs" Inherits="DaoLeft" %>

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
        <div id="section_sub">
            <div id="flashblock">
                <div class="figure">
                    <asp:Image ID="Image1" runat="server"   alt="图片" Height="240px" Width="715px"/>
                </div>
            </div>
            <div>
                <div style="text-align: center; margin-top: 20px; margin-left:10px; margin-bottom: 20px; float: left;
                    width: 100%;">
                    <asp:DataList ID="DataList2" runat="server" DataKeyField="ID" DataSourceID="AccessDataSource2">
                        <ItemTemplate>
                            <iframe marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="rightFrame"
                                name="rightFrame" onload="javascript:dyniframesize('rightFrame');" src='<%# "IntroDetail.aspx?navid=".ToString() +DataBinder.Eval(Container.DataItem,"ID")+"&hassons=".ToString()+DataBinder.Eval(Container.DataItem,"HasSons")+"&selfurl=".ToString()+DataBinder.Eval(Container.DataItem,"Url")%>'>
                            </iframe>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <%--<asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <table style="margin-left: 10px;" class="tabs">
                            <tr>
                                <td>
                                    <img src="images/d.jpg" />
                                </td>
                                <td style="width: 85%;">
                                    &nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor='<%# Change(DataBinder.Eval(Container.DataItem,"NewsIsRed").ToString())%>'
                                        ToolTip='<%# DataBinder.Eval(Container.DataItem,"NewsTitle").ToString()%>' Target="_blank"
                                        NavigateUrl='<%# "NewsDetial.aspx?type=news&ID=".ToString()+DataBinder.Eval(Container.DataItem,"ID")+"&corder=".ToString()+DataBinder.Eval(Container.DataItem,"NewsType")%>'> <%#ChageString( DataBinder.Eval(Container.DataItem,"NewsTitle").ToString())%></asp:HyperLink>
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
                        <asp:Label ID="Label3" runat="server" Width="420px" Text=""></asp:Label>
                        请选择页数
                        <asp:DropDownList ID="PageCount" AutoPostBack="true" OnTextChanged="PageIndex" runat="server">
                        </asp:DropDownList>
                        第<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>页/共<asp:Label ID="Label2"
                            runat="server" Text="Label"></asp:Label>页
                    </FooterTemplate>
                </asp:Repeater>--%>
                <br />
            </div>
        </div>
        <div id="aside_sub">
            <h1>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=fathernavname.ToString() %></h1>
            <ul>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="AccessDataSource1">
                    <ItemTemplate>
                        <li><a id="A1" runat="server" target="rightFrame" href='<%# "IntroDetail.aspx?navid=".ToString() +DataBinder.Eval(Container.DataItem,"ID")+"&hassons=".ToString()+DataBinder.Eval(Container.DataItem,"HasSons")+"&selfurl=".ToString()+DataBinder.Eval(Container.DataItem,"Url") %>'>
                            <%# Eval("SonNav") %></a><br />
                        </li>
                    </ItemTemplate>
                </asp:DataList>
            </ul>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/OrgData.mdb"
                SelectCommand="SELECT * FROM [NavDetail] WHERE ([FatherID] = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="FatherID" QueryStringField="fathernav"
                        Type="Int32" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/OrgData.mdb"
                SelectCommand="SELECT top 1 * FROM [NavDetail] WHERE ([FatherID] = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="FatherID" QueryStringField="fathernav"
                        Type="Int32" />
                </SelectParameters>
            </asp:AccessDataSource>
        </div>
    </div>
    <uc2:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>
