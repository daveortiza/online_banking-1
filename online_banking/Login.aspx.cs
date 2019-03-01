using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
public partial class Login : System.Web.UI.Page
{
    public static string conString = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;
    string Account, Password, balance;
    SqlConnection con = new SqlConnection(conString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sqlda;
    DataTable dt;
    int RowCount, loginCount = 0,activationcode;
    string emailID;
    protected void Page_Load(object sender, EventArgs e)
    {
        forget_password_lnkbtn.Visible = false;
    }
    protected void Login_tbn_Click(object sender, EventArgs e)
    {
        SqlCommand check_User_Name = new SqlCommand("SELECT COUNT(*) FROM Login WHERE Account_Number='" + acno_tb.Text + "'", con);
        con.Open();
        int UserExist = (int)check_User_Name.ExecuteScalar();
        if (UserExist > 0)
        {
            if (loginCount == 0)
            {
                loginCount++;
                cmd.Connection = con;
                cmd.CommandText = "select fname,lname,Account,Account_Number,Account_Balance,pass From sinup";
                sqlda = new SqlDataAdapter(cmd.CommandText, con);
                dt = new DataTable();
                sqlda.Fill(dt);
                RowCount = dt.Rows.Count;
                for (int i = 0; i < RowCount; i++)
                {
                    Account = dt.Rows[i]["Account_Number"].ToString();
                    Password = dt.Rows[i]["pass"].ToString();
                    balance = dt.Rows[i]["Account_Balance"].ToString();
                    Session["fname"] = dt.Rows[i]["fname"].ToString();
                    Session["lname"] = dt.Rows[i]["lname"].ToString();
                    Session["Account_number"] = Account;
                    Session["Account_Balance"] = balance;
                    if (Account == acno_tb.Text && Password == passwd_tb.Text)
                    {
                        if (dt.Rows[i]["Account"].ToString() == "Admin")
                            Response.Redirect("~/Admin/Admin.aspx");
                        else if (dt.Rows[i]["Account"].ToString() == "Saving")
                        {
                            Response.Redirect("~/Saving/My-Account.aspx");
                        }
                        else
                            loginCount++;
                        forget_password_lnkbtn.Visible = true;
                        error_lbl.Text = "Password in Incorrect";
                    }
                    else
                    {
                        loginCount++;
                        forget_password_lnkbtn.Visible = true;
                        error_lbl.Text = "Password is incorrect";
                    }
                }
            }

            else
            {
                forget_password_lnkbtn.Visible = true;
            }
        }
        else
        {
            error_lbl.Text = "This account does not exists";
        }
    }

    protected void forget_password_lnkbtn_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("SELECT email from Login where Account_Number='" + acno_tb.Text + "'", con);
        con.Open();
        emailID = Convert.ToString(cmd.ExecuteScalar());
        Random random = new Random();
        activationcode = random.Next(1000, 999999);
        cmd.CommandText = "update Login set activationcode='" + activationcode + "'Where Account_number='" + Convert.ToInt32(acno_tb.Text) + "'";
        cmd.ExecuteNonQuery();
        sendcode();
        Response.Redirect("~/Account_Recovery.aspx?emailadd="+emailID);
    }
    private void sendcode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("0906rajgada@gmail.com", "G@mingzone28  ");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Recovery Code to change password";
        msg.Body = "Your one time code To recover account is: " + activationcode + "\n";
        string toaddress = emailID;
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