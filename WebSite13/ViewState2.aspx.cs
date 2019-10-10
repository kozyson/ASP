using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewState2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ViewState["User"] != null)
            Response.Write("Data is:" + ViewState["User"].ToString());
        else
            Response.Write("No data in view State");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ViewState["User"] = TextBox1.Text;
    }
}