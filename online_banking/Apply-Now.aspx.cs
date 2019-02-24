using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
public partial class Apply_Now : System.Web.UI.Page
{
    public static string conString = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(conString);
    SqlDataReader reader;
    int id, activationcode;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into signup (fname,mname,lname,Dob,gender,email,address,mobile,Account,Account_Balance,pass)" +
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
        cmd.CommandText = "SELECT  Top 1 * FROM signup ORDER BY Account_Number DESC";
        cmd.Connection = con;
        id = (int)cmd.ExecuteScalar();
        Random random = new Random();
        activationcode = random.Next(1000, 999999);
        cmd.CommandText = "insert into Login(Account_Number,email,status,pass,activationcode) values('" + id + "',@EmailID,'Unverified',@pwd,'" + activationcode + "')";
        cmd.Parameters.AddWithValue("@EmailID", email_tb.Text);
        cmd.Parameters.AddWithValue("@pwd", passwd_tb.Text);
        cmd.ExecuteNonQuery();
        sendcode();
        con.Close();
        Response.Redirect("~/EmailVerification.aspx?emailadd="+email_tb.Text);
    }
    private void sendcode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("0906rajgada@gmail.com", "G@mingzone28  ");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Activation Code to Verify Email Address";
        msg.Body = "Dear " + fname_tb.Text +" "+lname_tb.Text+" Your Activation Code is: " + activationcode + "\n";
        string toaddress = email_tb.Text;
        msg.To.Add(toaddress);
        String fromaddress = "0906rajgada@gmail.com";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
        }
        catch
        {
            throw;
        }
    }
}