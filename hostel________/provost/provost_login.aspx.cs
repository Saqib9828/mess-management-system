using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace hostel________.provost
{
    public partial class provost_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["New"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
            conn.Open();
            String checkuser = "Select count(*) from Provost where Provost ='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select Password from Provost where Provost ='" + TextBox1.Text + "'";
                SqlCommand passcomm = new SqlCommand(checkPasswordQuery, conn);
                string password = passcomm.ExecuteScalar().ToString().Replace(" ", " ");
                if (password == TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("password is correct");
                    Response.Redirect("Provost_info.aspx");
                }
                else
                {
                    Label1.Text = "password is not correct";
                }

            }
            else
            {
                Label1.Text = "User_name is not correct";
            }
        }
    }
}