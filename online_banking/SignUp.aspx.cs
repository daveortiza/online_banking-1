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

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into sinup" + "(fname,lname,email,gender,address,phone,pass)values(@fname,@lname,@email,@gender,@address,@phone,@pass)",con);
        cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@email", TextBox4.Text);
        cmd.Parameters.AddWithValue("@gender", DropDownList2.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@address", TextBox9.Text);
        cmd.Parameters.AddWithValue("@phone", TextBox5.Text);
        cmd.Parameters.AddWithValue("@pass", TextBox6.Text);
        cmd.ExecuteNonQuery();
        lbl_message.Text = "Signed Up sucessfully";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}