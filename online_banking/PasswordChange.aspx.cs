using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class PasswordChange : System.Web.UI.Page
{
    public static string conString = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;
    SqlConnection con = new SqlConnection(conString);
    SqlCommand cmd = new SqlCommand();
    int acno;
    protected void Page_Load(object sender, EventArgs e)
    {
        acno =Convert.ToInt32(Request.QueryString["acno"]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string update_Password = "update Login set pass='" + TextBox2.Text + "' Where Account_Number='" + acno + "'";
        con.Open();
        cmd = new SqlCommand(update_Password, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/PasswordChangedSucessfully.aspx");
    }
}