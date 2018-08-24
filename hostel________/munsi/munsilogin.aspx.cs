using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace hostel________.munsi
{
    public partial class munsilogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
            conn.Open();
            String checkuser = "Select count(*) from munshi_login where Munshi_id ='" + TextBoxUN.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select Pass from munshi_login where Munshi_id ='" + TextBoxUN.Text + "'";
                SqlCommand passcomm = new SqlCommand(checkPasswordQuery, conn);
                string password = passcomm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBoxPass.Text)
                {
                    Session["munshi"] = TextBoxUN.Text;
                    Response.Write("password is correct");
                    Response.Redirect("~/munsi/munshi_home.aspx");
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