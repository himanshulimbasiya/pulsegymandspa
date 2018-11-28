using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Userdashboard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\MSSQLSERVER2014;Integrated Security=False;Initial Catalog=Pulse;User ID=PulseAdmin; Password=HimanshuLimbasiya123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.PopulatePage();
            Bind();
        }

        if (Page.User.Identity.IsAuthenticated)
        {
            SqlCommand cmd;
            con.Open();

            cmd = new SqlCommand("SELECT Username FROM Users WHERE (Username = '" + Page.User.Identity.Name + "' OR Email='" + Page.User.Identity.Name + "')", con);
            string n = (string)cmd.ExecuteScalar();
            checklinkk.InnerHtml = "Hi, " + n;
            checklinkk.Attributes["href"] = "Home.aspx";
            con.Close();

        }
    }

    private void PopulatePage()
    {
        string UserId = this.Page.RouteData.Values["UserId"].ToString();
        string query = "SELECT [Username] FROM [Users] WHERE [UserId] = @UserId";
        //string conString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=Pulse;User ID=PulseAdmin;Password=HimanshuLimbasiya123"))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@UserId", UserId);
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
					try {
                    	using (DataTable dt = new DataTable())
                    	{
                        	sda.Fill(dt);
                        	if (dt.Rows.Count > 0)
                        	{
                            	Label1.Text = dt.Rows[0]["Username"].ToString();
                        	}
                    	}
					} catch (Exception e) 
					{
					}
                }
            }
        }
    }
    public void Bind()
    {
        SqlCommand cmd = new SqlCommand("SELECT UserId, Username, Email, Phonenumber FROM Users where (Username = '" + Page.User.Identity.Name + "' OR Email='" + Page.User.Identity.Name + "')", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds, "Users");

        gv1.DataSource = ds;
        gv1.DataBind();
    }
    protected void gv1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gv1.EditIndex = e.NewEditIndex;
        Bind();
    }
    string n;
    protected void gv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = e.RowIndex;

        GridViewRow row = (GridViewRow)gv1.Rows[index];

        Label eid = (Label)row.FindControl("lbleid");
        Label ename = (Label)row.FindControl("lblename");
        TextBox emid = (TextBox)row.FindControl("txtemid");
        TextBox mnumber = (TextBox)row.FindControl("txtmnumber");


        SqlCommand cmd1 = new SqlCommand("update Users set Username='" + ename.Text + "',Email='" + emid.Text + "',Phonenumber=" + Convert.ToInt64(mnumber.Text) + " where UserId=" + Convert.ToInt32(eid.Text) + "", con);
        con.Open();
        int res1 = cmd1.ExecuteNonQuery();
        con.Close();

        if (res1 == 1)
        {
            Response.Write("<script>alert('Updation done!')</script>");
        }
        gv1.EditIndex = -1;
        Bind();
    }
    protected void gv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gv1.EditIndex = -1;
        Bind();
    }
    protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;

        GridViewRow row = (GridViewRow)gv1.Rows[index];

        Label eid = (Label)row.FindControl("lbleid");

        SqlCommand cmd = new SqlCommand("delete from Users where UserId=" + Convert.ToInt32(eid.Text) + "", con);
        con.Open();
        int res = cmd.ExecuteNonQuery();
        con.Close();

        if (res == 1)
        {
            Response.Write("<script>alert('Deletion done!')</script>");
        }
        Bind();
    }
    protected void gv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv1.PageIndex = e.NewPageIndex;
        Bind();
    }



}