<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TecahersInfo.aspx.cs" Inherits="TecahersInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="AccessDataSource1"
            RepeatColumns="4" RepeatDirection="Horizontal" Width="100%">
            <ItemTemplate>
                <a href='<%# "TeachersInfoDetail.aspx?tecid=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'>
                    <img style="width: 160px; height: 130px;" src='<%#"Uploads/".ToString()+ DataBinder.Eval(Container.DataItem,"TPicUrl").ToString()%>'></img>
                    <br />
                    <asp:Label ID="OrgNameLabel" runat="server" Text='<%# Eval("TName") %>' />
                </a>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/OrgData.mdb"
            SelectCommand="SELECT * FROM [TeachersInfo]"></asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
