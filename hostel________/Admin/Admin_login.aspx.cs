using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace hostel________.Admin
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["New"] = null;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
            conn.Open();
            String checkuser = "Select count(*) from staffdata where Admin_name ='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select Password from staffdata where Admin_name ='" + TextBox1.Text + "'";
                SqlCommand passcomm = new SqlCommand(checkPasswordQuery, conn);
                string password = passcomm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("password is correct");
                    Response.Redirect("~/Admin/work_admin.aspx");
                }
                else
                {
                    Label1.Text = "password is not correct";
                }

            }
            else
            {
                Label1.Text = "Username is not correct";
            }
        }
    }
}