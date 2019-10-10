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
        String un, pwd;
        un = TextBox1.Text;
        pwd = TextBox2.Text;
        //If un and pwd are same then he is authenticated        
        if (un == pwd)
        {
            //create cookie
            HttpCookie ht = new HttpCookie("login");
            //Store username into the cookie
            ht.Value = un;
            ht.Expires = DateTime.Now.AddSeconds(10);
            Response.Cookies.Add(ht);
            Response.Redirect("~/home.aspx");
        }
        else
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(),
                                          "key",
                          "alert('Invalid credentials')",
                                          true);
        }
    }

}