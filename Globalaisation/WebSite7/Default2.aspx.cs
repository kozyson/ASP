using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected override void InitializeCulture()
    {
        if (Request.Form["DropDownList1"] != null)
        {
            String selectedLanguage = Request.Form["DropDownList1"];
            UICulture = selectedLanguage;
            Culture = selectedLanguage;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}