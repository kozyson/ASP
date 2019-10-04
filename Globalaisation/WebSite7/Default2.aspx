<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <br />
&nbsp; Select language&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            meta:resourcekey="DropDownList1Resource1">
            <asp:ListItem meta:resourcekey="ListItemResource1" Value="en-US">English</asp:ListItem>
            <asp:ListItem meta:resourcekey="ListItemResource2" Value="hi-IN">Hindi</asp:ListItem>
            <asp:ListItem meta:resourcekey="ListItemResource3" Value="te-IN">Telugu</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lblWelcome" runat="server" 
            meta:resourcekey="lblWelcomeResource1"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lblDate" runat="server" meta:resourcekey="lblDateResource1"></asp:Label>
&nbsp; <%= DateTime.Now.ToString () %></p>
    <div>
    
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
