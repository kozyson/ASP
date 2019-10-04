using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppLevel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt16(TextBox1.Text);
        int b = Convert.ToInt16(TextBox2.Text);
        int c = a / b;
        Response.Write("c is " + c);
    }
}