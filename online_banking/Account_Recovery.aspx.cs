using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Account_Recovery : System.Web.UI.Page
{
    public static string conString = ConfigurationManager.ConnectionStrings["Bank_test"].ConnectionString;
    SqlConnection con = new SqlConnection(conString);
    SqlCommand cmd = new SqlCommand();
    int acno;
    protected void Page_Load(object sender, EventArgs e)
    {
        info_lbl.Text = "Enter your one time recovery code sent to your registered email ID "+Request.QueryString["emailadd"];
        acno = Convert.ToInt32(Request.QueryString["acno"]);
    }
    protected void verify_btn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(conString);
        SqlCommand cmd = new SqlCommand("select * from sinup Where email='" + Request.QueryString["emailadd"] + "'", con);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            string activationcode, Acno;
            activationcode = ds.Tables[0].Rows[0]["activationcode"].ToString();
            Acno = ds.Tables[0].Rows[0]["Account_Number"].ToString();
            if (activationcode == activation_tb.Text)
            {
                changedstatus();
                Response.Redirect("~/PasswordChange.aspx?acno="+Acno);
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
        SqlCommand cmd = new SqlCommand("update Login set IsVerified='yes',IsActivated='yes' Where email='" + Request.QueryString["emailadd"] + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}
