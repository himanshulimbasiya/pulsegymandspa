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


public partial class Admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\MSSQLSERVER2014;Integrated Security=False;Initial Catalog=Pulse;User ID=PulseAdmin; Password=HimanshuLimbasiya123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.User.Identity.IsAuthenticated)
        {
            checklinkk.InnerHtml = "Hi, " + Page.User.Identity.Name;

        }
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }

    }

    private void BindGrid()
    {
        
        using (SqlCommand cmd = new SqlCommand("SELECT * FROM Users EXCEPT SELECT TOP 1 * FROM Users", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
					try {
                    	using (DataTable dt = new DataTable())
                    	{
                        	sda.Fill(dt);
                        	gv1.DataSource = dt;
                        	gv1.DataBind();
                    	}
					} catch (Exception e) 
					{
					}
                }
            
        }
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
        BindGrid();
    }
    protected void gv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv1.PageIndex = e.NewPageIndex;
        BindGrid();
    }
}

