<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TreeView ID="TreeView1" runat="server" ImageSet="WindowsHelp">
            <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
            <Nodes>
                <asp:TreeNode Text="Courses" Value="Courses">
                    <asp:TreeNode Text="MS.NET" Value="MS.NET">
                        <asp:TreeNode Text="C#" Value="C#"></asp:TreeNode>
                        <asp:TreeNode Text="VB" Value="VB"></asp:TreeNode>
                        <asp:TreeNode Text="ASP" Value="ASP"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="JAVA" Value="JAVA">
                        <asp:TreeNode Text="Core Java" Value="Core Java"></asp:TreeNode>
                        <asp:TreeNode Text="Advanced Java" Value="Advanced Java"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="C" Value="C">
                        <asp:TreeNode Text="Basic" Value="Basic"></asp:TreeNode>
                        <asp:TreeNode Text="Embedded" Value="Embedded"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" 
                HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="1px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" 
                HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    
    </div>
    <asp:Menu ID="Menu1" runat="server">
        <Items>
            <asp:MenuItem Text="Courses" Value="Courses">
                <asp:MenuItem Text="MS.NET" Value="MS.NET">
                    <asp:MenuItem Text="C#" Value="C#"></asp:MenuItem>
                    <asp:MenuItem Text="VB" Value="VB"></asp:MenuItem>
                    <asp:MenuItem Text="ASP" Value="ASP"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Java" Value="Java"></asp:MenuItem>
            </asp:MenuItem>
        </Items>
    </asp:Menu>
    <br />
    <br />
    <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
            <asp:MenuItem Text="Register" Value="Register"></asp:MenuItem>
            <asp:MenuItem Text="Login" Value="Login"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="Red" />
        <StaticMenuItemStyle BackColor="Yellow" HorizontalPadding="80px" />
    </asp:Menu>
    <br />
    </form>
</body>
</html>
