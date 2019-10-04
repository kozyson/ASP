using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PageLevel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Error(object sender, EventArgs e)
    {
        Exception lasterror;
        lasterror = Server.GetLastError();
         
  Response.Redirect("Error.aspx?Error=:" + lasterror.Message);    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            int a = Convert.ToInt32(TextBox1.Text);
            int b = Convert.ToInt32(TextBox2.Text);
            int r = a / b;
            Response.Write("Result is:" + r.ToString());
        

    }
}