using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    public static string conString = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(conString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
       SqlCommand cmd = new SqlCommand("insert into sinup (fname,mname,lname,Dob,gender,email,address,mobile,Account,Account_Balance,pass)" +
        "values(@fname,@mname,@lname,@Dob,@gender,@email,@address,@mobile,@Account,@Account_Balance,@pass)", con);
        cmd.Parameters.AddWithValue("@fname", fname_tb.Text);
        cmd.Parameters.AddWithValue("@mname", TextBox10.Text);
        cmd.Parameters.AddWithValue("@lname", TextBox11.Text);
        cmd.Parameters.AddWithValue("@Dob", TextBox8.Text);
        cmd.Parameters.AddWithValue("@gender", DropDownList2.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@email", TextBox4.Text);
        cmd.Parameters.AddWithValue("@address", TextBox9.Text);
        cmd.Parameters.AddWithValue("@mobile", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Account", RadioButtonList1.SelectedValue);
        cmd.Parameters.AddWithValue("@Account_Balance", TextBox12.Text);
        cmd.Parameters.AddWithValue("@pass", TextBox6.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Parameters.Clear();

    }
}