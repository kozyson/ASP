using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnBrowse_Click(object sender, EventArgs e)
    {
        WebPartManager1.DisplayMode = WebPartManager.BrowseDisplayMode;
    }
    protected void btnDesign_Click(object sender, EventArgs e)
    {
        WebPartManager1.DisplayMode = WebPartManager.DesignDisplayMode;
    }

    protected void btnCatalog_Click(object sender, EventArgs e)
    {
        WebPartManager1.DisplayMode = WebPartManager.CatalogDisplayMode;
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        WebPartManager1.DisplayMode = WebPartManager.EditDisplayMode;
    }
}