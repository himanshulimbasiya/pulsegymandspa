using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string x;
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmm;
        SqlCommand cmd;
        SqlConnection con = new SqlConnection(@"Data Source=.\MSSQLSERVER2014;Integrated Security=False;Initial Catalog=Pulse;User ID=PulseAdmin; Password=HimanshuLimbasiya123");
        con.Open();
        cmm = new SqlCommand("SELECT Count(*) FROM Users WHERE (Username = '" + TMail.Text + "' OR Email='" + TMail.Text +"') AND Password='" + TPass.Text + "'", con);
        if (Int32.Parse(cmm.ExecuteScalar().ToString()) == 1)
        {
            cmm = new SqlCommand("SELECT Email FROM Users WHERE (Username = '" + TMail.Text + "' OR Email='" + TMail.Text + "') AND Password='" + TPass.Text + "'", con);
            FormsAuthentication.RedirectFromLoginPage(TMail.Text, false);
            cmd = new SqlCommand("SELECT UserId FROM Users WHERE (Username = '" + TMail.Text + "' OR Email='" + TMail.Text + "') AND Password='" + TPass.Text + "'", con);
            string n = (string)cmd.ExecuteScalar();
            if(Int32.Parse(cmd.ExecuteScalar().ToString())==1000)
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Response.RedirectToRoute("User dashboard", new { UserId = n });
            }
            con.Close();

        }
        else
        {
            con.Close();           //Login Failed
            Label LabelTry = new Label();
            LabelTry.Text = "Wrong Password, try again.";
            LabelTry.ForeColor = System.Drawing.Color.Red;
            PlaceHolder1.Controls.Add(LabelTry);
        }

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
    }
}