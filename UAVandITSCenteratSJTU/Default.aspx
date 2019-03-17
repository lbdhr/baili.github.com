<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<%@ Register Src="footer.ascx" TagName="Footer" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>上海交通大学-无人机应用与智能交通研究中心</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="上海交通大学,无人机,智能交通,UAV,ITS" />
    <link rel="stylesheet" href="images/css.css" />
    <script language="javascript">        AC_FL_RunContent = 0;</script>
    <script src="js/AC_RunActiveContent.js" language="javascript"></script>
</head>
<body>
    <form id="form2" runat="server">
    <div class="hg">
        <div id="header">
        </div>
    </div>
    <div id="container">
        <div id="nav">
            <uc1:header ID="header1" runat="server" />
            <%--<div class="search">
                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                <asp:LinkButton ID="linkbtnSearch" runat="server" class="inputsearch">查询</asp:LinkButton>
            </div>--%>
        </div>
        <div style="margin-top: 20px; margin-bottom: 20px;">
            <script language="javascript">
                if (AC_FL_RunContent == 0) {
                    alert("此页需要 AC_RunActiveContent.js。在 Flash 中，运行“命令”菜单中的“应用活动内容更新”，以将 AC_RunActiveContent.js 复制到 HTML 输出文件夹。");
                } else {
                    AC_FL_RunContent(
			'codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0',
			'width', '690',
			'height', '340',
			'src', 'viewer',
			'quality', 'high',
			'pluginspage', 'http://www.macromedia.com/go/getflashplayer',
			'align', 'middle',
			'play', 'true',
			'loop', 'false',
			'scale', 'showall',
			'wmode', 'window',
			'devicefont', 'false',
			'id', 'viewer',
			'bgcolor', '#ffffff',
			'name', 'viewer',
			'menu', 'false',
			'allowScriptAccess', 'sameDomain',
			'movie', 'viewer',
			'salign', '',
			'FlashVars', 'xmlPath=xml/viewerData.xml'
			);
                }
            </script>
            <noscript>
                <p>
                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                        width="690" height="340">
                        <param name="movie" value="viewer.swf">
                        <param name="quality" value="high">
                        <embed src="viewer.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                            type="application/x-shockwave-flash" width="690" height="340"></embed>
                    </object>
                </p>
            </noscript>
        </div>
        <div id="section">
            <div>
                <div>
                    <h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;研&nbsp;究&nbsp;所&nbsp;简&nbsp;介<span class="sty"></span><div
                            class="more">
                            <a href="DaoLeft.aspx?fathernav=1&hassons=0">more</a></div>
                    </h2>
                </div>
                <div>
                    <div class="figure">
                        <img class="newimg" src="images/demo.jpg">
                    </div>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="DaoLeft.aspx?fathernav=1&hassons=0"> 
                    </asp:HyperLink>
                    <%--  <ul class="new">
                        <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSource6">
                            <ItemTemplate>
                                <li>
                                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor='<%# Change(DataBinder.Eval(Container.DataItem,"NewsIsRed").ToString())%>'
                                        ToolTip='<%# DataBinder.Eval(Container.DataItem,"NewsTitle").ToString()%>' Target="_blank"
                                        NavigateUrl='<%# "NewsDetial.aspx?type=news&ID=".ToString()+DataBinder.Eval(Container.DataItem,"ID")+"&corder=".ToString()+DataBinder.Eval(Container.DataItem,"NewsType")%>'> <%# DataBinder.Eval(Container.DataItem,"NewsTitle")%>
                      <time>&nbsp;&nbsp;&nbsp;[<%# DataBinder.Eval(Container.DataItem, "NewsDate", "{0:yyyy/MM/dd}")%>]</time>
                                    </asp:HyperLink>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT top 7 * FROM [News] WHERE ([NewsType] = @NewsType) ORDER BY  [NewsIsTop] DESC,[NewsIsRed] DESC,[ID] DESC">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="21" Name="NewsType" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </ul>--%>
                </div>
                <div class="clear">
                </div>
            </div>
            <div style="width: 47%; float: left;">
                <div>
                    <h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;招&nbsp;生&nbsp;信&nbsp;息<span class="sty"></span><div
                            class="more">
                            <a href="DaoLeft.aspx?fathernav=5&hassons=0">more</a></div>
                    </h2>
                </div>
                <div>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="DaoLeft.aspx?fathernav=5&hassons=0"> 
                    </asp:HyperLink>
                </div>
                <div class="clear">
                </div>
                <%-- <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource5" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <div class="figure">
                            <a href='<%# "NewsDetial.aspx?type=news&ID=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'
                                target="_blank">
                                <img style="width: 150px; height: 130px;" src='<%#"Uploads/".ToString()+ DataBinder.Eval(Container.DataItem,"NewsPicUrl").ToString()%>'></a>
                            <div class="figcaption">
                                <a style="color: black" href='<%# "NewsDetial.aspx?type=news&ID=".ToString()+DataBinder.Eval(Container.DataItem,"ID")+"&corder=".ToString()+DataBinder.Eval(Container.DataItem,"NewsType")%>'
                                    target="_blank" title='<%#DataBinder.Eval(Container.DataItem,"NewsTitle").ToString()%>'>
                                    <%# DataBinder.Eval(Container.DataItem,"NewsTitle")%>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT top 4 * FROM [News] WHERE ([NewsPicUrl] &lt;&gt; @NewsPicUrl2 AND [NewsType]=14) ORDER BY [ID] DESC">
                    <SelectParameters>
                        <asp:Parameter DefaultValue=" " Name="NewsPicUrl2" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>--%>
            </div>
            <div style="width: 47%; float: right; margin-left: 3%;">
                <div>
                    <h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;科&nbsp;研&nbsp;项&nbsp;目<span class="sty"></span><div
                            class="more">
                            <a href="DaoLeft.aspx?fathernav=3&hassons=0">more</a></div>
                    </h2>
                </div>
                <div>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="DaoLeft.aspx?fathernav=3&hassons=0"> 
                    </asp:HyperLink>
                </div>
                <div class="clear">
                </div>
            </div>
        </div>
        <div id="aside">
            <div class="article2">
                <div>
                    <h2>
                        研究所动态<div class="more">
                            <a href="DaoLeft.aspx?fathernav=2&hassons=1&navid=5">more</a></div>
                    </h2>
                </div>
                <div>
                    <ul>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <li>
                                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor='<%# Change(DataBinder.Eval(Container.DataItem,"NewsIsRed").ToString())%>'
                                        Target="rightFrame" ToolTip='<%# DataBinder.Eval(Container.DataItem,"NewsTitle").ToString()%>'
                                        NavigateUrl='<%# "NewsDetial.aspx?type=news&ID=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'> <%#ChageString( DataBinder.Eval(Container.DataItem,"NewsTitle").ToString())%></asp:HyperLink>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT top 6 * FROM [News] WHERE ([NewsWriter] = ?)  ORDER BY [NewsIsTop] ASC,[NewsIsRed] ASC,[ID] DESC"
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="研究所动态" Name="NewsWriter" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </ul>
                </div>
            </div>
            <div class="article">
                <div>
                    <h2>
                        课题组通知<div class="more">
                            <a href="DaoLeft.aspx?fathernav=2&hassons=1&navid=6">more</a></div>
                    </h2>
                </div>
                <div>
                    <ul>
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <li>
                                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor='<%# Change(DataBinder.Eval(Container.DataItem,"NewsIsRed").ToString())%>'
                                        Target="rightFrame" ToolTip='<%# DataBinder.Eval(Container.DataItem,"NewsTitle").ToString()%>'
                                        NavigateUrl='<%# "NewsDetial.aspx?type=news&ID=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'> <%#ChageString( DataBinder.Eval(Container.DataItem,"NewsTitle").ToString())%></asp:HyperLink>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT top 6 * FROM [News] WHERE ([NewsWriter] = ?)  ORDER BY [NewsIsTop] ASC,[NewsIsRed] ASC,[ID] DESC"
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="课题组通知" Name="NewsWriter" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </ul>
                </div>
            </div>
            <div class="article">
                <div>
                    <h2>
                        业内新闻<div class="more">
                            <a href="DaoLeft.aspx?fathernav=2&hassons=1&navid=7">more</a></div>
                    </h2>
                </div>
                <div>
                    <ul>
                        <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                            <ItemTemplate>
                                <li>
                                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor='<%# Change(DataBinder.Eval(Container.DataItem,"NewsIsRed").ToString())%>'
                                        Target="rightFrame" ToolTip='<%# DataBinder.Eval(Container.DataItem,"NewsTitle").ToString()%>'
                                        NavigateUrl='<%# "NewsDetial.aspx?type=news&ID=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'> <%#ChageString( DataBinder.Eval(Container.DataItem,"NewsTitle").ToString())%></asp:HyperLink>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT top 6 * FROM [News] WHERE ([NewsWriter] = ?)  ORDER BY [NewsIsTop] ASC,[NewsIsRed] ASC,[ID] DESC"
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="业内新闻" Name="NewsWriter" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </ul>
                </div>
            </div>
            <div class="article">
                <div>
                    <h2>
                        夏令营消息<div class="more">
                            <a href="DaoLeft.aspx?fathernav=2&hassons=1&navid=8">more</a></div>
                    </h2>
                </div>
                <div>
                    <ul>
                        <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4">
                            <ItemTemplate>
                                <li>
                                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor='<%# Change(DataBinder.Eval(Container.DataItem,"NewsIsRed").ToString())%>'
                                        Target="rightFrame" ToolTip='<%# DataBinder.Eval(Container.DataItem,"NewsTitle").ToString()%>'
                                        NavigateUrl='<%# "NewsDetial.aspx?type=news&ID=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'> <%#ChageString( DataBinder.Eval(Container.DataItem,"NewsTitle").ToString())%></asp:HyperLink>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT top 6 * FROM [News] WHERE ([NewsWriter] = ?)  ORDER BY [NewsIsTop] ASC,[NewsIsRed] ASC,[ID] DESC"
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="夏令营消息" Name="NewsWriter" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <uc2:Footer ID="Footer1" runat="server" />
    </form>
</body>
</html>
