using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Apply_Now : System.Web.UI.Page
{
    public static string conString = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into sinup (fname,mname,lname,Dob,gender,email,address,mobile,Account,Account_Balance,pass)" +
         "values(@fname,@mname,@lname,@Dob,@gender,@email,@address,@mobile,'Saving',@Account_Balance,@pass)", con);
        cmd.Parameters.AddWithValue("@fname", fname_tb.Text);
        cmd.Parameters.AddWithValue("@mname", mname_tb.Text);
        cmd.Parameters.AddWithValue("@lname", lname_tb.Text);
        cmd.Parameters.AddWithValue("@Dob", dob_tb.Text);
        cmd.Parameters.AddWithValue("@gender", genderddl.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@email", email_tb.Text);
        cmd.Parameters.AddWithValue("@address", address_tb.Text);
        cmd.Parameters.AddWithValue("@mobile", mobile_tb.Text);
        cmd.Parameters.AddWithValue("@Account_Balance", deposit_tb.Text);
        cmd.Parameters.AddWithValue("@pass", passwd_tb.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Parameters.Clear();
   } 
}