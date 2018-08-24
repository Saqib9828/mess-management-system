using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Drawing;

namespace hostel________
{
    public partial class trymail : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO try (name,pass) VALUES ('" + TextBox1.Text + "' , '" + TextBox2.Text + "')", con);

            cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text.Trim());
           
            if (con.State == ConnectionState.Closed)
            {
                
                con.Open();
            }
            cmd.ExecuteNonQuery();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Added');" , true);

            Response.Redirect("PasswordMail.aspx");

  
        }
    }
}