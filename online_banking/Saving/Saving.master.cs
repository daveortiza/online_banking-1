using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Saving_Saving : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Welcome_lbl.Text = "<Strong>Welcome </Strong><i>"+ Session["fname"] + " " + Session["lname"]+"</i>";
        Acno_lbl.Text = "<b>Account Number: </b>" + Session["Account_number"];
    }
}
