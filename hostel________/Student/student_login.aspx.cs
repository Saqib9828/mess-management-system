using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace hostel________.Student
{
    public partial class student_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
            conn.Open();
            String checkuser = "Select count(*) from StudentData where Enrollment_No ='" + TextBoxUN.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select StudentPassword from StudentData where Enrollment_No ='" + TextBoxUN.Text + "'";
                SqlCommand passcomm = new SqlCommand(checkPasswordQuery, conn);
                string password = passcomm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBoxPass.Text)
                {
                    Session["New"] = TextBoxUN.Text;
                    Response.Write("password is correct");
                    Response.Redirect("~/student/studentpre.aspx");
                }
                else
                {
                    Label1.Text = "password is not correct";
                }

            }
            else
            {
                Label1.Text = "username is not correct";
            }

        }
        
    }
}