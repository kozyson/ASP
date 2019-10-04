<%@ Page Language="C#" 
          AutoEventWireup="true" 
          CodeFile="Default.aspx.cs" 
          Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1
        {
            position: relative;
            margin-left :100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 295px">
    
        Upload Image&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Upload Image" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
       <asp:TextBox ID="Text" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label 
               ID="lbl" runat="server" Text="Label" BackColor="Red" 
            style="position: absolute; z-index: 1; left: 237px; top: 138px; width: 40px"></asp:Label>
        <br />
    
        <asp:Button ID="Button1" runat="server" Text="Register" onclick="Button1_Click" 
            style="z-index: 1; left: 41px; top: 195px; position: absolute" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx" 
            style="position: relative">Goto Home page</asp:HyperLink>
        <br />
        <br />
        Gender : 
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" 
            Text="Male" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" 
            Text="Female" />
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="gender" 
            Text="Not specify" />
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
