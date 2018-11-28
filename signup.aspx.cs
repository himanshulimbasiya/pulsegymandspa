using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\MSSQLSERVER2014;Integrated Security=False;Initial Catalog=Pulse;User ID=PulseAdmin; Password=HimanshuLimbasiya123");
    }

    protected void TName_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(TName.Text))
        {
            int uname = 0;
            con.Open();
            SqlCommand cmn = new SqlCommand("SELECT COUNT(*) FROM Users WHERE Username = '" + TName.Text + "'", con);
            uname = Int32.Parse(cmn.ExecuteScalar().ToString());
            if (uname > 0)
            {
                label2.Visible = true;
                label2.Text = "UserName Already Taken";
            }
            else
            {
                label2.Visible = true;
                label2.Text = "UserName Available";
            }
            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int uid = 0;
        int uname = 0;
        int x;
        Random rnd = new Random();
        x = rnd.Next(10000, 99999);
        con.Open();
        SqlCommand cmd;
        SqlCommand cmm = new SqlCommand("SELECT COUNT(*) FROM Users WHERE Email = '" + TMail.Text + "'", con);
        SqlCommand cmn = new SqlCommand("SELECT COUNT(*) FROM Users WHERE Username = '" + TName.Text + "'", con);
        uname = Int32.Parse(cmn.ExecuteScalar().ToString());
        uid = Int32.Parse(cmm.ExecuteScalar().ToString());
        if (uname > 0)
        {
            Response.Write("<script>alert('Username Already Exist');</script>");
        }
        else
        {

            if (uid > 0)
            {
                Response.Write("<script>alert('Email Already Exist');</script>");
            }
            else
            {
                cmd = new SqlCommand("select top 1 UserId from Users order by UserId desc", con);
                Int32 n = Int32.Parse(cmd.ExecuteScalar().ToString()) + 1;
                cmm = new SqlCommand("INSERT INTO Users VALUES ('" + n + "','" + TName.Text + "','" + TPass.Text + "','" + TMail.Text + "','" + TPhone.Text + "','" + null + "','" + null + "')", con);
                cmm.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Login.aspx");
            }

        }

    }
}