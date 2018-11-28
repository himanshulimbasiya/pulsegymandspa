using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.User.Identity.IsAuthenticated)
        {
            checklink1.InnerHtml = "Hi, " + Page.User.Identity.Name;
            checklink1.Attributes["href"] = "#";
            checklink2.InnerHtml = "Logout ";
            checklink2.Attributes["href"] = "Logout.aspx";

        }
        else
        {
            checklink1.InnerHtml = "Log In ";
            checklink1.Attributes["href"] = "Login.aspx";
            checklink2.InnerHtml = "Sign Up ";
            checklink2.Attributes["href"] = "Signup.aspx";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.User.Identity.IsAuthenticated)
        {
            Response.Redirect("Dashboard.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        using (MailMessage mm = new MailMessage("info@pulsegymandspa.com", YourEmail.Text))
        {
            mm.Body = "Name : " + YourName.Text + "<br /><br />Email : " + YourEmail.Text + "<br /><br />Message : " + Comments.Text;
            mm.IsBodyHtml = true;
            mm.To.Add("harmeetsinghbhatia087@gmail.com");
            MailAddress address = new MailAddress(YourEmail.Text);
            mm.From = address;
            mm.Subject = YourName.Text + " :  " + YourSubject.Text;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "dewsrv20.fastwindowsserver.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("info@pulsegymandspa.in", "Himanshu123");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Send(mm);
            Response.Write("<script>alert('Message Sent!')</script>");
        }
           
           
    }
}
