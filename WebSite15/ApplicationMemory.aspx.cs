using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ApplicationMemory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["Count"] == null)
            Application["Count"] = 1;
        else
        {
            int value = Convert.ToInt32(Application["Count"].ToString());
            value++;
            Application["Count"] = value;
        }
        Response.Write("No.of views:" + Application["Count"].ToString());

    }
}