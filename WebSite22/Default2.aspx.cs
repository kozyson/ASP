using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataView dv;

        dv = (DataView)Cache["data"];

        if (dv == null)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=emp;Integrated Security=True";
            SqlDataAdapter da = new SqlDataAdapter("Select name from em where salary>50000", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "emp");
            dv = new DataView(ds.Tables["emp"]);
            //Add data to cache
            Cache["data"] = dv;
            //Data in cache will expire after 1 minute
            Cache.Insert("data", dv,
                         null, DateTime.UtcNow.AddMinutes(1),
                         TimeSpan.Zero);
            Label1.Text = "cache created !";
        }
        else
        {
            Label1.Text = "Data set retrieved from cache";
        }
        GridView1.DataSource = dv;
        GridView1.DataBind();

    }
}