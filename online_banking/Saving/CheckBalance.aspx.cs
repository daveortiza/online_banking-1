using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Saving_Transactions : System.Web.UI.Page
{
    int acno;
    string cs = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        Ac_bal.Text = "<Strong>Account Balance</Strong>:- "+Session["Account_Balance"];
        acno =Convert.ToInt32(Session["Account_Number"]);
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("Select Transaction_ID,Activity,Amount,Operation from Transactions Where Account_Number='" + acno + "'", con);
            con.Open();
            Transactions_GridView.DataSource = cmd.ExecuteReader();
            Transactions_GridView.DataBind();
        }
    }
}