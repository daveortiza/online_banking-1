﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Saving_Withdraw : System.Web.UI.Page
{
    public static string conString = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;
    SqlConnection con = new SqlConnection(conString);
    SqlCommand cmd = new SqlCommand();
    int acno,transactionID;
    protected void Page_Load(object sender, EventArgs e)
    {
        acno = Convert.ToInt32(Session["Account_number"]);
    }

    protected void Deposit_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        string retrive = "SELECT Account_Balance FROM sinup WHERE Account_Number='" + acno + "' ";
        cmd = new SqlCommand(retrive, con);
        int InvAmount = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        cmd.Connection = con;
        string query = "update sinup set Account_Balance=@Account_Balance Where Account_Number='" + acno + "'";
        cmd = new SqlCommand(query, con);
        InvAmount = InvAmount - Convert.ToInt32(Amount_tb.Text);
        Session["Account_Balance"] = InvAmount;
        cmd.Parameters.AddWithValue("Account_Balance", InvAmount);
        cmd.ExecuteNonQuery();
        Debit_transaction();
        Response.Redirect("~/Saving/WithdrawSucessfull.aspx");
    }
    private void Debit_transaction()
    {
        Random random = new Random();
        transactionID = random.Next(1000, 999999);
        string insert_transaction = "insert into Transactions (Transaction_ID,Account_Number,Activity,Amount,Operation)" +
            "values('" + transactionID + "','" + acno + "','Withdraw','" + Amount_tb.Text + "','Debited')";
        cmd = new SqlCommand(insert_transaction, con);
        cmd.ExecuteNonQuery();
    }
}