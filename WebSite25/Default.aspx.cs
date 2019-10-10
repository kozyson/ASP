using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Xml;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRead_Click(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder(100);
        string filename = Server.MapPath("~/App_Data/XMLFile.xml");
        XmlReader reader = new XmlTextReader(filename);
        while (reader.Read())
        {
           sb.Append (reader.GetAttribute ("id"));
            sb.Append(reader.GetAttribute("name"));
            sb.Append(reader.GetAttribute("age"));
            sb.Append("  |  ");
        }
        reader.Close();
        Response.Write(sb);
    }


    protected void btnWrite_Click(object sender, EventArgs e)
    {
        string fileName = Server.MapPath("~/App_Data/XMLFile.xml");
        XmlTextWriter writer = new XmlTextWriter(fileName, System.Text.Encoding.UTF8);
        writer.WriteStartDocument(); // writes to top element - version and encoding 
        
        writer.WriteStartElement("Person");  // <person>
        writer.WriteAttributeString("id", TextBox1.Text ); // <person name="ram">
        writer.WriteAttributeString("name", TextBox2.Text ); //
        writer.WriteAttributeString("age", TextBox3.Text); //

        writer.WriteEndElement();
   
        writer.WriteEndDocument();
        writer.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            String fileName = Server.MapPath("~/App_Data/XMLFile.xml");
            XmlReader xmlFile;
            xmlFile = new XmlTextReader(fileName);
            DataSet ds = new DataSet();
            ds.ReadXml(xmlFile);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        } 


    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        String filename = Server.MapPath("~/App_Data/XMLFile.xml");
        XmlReader xmlFile;
        xmlFile = new XmlTextReader(filename);
        DataSet ds = new DataSet();
        DataView dv;
        ds.ReadXml(xmlFile);

        dv = new DataView(ds.Tables[0]);
        dv.Sort = "id";
        int index = dv.Find(TextBox4.Text.Trim());

        if (index == -1)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
          
             Label1.Text = "Id Not Found";
             GridView2.Visible = false;
        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Green;
            Label1.Text = "Id  Found";
     
        }
        if (Label1.Text == "Id  Found")
        {
          
             GridView2.DataSource = ds.Tables[0];
            GridView2.DataBind();
            foreach (GridViewRow  gvrow in GridView2.Rows)
            {
                if (gvrow.Cells[0].Text == TextBox4.Text.Trim())
                {
                    gvrow.BackColor = System.Drawing.Color.Green;
                }
            }
        // Response.Write (   GridView1.Cells[1].valu );
       //  GridViewRow g = new GridViewRow();
            
        }
    }
}