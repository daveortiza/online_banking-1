using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Saving_ChangePassword : System.Web.UI.Page
{
    public static string conString = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;
    SqlConnection con = new SqlConnection(conString);
    SqlCommand cmd = new SqlCommand();
    int acno;
    protected void Page_Load(object sender, EventArgs e)
    {
        acno = Convert.ToInt32(Session["Account_number"]);
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string retrive = "Select pass from sinup Where Account_Number='" + acno + "'";
        cmd = new SqlCommand(retrive, con);
        con.Open();
        string password =Convert.ToString(cmd.ExecuteScalar());
        if (password == CurrentPasswd_tb.Text && NewPasswd_tb.Text!=null)
        {
            string update_Password = "update sinup set pass='" + NewPasswd_tb.Text + "' Where Account_Number='" + acno + "'";
            cmd = new SqlCommand(update_Password, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Saving/ChangePasswordSucessfull.aspx");
        }
        else
        {
            Pass_Wrong.Text = "Current Password is Incorrect";
        }
    }
}