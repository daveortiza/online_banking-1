using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class EmailVerification : System.Web.UI.Page
{
    public static string conString = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        info_lbl.Text = "Your Email is " + Request.QueryString["emailadd"] + ",Kindly Check Your Inbox for Activation Code";
    }
    protected void verify_btn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(conString);
        SqlCommand cmd = new SqlCommand("select * from Login Where email='" + Request.QueryString["emailadd"] + "'",con);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            string activationcode;
            activationcode = ds.Tables[0].Rows[0]["activationcode"].ToString();
            if (activationcode == activation_tb.Text)
            {
                changedstatus();
                Sucess_lbl.Text = "Your email has been verified";
                Response.Redirect("~/Registration_successfull.aspx");
            }
            else
            {
                Sucess_lbl.Text = "You have Entered Invalid Activation code";
            }
        }
        con.Close();
    }
    private void changedstatus()
    {
        SqlConnection con = new SqlConnection(conString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update Login set status='Verified' Where email='" + Request.QueryString["emailadd"] + "'",con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}