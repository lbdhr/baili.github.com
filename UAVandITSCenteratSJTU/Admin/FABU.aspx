<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FABU.aspx.cs" Inherits="Admin_FABU" %>

<%@ Register assembly="CuteEditor" namespace="CuteEditor" tagprefix="CE" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <CE:Editor ID="Editor1" runat="server" AutoConfigure="Simple" 
            EditorWysiwygModeCss="~/example.css" FilesPath="CuteSoft_Client/CuteEditor">
        </CE:Editor>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </div>
    </form>
</body>
</html>
