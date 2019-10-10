using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Session["obj"] != null)
        {
            Response.Write("The value is:" + Session["obj"].ToString());
        }
        else
        {
            Response.Write("No data in session");
                
                
            Class1 ob = new Class1(25);
            Session["obj"] = ob.a;
        }

    }
}