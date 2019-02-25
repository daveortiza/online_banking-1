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
    int loginCount = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        forgot_Password_link.Visible = false;
    }
    protected void Login_tbn_Click(object sender, EventArgs e)
    {
        if (loginCount == 0)
        {
            loginCount++;
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
                if (Account == acno_tb.Text && Password == passwd_tb.Text)
                {
                    if (dt.Rows[i]["Account"].ToString() == "Admin")
                        Response.Redirect("~/Admin/Admin.aspx");
                    else if (dt.Rows[i]["Account"].ToString() == "Saving")
                    {
                        Response.Redirect("~/Saving/My-Account.aspx");
                    }
                    else
                        loginCount++;
                    forgot_Password_link.Visible = true;
                    error_lbl.Text = "Invalid UserName or Password";
                }
                else
                {
                    loginCount++;
                    forgot_Password_link.Visible = true;
                    error_lbl.Text = "Invalid Account number or password";
                }
            }
        }
        else
        {
            forgot_Password_link.Visible = true;
        }
    }
}