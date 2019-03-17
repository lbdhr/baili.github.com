<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeamStudent.aspx.cs" Inherits="TeamStudent" %>

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
    <div style="width: 700px">
        <div style="margin-left: 40px;">
            <p style="text-align: center">
                —————————博士后——————————</p>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1">
                <ItemTemplate>
                    <asp:Label ID="SGradeLabel" runat="server" Text='<%# Eval("SGrade") %>' />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="AccessDataSource2">
                        <ItemTemplate>
                            <a id="A1" runat="server" title='<%#Eval("SName").ToString() %>' href='<%# "TeamStudentInfo.aspx?stuid=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'>
                                <%#Eval("SName").ToString() %></a>&nbsp;&nbsp;&nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/OrgData.mdb"
                        SelectCommand="SELECT [ID],[SName] FROM [StudentsInfo] WHERE ([SGrade] = ?) and SStudy='博士后'">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="SGradeLabel" Name="SGrade" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                </ItemTemplate>
            </asp:DataList>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/OrgData.mdb"
                SelectCommand="SELECT distinct(SGrade) FROM [StudentsInfo] WHERE  SStudy='博士后'">
            </asp:AccessDataSource>
        </div>
        <div style="margin-left: 40px;">
            <p style="text-align: center">
                —————————博士生——————————</p>
            <asp:DataList ID="DataList2" runat="server" DataSourceID="AccessDataSource4">
                <ItemTemplate>
                    <asp:Label ID="SGradeLabel2" runat="server" Text='<%# Eval("SGrade") %>' />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="AccessDataSource3">
                        <ItemTemplate>
                            <a id="A2" runat="server" title='<%#Eval("SName").ToString() %>' href='<%# "TeamStudentInfo.aspx?stuid=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'>
                                <%#Eval("SName").ToString() %></a>&nbsp;&nbsp;&nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="~/App_Data/OrgData.mdb"
                        SelectCommand="SELECT [ID],[SName] FROM [StudentsInfo] WHERE ([SGrade] = ?) and SStudy='博士'">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="SGradeLabel2" Name="SGrade2" PropertyName="Text"
                                Type="String" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                </ItemTemplate>
            </asp:DataList>
            <asp:AccessDataSource ID="AccessDataSource4" runat="server" DataFile="~/App_Data/OrgData.mdb"
                SelectCommand="SELECT distinct(SGrade) FROM [StudentsInfo] where SStudy='博士'">
            </asp:AccessDataSource>
        </div>
        <div style="margin-left: 40px;">
            <p style="text-align: center">
                —————————硕士生——————————</p>
            <asp:DataList ID="DataList3" runat="server" DataSourceID="AccessDataSource6">
                <ItemTemplate>
                    <asp:Label ID="SGradeLabel3" runat="server" Text='<%# Eval("SGrade") %>' />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="AccessDataSource5">
                        <ItemTemplate>
                            <a id="A3" runat="server" title='<%#Eval("SName").ToString() %>' href='<%# "TeamStudentInfo.aspx?stuid=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'>
                                <%#Eval("SName").ToString() %></a>&nbsp;&nbsp;&nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:AccessDataSource ID="AccessDataSource5" runat="server" DataFile="~/App_Data/OrgData.mdb"
                        SelectCommand="SELECT [ID],[SName] FROM [StudentsInfo] WHERE ([SGrade] = ?) and SStudy='硕士'">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="SGradeLabel3" Name="SGrade3" PropertyName="Text"
                                Type="String" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                </ItemTemplate>
            </asp:DataList>
            <asp:AccessDataSource ID="AccessDataSource6" runat="server" DataFile="~/App_Data/OrgData.mdb"
                SelectCommand="SELECT distinct(SGrade) FROM [StudentsInfo] where SStudy='硕士'">
            </asp:AccessDataSource>
        </div>
    </form>
</body>
</html>
