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

public partial class gallery : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\MSSQLSERVER2014;Integrated Security=False;Initial Catalog=Pulse;User ID=PulseAdmin; Password=HimanshuLimbasiya123");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/Uploads/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
            }

            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        if (Page.User.Identity.IsAuthenticated)
        {
            checklinkk.InnerHtml = "Hi, " + Page.User.Identity.Name;

        }


    }
    protected void UploadFile(object sender, EventArgs e)
    {
        SqlCommand cmn;
        SqlConnection con = new SqlConnection(@"Data Source=.\MSSQLSERVER2014;Integrated Security=False;Initial Catalog=Pulse;User ID=PulseAdmin; Password=HimanshuLimbasiya123");
        if (FileUpload1.HasFile)
        {
            string strname = FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + strname);
            con.Open();
            cmn = new SqlCommand("select top 1 Id from Gallery order by Id desc", con);
            Int32 n = Int32.Parse(cmn.ExecuteScalar().ToString()) + 1;
            SqlCommand cmd = new SqlCommand("insert into Gallery values('" + n + "','" + strname + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindGrid();
        }
        else
        {

        }
    }


    private void BindGrid()
    {

        using (SqlCommand cmd = new SqlCommand("SELECT * FROM Gallery "))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    gv1.DataSource = dt;
                    gv1.DataBind();
                }
            }

        }
    }
    protected void gv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv1.PageIndex = e.NewPageIndex;
        BindGrid();
    }


    protected void gv1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gv1.EditIndex = e.NewEditIndex;
        BindGrid();
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

            string file = System.IO.Path.Combine(Server.MapPath("~/Uploads/"), fu.FileName);
            fu.SaveAs(file);
            SqlCommand cmd = new SqlCommand("update Gallery set IMAGES = '" + fu.FileName + "' where Id=" + Convert.ToInt32(eid.Text) + "", con);

            con.Open();
            int res = cmd.ExecuteNonQuery();
            con.Close();
        }

        SqlCommand cmd1 = new SqlCommand("update Gallery set IMAGES = '" + fu.FileName + "' where Id=" + Convert.ToInt32(eid.Text) + "", con);
        con.Open();
        int res1 = cmd1.ExecuteNonQuery();
        con.Close();

        if (res1 == 1)
        {
            Response.Write("<script>alert('Updation done!')</script>");
        }
        gv1.EditIndex = -1;
        BindGrid();
    }
    protected void gv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gv1.EditIndex = -1;
        BindGrid();
    }
    protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;

        GridViewRow row = (GridViewRow)gv1.Rows[index];

        Label eid = (Label)row.FindControl("lbleid");
        SqlCommand cmt = new SqlCommand("SELECT IMAGES FROM Gallery WHERE Id=" + Convert.ToInt32(eid.Text) + "",con);
        SqlCommand cmd = new SqlCommand("delete from Gallery where Id=" + Convert.ToInt32(eid.Text) + "", con);
        con.Open();
        string n = (string)cmt.ExecuteScalar();
        int res = cmd.ExecuteNonQuery();
        string filePath = System.IO.Path.Combine(Server.MapPath("~/Uploads/"), n);
        if (System.IO.File.Exists(filePath))
        {
            System.IO.File.Delete(filePath);
        }
        con.Close();

        if (res == 1)
        {
            Response.Write("<script>alert('Deletion done!')</script>");
        }
        BindGrid();
    }

}
