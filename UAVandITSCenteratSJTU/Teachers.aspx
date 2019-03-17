<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teachers.aspx.cs" Inherits="Teachers" %>

<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:header ID="header1" runat="server" />
    <div>
        <ul>
            <li>
                <asp:HyperLink runat="server" Target="rightFrame" ID="HyperLink1" Text='工作公告' NavigateUrl="~/TeachersNewsList.aspx"></asp:HyperLink><br />
            </li>
            <li>
                <asp:HyperLink runat="server" Target="rightFrame" ID="LinkButton2" Text='教师信息' NavigateUrl="~/TecahersInfo.aspx"></asp:HyperLink><br />
            </li>
            <li>
                <asp:HyperLink runat="server" Target="rightFrame" ID="LinkButton3" Text='成果展示' NavigateUrl="~/TeachersAward.aspx"></asp:HyperLink><br />
            </li>
        </ul>
        <iframe id="Iframe1" runat="server" src="TeachersNewsList.aspx"
            frameborder="no" name="rightFrame" style="width: 814px; height: 383px"></iframe>
    </div>
    </form>
</body>
</html>
