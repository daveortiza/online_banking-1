using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
public partial class Login : System.Web.UI.Page
{
    public static string conString = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;
    string Account, Password, balance;
    SqlConnection con = new SqlConnection(conString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sqlda;
    DataTable dt;
    int RowCount;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Login_tbn_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select fname,lname,Account,Account_Number,Account_Balance,pass From sinup";
        sqlda = new SqlDataAdapter(cmd.CommandText, con);
        dt = new DataTable();
        sqlda.Fill(dt);
        RowCount = dt.Rows.Count;
        for (int i = 0; i < RowCount; i++)
        {
            Account = dt.Rows[i]["Account_Number"].ToString();
            Password = dt.Rows[i]["pass"].ToString();
            balance = dt.Rows[i]["Account_Balance"].ToString();
            Session["fname"] = dt.Rows[i]["fname"].ToString();
            Session["lname"] = dt.Rows[i]["lname"].ToString();
            Session["Account_number"] =Account;
            Session["Account_Balance"] = balance;
            if (Account == email_tb.Text && Password == passwd_tb.Text)
            {
                if (dt.Rows[i]["Account"].ToString() == "Admin")
                    Response.Redirect("~/Admin/Admin.aspx");
                else if (dt.Rows[i]["Account"].ToString() == "Saving")
                    Response.Redirect("~/Saving/My-Account.aspx");
                else if (dt.Rows[i]["Account"].ToString() == "Current")
                    Response.Redirect("~/Saving/Default.aspx");
                else if (dt.Rows[i]["Account"].ToString() == "Demat")
                    Response.Redirect("~/Saving/Default.aspx");
                else
                    error_lbl.Text = "Invalid UserName or Password";

            }
        }
    }
}