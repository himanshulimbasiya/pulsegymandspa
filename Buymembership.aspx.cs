using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Buymembership : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\MSSQLSERVER2014;Integrated Security=False;Initial Catalog=Pulse;User ID=PulseAdmin; Password=HimanshuLimbasiya123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.User.Identity.IsAuthenticated)
        {
            SqlCommand cmd;
            con.Open();

            cmd = new SqlCommand("SELECT Username FROM Users WHERE (Username = '" + Page.User.Identity.Name + "' OR Email='" + Page.User.Identity.Name + "')", con);
            string n = (string)cmd.ExecuteScalar();
            checklinkk.InnerHtml = "Hi, " + n;
            checklinkk.Attributes["href"] = "Home.aspx";
            Label1.Text = n;
            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd;
        con.Open();

        cmd = new SqlCommand("SELECT UserId FROM Users WHERE (Username = '" + Page.User.Identity.Name + "' OR Email='" + Page.User.Identity.Name + "')", con);
        string n = (string)cmd.ExecuteScalar();


        if (Int32.Parse(cmd.ExecuteScalar().ToString()) == 1000)
        {
            Response.Redirect("Admin.aspx");
        }
        else
        {
            Response.RedirectToRoute("User dashboard", new { UserId = n });
        }
        con.Close();

    }
}