<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page1.aspx.cs" Inherits="page1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style  type="text/css">
       a:hover
       {
           font-size :xx-large ;
           color:Green ;
           text-decoration :none;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
        <br />
    
    </div>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/page2.aspx"  >Page2</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/page3.aspx">Page3</asp:HyperLink>
    <br />
    <br />
    <a href="https://www.google.com" >Google</a>

    </form>
</body>
</html>
