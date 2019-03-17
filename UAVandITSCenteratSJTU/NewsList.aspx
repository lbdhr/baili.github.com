<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsList.aspx.cs" Inherits="NewsList" %>

<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <table style="margin-left: 10px; width:700px" class="tabs">
                    <tr style=" height:30px;">
                        <td>
                            <img src="images/d.jpg" />
                        </td>
                        <td style="width: 80%;height:30px;">
                            &nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor='<%# Change(DataBinder.Eval(Container.DataItem,"NewsIsRed").ToString())%>'
                                Target="_blank" ToolTip='<%# DataBinder.Eval(Container.DataItem,"NewsTitle").ToString()%>'
                                NavigateUrl='<%# "NewsDetial.aspx?type=news&ID=".ToString()+DataBinder.Eval(Container.DataItem,"ID")%>'> <%#ChageString( DataBinder.Eval(Container.DataItem,"NewsTitle").ToString())%></asp:HyperLink>
                        </td>
                        <td>
                            &nbsp;
                            <label id="Name">
                                <%# DataBinder.Eval(Container.DataItem, "NewsDate", "{0:yyyy/MM/dd}")%></label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <FooterTemplate>
                <asp:Label ID="Label3" runat="server" Width="450px" Text=""></asp:Label>
                请选择页数
                <asp:DropDownList ID="PageCount" AutoPostBack="true" OnTextChanged="PageIndex" runat="server">
                </asp:DropDownList>
                第<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>页/共<asp:Label ID="Label2"
                    runat="server" Text="Label"></asp:Label>页
            </FooterTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
