using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
public partial class Saving_Default : System.Web.UI.Page
{
    public string conString = "Data Source=RAJGADA\\SQL;Initial Catalog=Bank_test;Integrated Security=True";
    string Account, Password, balance;
    int bal;
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sqlda;
    DataTable dt;
    int RowCount;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "<b><font color=Brown>" + "WELLCOME:: " + "</font>" + "<b><font size=24px>" + Session["fname"] + " " + Session["lname"] + "</font>";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.ConnectionString = conString;
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "select fname,lname,Account_Number,Account_Balance From sinup";
        sqlda = new SqlDataAdapter(cmd.CommandText, con);
        dt = new DataTable();
        sqlda.Fill(dt);
        con.Close();
        RowCount = dt.Rows.Count;
        for (int i = 0; i < RowCount; i++)
        {
            Account = dt.Rows[i]["Account_Number"].ToString();
            balance= dt.Rows[i]["Account_Balance"].ToString();
            bal = Convert.ToInt32(balance);
            if (Account == TextBox1.Text)
            {
                Label4.Text = Account;
                bal -= Convert.ToInt32(TextBox2.Text);
                balance =Convert.ToString(bal);
                Label5.Text = balance;
            }
            else
            {
                Label4.Text = "Account Number is incorrect or does not exist";
            }
        }
    }
}