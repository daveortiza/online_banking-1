using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    public string conString = "Data Source=RAJGADA\\SQl;Initial Catalog=Bank_test;Integrated Security=True";
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_tbn_Click(object sender, EventArgs e)
    {
        con.ConnectionString = conString;
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "select * from userlog where Username='" + username_tb.Text + "'and Password='" + passwd_tb.Text + "'";
        rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            Response.Redirect("~/HomeBeforeLogin.aspx");

        }
        else
        {
            error_lbl.Text = "Invalid Username/password!...";
        }
        con.Close();

    }
}
