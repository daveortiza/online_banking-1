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
    int activationcode,transactionID,acno;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        SqlCommand check_User_Name = new SqlCommand("SELECT COUNT(*) FROM Login WHERE email='" + email_tb.Text + "'", con);
        int UserExist = (int)check_User_Name.ExecuteScalar();
        if (UserExist > 0)
        {
            email_exists_lbl.Text = "The Email Id <Strong>" + email_tb.Text + "</Strong> is already registered with another account ";
        }
        else
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
            acno = (int)cmd.ExecuteScalar();
            Random random = new Random();
            activationcode = random.Next(1000, 999999);
            cmd.CommandText = "insert into Login(Account_Number,email,IsVerified,IsActivated,pass,activationcode) values('" + acno + "',@EmailID,'no','no',@pwd,'" + activationcode + "')";
            cmd.Parameters.AddWithValue("@EmailID", email_tb.Text);
            cmd.Parameters.AddWithValue("@pwd", passwd_tb.Text);
            cmd.ExecuteNonQuery();
            transaction();
            sendcode();
            con.Close();
            Response.Redirect("~/EmailVerification.aspx?emailadd=" + email_tb.Text);
        }
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
        msg.Body = "Dear " + fname_tb.Text + " " + lname_tb.Text + " Your Activation Code is: " + activationcode + "\n And Your Account Number is "+acno+"\n";
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
    private void transaction()
    {
        Random random = new Random();
        transactionID = random.Next(1000, 999999);
        string insert_transaction = "insert into Transactions (Transaction_ID,Account_Number,Activity,Amount,Operation)" +
            "values('" + transactionID + "','" + acno + "','Intial deposit while opening Account','" + deposit_tb.Text + "','Credited')";
        cmd = new SqlCommand(insert_transaction, con);
        cmd.ExecuteNonQuery();
    }
}