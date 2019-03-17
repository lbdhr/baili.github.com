<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllOrgsList.aspx.cs" Inherits="AllOrgsList" %>
<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <uc1:header ID="header1" runat="server" />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="AccessDataSource1"
            RepeatColumns="4" RepeatDirection="Horizontal" Width="100%">
            <ItemTemplate>
                <a href='<%# "DaoLeft.aspx?orgid=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'>
                    <asp:Label ID="OrgNameLabel" runat="server" Text='<%# Eval("OrgName") %>' />
                    <br />
                    <img style="width: 160px; height: 130px;" src='<%#"Uploads/".ToString()+ DataBinder.Eval(Container.DataItem,"OrgPicUrl").ToString()%>'></img>
                </a>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/OrgData.mdb"
            SelectCommand="SELECT * FROM [Orgs] WHERE ([ID] &gt;= ?)">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="ID" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
