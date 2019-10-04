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

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String path = Server.MapPath("~/Images/");
        if (FileUpload1.HasFile)
        {
            //check file extension
            string extension = 
                System.IO.Path.GetExtension(FileUpload1.FileName);

            if (extension == ".jpg")
            {
                FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                // Response.Write("File was uploaded!");
                Response.Write("<script language=\"javascript\">");
                Response.Write("alert(\"File was uploaded\");");
                Response.Write("</script>");
            }
            else
            {
                Response.Write("<script language=\"javascript\">");
                Response.Write("alert(\"Only *.jpg Allowed\");");
                Response.Write("</script>");
            }
        }
 
 
    }
}