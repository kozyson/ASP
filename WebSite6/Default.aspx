<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:WebPartManager ID="WebPartManager1" runat="server">
        </asp:WebPartManager>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:WebPartZone ID="WebPartZone1" runat="server">
                        <ZoneTemplate>
                            <asp:Button ID="Button1" runat="server" Text="Button" />
                        </ZoneTemplate>
                    </asp:WebPartZone>
                </td>
                <td>
                    <asp:WebPartZone ID="WebPartZone2" runat="server">
                        <ZoneTemplate>
                            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                        </ZoneTemplate>
                    </asp:WebPartZone>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CatalogZone ID="CatalogZone1" runat="server">
                        <ZoneTemplate>
                            <asp:DeclarativeCatalogPart ID="DeclarativeCatalogPart1" runat="server">
                            </asp:DeclarativeCatalogPart>
                            <asp:PageCatalogPart ID="PageCatalogPart1" runat="server" />
                        </ZoneTemplate>
                    </asp:CatalogZone>
                </td>
                <td>
                    <asp:EditorZone ID="EditorZone1" runat="server">
                        <ZoneTemplate>
                            <asp:LayoutEditorPart ID="LayoutEditorPart1" runat="server" />
                            <asp:AppearanceEditorPart ID="AppearanceEditorPart1" runat="server" />
                        </ZoneTemplate>
                    </asp:EditorZone>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:Button ID="btnBrowse" runat="server" onclick="btnBrowse_Click" 
            Text="Browse" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDesign" runat="server" onclick="btnDesign_Click" 
            Text="Design" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCatalog" runat="server" onclick="btnCatalog_Click" 
            Text="Catalog" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEdit" runat="server" onclick="btnEdit_Click" Text="Edit" />
    
    </div>
    </form>
</body>
</html>
