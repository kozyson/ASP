using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Globalization;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String culture = null;
        culture = Request.UserLanguages[0];
        CultureInfo ci = new CultureInfo(culture);
        Label1.Text = ci.NativeName;
        Response.Write("Culture Name:" + ci.Name);
        Response.Write("</br>");
        Response.Write("CultureCurrency:" + ci.NumberFormat.CurrencySymbol);

    }
}