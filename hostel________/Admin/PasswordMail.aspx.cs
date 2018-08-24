using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace hostel________.Admin
{
    public partial class PasswordMail : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
 
        protected void Page_Load(object sender, EventArgs e)
        {

            TextBox1.Text = Session["email_id"].ToString();
            TextBox2.Text = "Login Credential ";
            TextBox3.Text = "Your login password is : '" + Session["password"] + "' You can use your enrollment no and this password to login this system";


             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text;
            MailMessage feedBack = new MailMessage();

            feedBack.To.Add(email);

            feedBack.From = new MailAddress(email);

            feedBack.Subject = TextBox2.Text; ;

            feedBack.Body = TextBox3.Text;



            feedBack.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address

            smtp.Port = 587;

            smtp.EnableSsl = true;

            smtp.Credentials = new System.Net.NetworkCredential("msakib9286@gmail.com", "9598744741");

            //Or your Smtp Email ID and Password

            smtp.Send(feedBack);

            Label1.Text = "Password sent successfully";

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}