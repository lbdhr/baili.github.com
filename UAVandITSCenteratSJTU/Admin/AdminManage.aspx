<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminManage.aspx.cs" Inherits="Admin_AdminManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
    <link href="../Styles/styleback.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-position-y: -120px; background-image: url(images/bg.gif);
    background-repeat: repeat-x">
    <form id="form1" runat="server">
    <div>
        <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0" style="font-family:微软雅黑;font-size:12px;" >
            <tbody>
                <tr style="background-image: url(images/bg_header.gif); background-repeat: repeat-x;
                    background-position: 40% bottom;" height="10">
                    <td width="10" style="background-position: 50% bottom; background-image: url(images/main_hl.gif)">
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td style="background-position: 50% bottom; background-image: url(images/main_rc.gif)"
                        width="10">
                    </td>
                </tr>
                <tr>
                    <td style="background-image: url(images/main_ls.gif)">
                        &nbsp;
                    </td>
                    <td style="padding-right: 10px; padding-left: 10px; padding-bottom: 10px; 
                        padding-top: 10px; background-color: white" valign="top"  >
                        
                        <div id="GridViewShow">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
            AutoGenerateColumns="False" DataKeyNames="id" 
            DataSourceID="AccessDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="770px" 
            PageSize="15" EnableModelValidation="True">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" 
                            Text="修改密码"></asp:LinkButton>
                         <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False"  Visible="false"
                            Text='<%# Bind("ID") %>'></asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                            Text="删除" OnClientClick="return confirm('确认删除？')"></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle Width="200px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="NRID" InsertVisible="False" 
                    SortExpression="ID" Visible="False">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="用户名" SortExpression="AdminName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# ShortString(Eval("AdminName").ToString()) %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# ShortString(Eval("AdminName").ToString()) %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="400px" />
                </asp:TemplateField>
                <asp:BoundField DataField="AdminOrg" HeaderText="用户组织" 
                    SortExpression="AdminOrg" />
            </Columns>
            <EmptyDataTemplate>
                暂无数据！
            </EmptyDataTemplate>
            <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NumericFirstLast" 
                NextPageText="下一页" PreviousPageText="上一页" PageButtonCount="5" />
        </asp:GridView>
        <br />
                            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                DataFile="~/App_Data/OrgData.mdb" 
                                DeleteCommand="DELETE FROM [Admin] WHERE [ID] = ?" 
                                InsertCommand="INSERT INTO [Admin] ([ID], [AdminName], [AdminPwd], [AdminType], [AdminOrg]) VALUES (?, ?, ?, ?, ?)" 
                                SelectCommand="SELECT * FROM [Admin]" 
                                UpdateCommand="UPDATE [Admin] SET [AdminName] = ?, [AdminPwd] = ?, [AdminType] = ?, [AdminOrg] = ? WHERE [ID] = ?">
                                <DeleteParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                    <asp:Parameter Name="AdminName" Type="String" />
                                    <asp:Parameter Name="AdminPwd" Type="String" />
                                    <asp:Parameter Name="AdminType" Type="String" />
                                    <asp:Parameter Name="AdminOrg" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="AdminName" Type="String" />
                                    <asp:Parameter Name="AdminPwd" Type="String" />
                                    <asp:Parameter Name="AdminType" Type="String" />
                                    <asp:Parameter Name="AdminOrg" Type="String" />
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:AccessDataSource>
    </div>
                        </td>
                    <td style="background-image: url(images/main_rs.gif)">
                    </td>
                </tr>
                <tr style="background-image: url(images/main_fs.gif); background-repeat: repeat-x"
                    height="10">
                    <td style="background-image: url(images/main_lf.gif)">
                    </td>
                    <td style="background-image: url(images/main_fs.gif)">
                    </td>
                    <td style="background-image: url(images/main_rf.gif)">
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
    </body>
</html>
