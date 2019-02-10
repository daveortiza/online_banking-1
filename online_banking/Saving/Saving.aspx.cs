using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
public partial class Saving_Saving : System.Web.UI.Page
{
    public static string conString = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;
    string Account, Password, balance, name;
    int ob, bal, cb;
    SqlConnection con = new SqlConnection(conString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sqlda;
    DataTable dt;
    int RowCount;
    protected void Page_Load(object sender, EventArgs e)
    {
        Welcome_lbl.Text = "<b>Account Holder: </b>" + Session["fname"] + " " + Session["lname"];
        Acno_lbl.Text = "" + Session["Account_number"];
        cmd.CommandText = "select fname,lname,Account_Number,Account_Balance From sinup";
        sqlda = new SqlDataAdapter(cmd.CommandText, con);
        dt = new DataTable();
        sqlda.Fill(dt);
        RowCount = dt.Rows.Count;
        for (int i = 0; i < RowCount; i++)
        {
            Account = dt.Rows[i]["Account_Number"].ToString();
            balance = dt.Rows[i]["Account_Balance"].ToString();
            name = dt.Rows[i]["fname"].ToString();
            bal = Convert.ToInt32(balance);
            if (Account == Acno_lbl.Text)
            {
                ob = bal;
                cb = ob;
                bal_lbl.Text = balance + ".00 Cr";
            }
        }
    }
}
