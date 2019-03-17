<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeamTeacher.aspx.cs" Inherits="TeamTeacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        a:link, a:visited
        {
            color: #77BACE;
            text-decoration: none;
        }
        
        a:hover
        {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="AccessDataSource1">
            <ItemTemplate>
                <table style="margin-left: 10px; width: 700px" class="tabs">
                    <tr style="height: 30px;">
                        <td>
                            <img src="images/d.jpg" />
                        </td>
                        <td style="width: 90%; height: 30px;">
                            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Target="rightFrame" ToolTip='<%# DataBinder.Eval(Container.DataItem,"TName").ToString()%>'
                                NavigateUrl='<%# "TeamTeacherInfo.aspx?tecid=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'> <%# DataBinder.Eval(Container.DataItem,"TName").ToString()%></asp:HyperLink>
                            &nbsp; &nbsp; &nbsp;<asp:Label ID="lblTecInfo" runat="server" Font-Size="Small" ForeColor="Silver"
                                Text='<%# "职称：".ToString()+ DataBinder.Eval(Container.DataItem,"TZhiwu").ToString()+"   性别：".ToString()+ DataBinder.Eval(Container.DataItem,"TSex").ToString()%>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/OrgData.mdb"
            SelectCommand="SELECT * FROM [TeachersInfo] ORDER BY [TZhiwu] DESC"></asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
