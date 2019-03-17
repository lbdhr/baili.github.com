<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrgManage.aspx.cs" Inherits="Admin_OrgManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            DataSourceID="AccessDataSource1"   Width="770px" 
            PageSize="15" EnableModelValidation="True" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        &nbsp;
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
                <asp:TemplateField HeaderText="社团名称" SortExpression="OrgName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("OrgName").ToString() %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("OrgName").ToString() %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="400px" />
                </asp:TemplateField> 
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
                                SelectCommand="SELECT * FROM [Orgs]" ConflictDetection="CompareAllValues" 
                                DeleteCommand="DELETE FROM [Orgs] WHERE [ID] = ? " 
                                InsertCommand="INSERT INTO [Orgs] ([ID], [OrgName], [OrgIntro], [OrgFuction], [OrgOrg], [OrgNumbers], [OrgPicUrl]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
                                OldValuesParameterFormatString="original_{0}" 
                                UpdateCommand="UPDATE [Orgs] SET [OrgName] = ?, [OrgIntro] = ?, [OrgFuction] = ?, [OrgOrg] = ?, [OrgNumbers] = ?, [OrgPicUrl] = ? WHERE [ID] = ? AND (([OrgName] = ?) OR ([OrgName] IS NULL AND ? IS NULL)) AND (([OrgIntro] = ?) OR ([OrgIntro] IS NULL AND ? IS NULL)) AND (([OrgFuction] = ?) OR ([OrgFuction] IS NULL AND ? IS NULL)) AND (([OrgOrg] = ?) OR ([OrgOrg] IS NULL AND ? IS NULL)) AND (([OrgNumbers] = ?) OR ([OrgNumbers] IS NULL AND ? IS NULL)) AND (([OrgPicUrl] = ?) OR ([OrgPicUrl] IS NULL AND ? IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_ID" Type="Int32" />
                                    <asp:Parameter Name="original_OrgName" Type="String" />
                                    <asp:Parameter Name="original_OrgName" Type="String" />
                                    <asp:Parameter Name="original_OrgIntro" Type="String" />
                                    <asp:Parameter Name="original_OrgIntro" Type="String" />
                                    <asp:Parameter Name="original_OrgFuction" Type="String" />
                                    <asp:Parameter Name="original_OrgFuction" Type="String" />
                                    <asp:Parameter Name="original_OrgOrg" Type="String" />
                                    <asp:Parameter Name="original_OrgOrg" Type="String" />
                                    <asp:Parameter Name="original_OrgNumbers" Type="String" />
                                    <asp:Parameter Name="original_OrgNumbers" Type="String" />
                                    <asp:Parameter Name="original_OrgPicUrl" Type="String" />
                                    <asp:Parameter Name="original_OrgPicUrl" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                    <asp:Parameter Name="OrgName" Type="String" />
                                    <asp:Parameter Name="OrgIntro" Type="String" />
                                    <asp:Parameter Name="OrgFuction" Type="String" />
                                    <asp:Parameter Name="OrgOrg" Type="String" />
                                    <asp:Parameter Name="OrgNumbers" Type="String" />
                                    <asp:Parameter Name="OrgPicUrl" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="OrgName" Type="String" />
                                    <asp:Parameter Name="OrgIntro" Type="String" />
                                    <asp:Parameter Name="OrgFuction" Type="String" />
                                    <asp:Parameter Name="OrgOrg" Type="String" />
                                    <asp:Parameter Name="OrgNumbers" Type="String" />
                                    <asp:Parameter Name="OrgPicUrl" Type="String" />
                                    <asp:Parameter Name="original_ID" Type="Int32" />
                                    <asp:Parameter Name="original_OrgName" Type="String" />
                                    <asp:Parameter Name="original_OrgName" Type="String" />
                                    <asp:Parameter Name="original_OrgIntro" Type="String" />
                                    <asp:Parameter Name="original_OrgIntro" Type="String" />
                                    <asp:Parameter Name="original_OrgFuction" Type="String" />
                                    <asp:Parameter Name="original_OrgFuction" Type="String" />
                                    <asp:Parameter Name="original_OrgOrg" Type="String" />
                                    <asp:Parameter Name="original_OrgOrg" Type="String" />
                                    <asp:Parameter Name="original_OrgNumbers" Type="String" />
                                    <asp:Parameter Name="original_OrgNumbers" Type="String" />
                                    <asp:Parameter Name="original_OrgPicUrl" Type="String" />
                                    <asp:Parameter Name="original_OrgPicUrl" Type="String" />
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
