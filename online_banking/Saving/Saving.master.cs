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
        Welcome_lbl.Text = "Account Holder :- "+ Session["fname"] + " " + Session["lname"];
        Acno_lbl.Text = "<b>Account Number: </b>" + Session["Account_number"];
        Ac_bal.Text= "<b>Account Balance: </b>" + Session["Account_Balance"];
    }
}
