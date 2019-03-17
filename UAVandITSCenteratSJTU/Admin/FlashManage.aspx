<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FlashManage.aspx.cs" Inherits="Admin_FlashManage" %>

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
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1"
                                OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="970px" PageSize="15"
                                EnableModelValidation="True">
                                <Columns>
                                    <asp:TemplateField ShowHeader="False">
                                        <ItemTemplate>
                                            &nbsp;
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select"
                                                Text="编辑"></asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" Visible="false"
                                                Text='<%# Bind("ID") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle Width="80px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                                        Visible="False"></asp:BoundField>
                                    <asp:TemplateField HeaderText="Flash编号" SortExpression="id">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%#"Flash图片".ToString()+ Eval("id") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("id") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="title" HeaderText="Flash标题" SortExpression="title"></asp:BoundField>
                                    <asp:BoundField DataField="img" HeaderText="Flash图片地址" SortExpression="img"></asp:BoundField>
                                    <asp:BoundField DataField="url" HeaderText="Flash网页链接地址" SortExpression="url"></asp:BoundField>
                                </Columns>
                                <EmptyDataTemplate>
                                    暂无数据！
                                </EmptyDataTemplate>
                                <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NumericFirstLast" NextPageText="下一页"
                                    PreviousPageText="上一页" PageButtonCount="5" />
                            </asp:GridView>
                            <br />
                            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/xml/viewerData.xml">
                            </asp:XmlDataSource>
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
