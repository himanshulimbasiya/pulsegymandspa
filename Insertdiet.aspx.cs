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

public partial class Insertdiet : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\MSSQLSERVER2014;Integrated Security=False;Initial Catalog=Pulse;User ID=PulseAdmin; Password=HimanshuLimbasiya123");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/images/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
            }
        }
        if (Page.User.Identity.IsAuthenticated)
        {
            checklinkk.InnerHtml = "Hi, " + Page.User.Identity.Name;

        }

    }
    public void Bind()
    {
        SqlCommand cmd = new SqlCommand("SELECT * FROM Users EXCEPT SELECT TOP 1 * FROM Users", con);
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
        TextBox ename = (TextBox)row.FindControl("txtename");


        FileUpload fu = (FileUpload)row.FindControl("fu1");

        if (fu.HasFile)
        {

            string file = System.IO.Path.Combine(Server.MapPath("~/images/"), fu.FileName);
            fu.SaveAs(file);
            SqlCommand cmd = new SqlCommand("update Users set DietPlan = '" + fu.FileName + "' where UserId=" + Convert.ToInt32(eid.Text) + "", con);

            con.Open();
            int res = cmd.ExecuteNonQuery();
            con.Close();

            if (res == 1)
            {
                Response.Write("<script>alert('Updation done!')</script>");
            }
            gv1.EditIndex = -1;
            Bind();
        }



    }
    protected void gv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gv1.EditIndex = -1;
        Bind();
    }
    
    protected void gv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv1.PageIndex = e.NewPageIndex;
        Bind();
    }

}