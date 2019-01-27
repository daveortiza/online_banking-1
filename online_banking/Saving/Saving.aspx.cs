using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Saving_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "<b><font color=Brown>" + "WELLCOME:: " + "</font>" + "<b><font size=24px>" + Session["fname"] +" "+Session["lname"]+ "</font>";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}