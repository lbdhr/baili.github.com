<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentsInfoManage.aspx.cs"
    Inherits="Admin_NewsReleaseManage" %>

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
        <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
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
                    <td style="padding-right: 10px; padding-left: 10px; padding-bottom: 10px; padding-top: 10px;
                        background-color: white" valign="top">
                        <div id="GridViewShow"> 
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                DataKeyNames="ID" DataSourceID="AccessDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                                Width="970px" PageSize="15" EnableModelValidation="True">
                                <Columns>
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            &nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select"
                                                Text="编辑"></asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" Visible="false"
                                                Text='<%# Bind("ID") %>'></asp:LinkButton>
                                            &nbsp;
                                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                Text="删除" OnClientClick="return confirm('确认删除？')"></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle Width="80px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID" Visible="False">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="SName" HeaderText="姓名" SortExpression="SName" />
                                    <asp:BoundField DataField="SSex" HeaderText="性别" SortExpression="SSex" />
                                    <asp:BoundField DataField="SNation" HeaderText="籍贯" SortExpression="SNation" >
                                    <HeaderStyle Width="10%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="SEmail" HeaderText="电子邮箱" SortExpression="SEmail" />
                                    <asp:BoundField DataField="SInterst" HeaderText="专业" 
                                        SortExpression="SInterst" />
                                    <asp:BoundField DataField="SStudy" HeaderText="攻读学位" SortExpression="SStudy" />
                                    <asp:BoundField DataField="STeacher" HeaderText="导师" 
                                        SortExpression="STeacher" />
                                    <asp:BoundField DataField="SGrade" HeaderText="入学年级" SortExpression="SGrade" />
                                </Columns>
                                <EmptyDataTemplate>
                                    暂无数据！
                                </EmptyDataTemplate>
                                <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NumericFirstLast" NextPageText="下一页"
                                    PreviousPageText="上一页" PageButtonCount="5" />
                            </asp:GridView>
                            <br />
                            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                DataFile="~/App_Data/OrgData.mdb" 
                                SelectCommand="SELECT * FROM [StudentsInfo] ORDER BY [ID] DESC">
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
