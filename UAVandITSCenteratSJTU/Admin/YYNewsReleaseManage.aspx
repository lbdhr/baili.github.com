<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YYNewsReleaseManage.aspx.cs"
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
                                    <asp:TemplateField HeaderText="标题" SortExpression="NewsTitle">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# ShortString(Eval("NewsTitle").ToString()) %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# ShortString(Eval("NewsTitle").ToString()) %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Width="300px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="标题" SortExpression="NewsYY">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# ShortString(Eval("NewsYY").ToString()) %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# ShortString(Eval("NewsYY").ToString()) %>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle Width="100px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="NewsKeyWords" HeaderText="关键字" SortExpression="NewsKeyWords">
                                        <HeaderStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="来源" SortExpression="NewsType">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("NewsWriter").ToString() %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("NewsWriter").ToString() %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <HeaderStyle Width="80px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="NewsDate" HeaderText="发布日期" SortExpression="NewsDate"
                                        DataFormatString="{0:d}">
                                        <HeaderStyle Width="90px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="NewsCont" HeaderText="内容" SortExpression="NewsCont" Visible="False">
                                    </asp:BoundField>
                                    <asp:CheckBoxField DataField="NewsIsTop" HeaderText="是否置顶" 
                                        SortExpression="NewsIsTop" >
                                    <HeaderStyle Width="80px" />
                                    </asp:CheckBoxField>
                                    <asp:CheckBoxField DataField="NewsIsRed" HeaderText="是否红色显示" 
                                        SortExpression="NewsIsRed" >
                                    <HeaderStyle Width="80px" />
                                    </asp:CheckBoxField>
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
                                SelectCommand="SELECT * FROM [News] WHERE ([NewsWriter] = ?)  ORDER BY [NewsIsTop] ASC,[NewsIsRed] ASC,[ID] DESC " 
                                DeleteCommand="DELETE FROM [News] WHERE [ID] = ?" 
                                InsertCommand="INSERT INTO [News] ([ID], [NewsTitle], [NewsWriter], [NewsCont], [NewsDate], [NewsIsRed], [NewsIsTop], [NewsKeyWords], [NewsPicUrl]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" 
                                UpdateCommand="UPDATE [News] SET [NewsTitle] = ?, [NewsWriter] = ?, [NewsCont] = ?, [NewsDate] = ?, [NewsIsRed] = ?, [NewsIsTop] = ?, [NewsKeyWords] = ?, [NewsPicUrl] = ? WHERE [ID] = ?">
                                <DeleteParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                    <asp:Parameter Name="NewsTitle" Type="String" />
                                    <asp:Parameter Name="NewsWriter" Type="String" />
                                    <asp:Parameter Name="NewsCont" Type="String" />
                                    <asp:Parameter Name="NewsDate" Type="DateTime" />
                                    <asp:Parameter Name="NewsIsRed" Type="Boolean" />
                                    <asp:Parameter Name="NewsIsTop" Type="Boolean" />
                                    <asp:Parameter Name="NewsKeyWords" Type="String" />
                                    <asp:Parameter Name="NewsPicUrl" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="云工坊" Name="NewsWriter" 
                                        SessionField="None" Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="NewsTitle" Type="String" />
                                    <asp:Parameter Name="NewsWriter" Type="String" />
                                    <asp:Parameter Name="NewsCont" Type="String" />
                                    <asp:Parameter Name="NewsDate" Type="DateTime" />
                                    <asp:Parameter Name="NewsIsRed" Type="Boolean" />
                                    <asp:Parameter Name="NewsIsTop" Type="Boolean" />
                                    <asp:Parameter Name="NewsKeyWords" Type="String" />
                                    <asp:Parameter Name="NewsPicUrl" Type="String" />
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
