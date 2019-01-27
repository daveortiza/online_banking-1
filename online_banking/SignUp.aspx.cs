using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=RAJGADA\\SQL;Initial Catalog=Bank_test;Integrated Security=True";
        con.Open();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
       SqlCommand cmd = new SqlCommand("insert into sinup (fname,mname,lname,Dob,gender,email,address,mobile,Account,pass)" +
        "values(@fname,@mname,@lname,@Dob,@gender,@email,@address,@mobile,@Account,@pass)", con);
        cmd.Parameters.AddWithValue("@fname", fname_tb.Text);
        cmd.Parameters.AddWithValue("@mname", TextBox10.Text);
        cmd.Parameters.AddWithValue("@lname", TextBox11.Text);
        cmd.Parameters.AddWithValue("@Dob", TextBox8.Text);
        cmd.Parameters.AddWithValue("@gender", DropDownList2.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@email", TextBox4.Text);
        cmd.Parameters.AddWithValue("@address", TextBox9.Text);
        cmd.Parameters.AddWithValue("@mobile", TextBox5.Text);
        cmd.Parameters.AddWithValue("@Account", RadioButtonList1.SelectedValue);
        cmd.Parameters.AddWithValue("@pass", TextBox6.Text);
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();

    }
}