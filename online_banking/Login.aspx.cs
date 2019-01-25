using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    public string conString = "Data Source=RAJGADA\\SQL;Initial Catalog=Bank_test;Integrated Security=True";
    string EmailID, Password;
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sqlda;
    DataTable dt;
    int RowCount;
    protected void Login_tbn_Click(object sender, EventArgs e)
    {
        con.ConnectionString = conString;
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "select * from Login where EmailID='" + email_tb.Text + "'and Password='" + passwd_tb.Text + "'";
        sqlda = new SqlDataAdapter(cmd.CommandText, con);
        dt = new DataTable();
        sqlda.Fill(dt);
        RowCount = dt.Rows.Count;
        for (int i = 0; i < RowCount; i++)
        {
            EmailID = dt.Rows[i]["EmailID"].ToString();
            Password = dt.Rows[i]["Password"].ToString();

            if (EmailID == email_tb.Text && Password == passwd_tb.Text)
            {
                if (dt.Rows[i]["Account"].ToString() == "Admin")
                    Response.Redirect("~/Admin/Default.aspx");
                else if (dt.Rows[i]["Account"].ToString() == "Saving")
                    Response.Redirect("~/Saving/Default.aspx");
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
