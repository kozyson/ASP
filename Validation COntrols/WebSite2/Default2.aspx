<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 51%;
            height: 286px;
        }
        .style2
        {
            text-align: center;
            font-size: x-large;
            background-color: #FF66FF;
        }
        .style3
        {
            width: 236px;
        }
        .style4
        {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" class="style1">
        <tr>
            <td class="style2" colspan="3">
                <strong>REGISTRATION FORM</strong></td>
        </tr>
        <tr>
            <td style="text-align: right">
                UserName</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Username required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Password</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Min.,8chars needed!" ForeColor="Red" 
                    onservervalidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                ConfirmPassword</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Password mismatch" ForeColor="Red">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Email&nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Invalid mail id!" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Age</td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Age 18~30" ForeColor="Red" 
                    MaximumValue="30" MinimumValue="18" Type="Integer">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="Register" />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="161px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
