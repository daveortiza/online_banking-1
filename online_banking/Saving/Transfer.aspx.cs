using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Saving_Transfer : System.Web.UI.Page
{
    public static string conString = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;
    string Account, Password, balance, name,acno;
    int ob, bal, cb;
    SqlConnection con = new SqlConnection(conString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sqlda;
    DataTable dt;
    int RowCount,transactionID;
    protected void Page_Load(object sender, EventArgs e)
    {
        acno=""+Session["Account_number"];
        cb = Convert.ToInt32(Session["Account_Balance"]);
        ob = cb;

    }
    protected void Transfer_btn_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "select fname,lname,Account_Number,Account_Balance From sinup";
        sqlda = new SqlDataAdapter(cmd.CommandText, con);
        dt = new DataTable();
        sqlda.Fill(dt);
        RowCount = dt.Rows.Count;
        for (int i = 0; i < RowCount; i++)
        {
            Account = dt.Rows[i]["Account_Number"].ToString();
            balance = dt.Rows[i]["Account_Balance"].ToString();
            name = dt.Rows[i]["fname"].ToString();
            bal = Convert.ToInt32(balance);
            if (Account == TextBox3.Text)
            {
                if (TextBox3.Text == acno)
                {
                    Success_lbl.Text = "Cannot transfer to self";
                    break;
                }
                else
                {
                    if (cb >= Convert.ToInt32(TextBox2.Text))
                    {   
                        bal += Convert.ToInt32(TextBox2.Text);
                        balance = Convert.ToString(bal);
                        con.Open();
                        AddBal();
                        cb = ob - Convert.ToInt32(TextBox2.Text);
                        DeductBal();
                        Session["Account_Balance"] = cb;
                        Debit_transaction();
                        Credit_transaction();
                        con.Close();
                        Response.Redirect("~/Saving/TransferSucessfull.aspx");
                        break;
                    }
                    else
                    {
                        Success_lbl.Text ="Not sufficient balance to transfer";
                        break;
                    }
                }
            }
            else
            {
                Success_lbl.Text = "Account Number is not correct";
            }
        }
    }
    private void DeductBal()
    {
        string update_Balance = "update sinup set Account_Balance='" + cb + "' Where Account_Number='" + acno + "'";
        cmd.CommandText = update_Balance;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    private void AddBal()
    {
        string update_Balance = "update sinup set Account_Balance='" + bal + "' Where Account_Number='" + Account + "'"; 
        cmd.CommandText = update_Balance;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();   
    }
    private void Debit_transaction()
    {  
        Random random = new Random();
        transactionID = random.Next(1000, 999999);
        string insert_transaction = "insert into Transactions (Transaction_ID,Account_Number,Activity,Amount,Operation)" +
            "values('" + transactionID + "','" + acno + "','Money Transfer','" + TextBox2.Text + "','Debited')";
        cmd = new SqlCommand(insert_transaction, con);
        cmd.ExecuteNonQuery();
    }
    private void Credit_transaction()
    {
        Random random = new Random();
        transactionID = random.Next(1000, 999999);
        string insert_transaction = "insert into Transactions (Transaction_ID,Account_Number,Activity,Amount,Operation)" +
            "values('" + transactionID + "','" + Account + "','Money Recieved','" + TextBox2.Text + "','Credited')";
        cmd = new SqlCommand(insert_transaction, con);
        cmd.ExecuteNonQuery();
    }
}