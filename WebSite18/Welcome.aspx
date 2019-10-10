<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Welcome&nbsp;&nbsp;
        <asp:LoginName ID="LoginName1" runat="server" />
&nbsp;&nbsp;
        <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" 
            LogoutPageUrl="~/Login.aspx" />
&nbsp;
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink>
    
    </div>
    </form>
    <p>
&nbsp;</p>
</body>
</html>
