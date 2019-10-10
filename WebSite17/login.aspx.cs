using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String un = TextBox1.Text.Trim();
        String pwd = TextBox2.Text.Trim();
        bool result = FormsAuthentication.Authenticate(un, pwd);
        if (result == true)
        {
            FormsAuthentication.RedirectFromLoginPage(un, true);
        }
        else
        {
            Response.Write("Invalid Credentials");

        }


    }
}