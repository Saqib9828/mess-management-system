using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace hostel________.provost
{
    public partial class addstaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection Fconn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
                Fconn.Open();
                String insertQuery = "insert into staffdata (name,DOB,designation,DOJ,contact,address,Admin_name,Password)  values(@name,@dob,@designation,@doj,@contact,@address,@Admin_name,@Password)";
                SqlCommand com = new SqlCommand(insertQuery, Fconn);
                com.Parameters.AddWithValue("@name", TextBox1.Text);
                com.Parameters.AddWithValue("@dob", TextBox2.Text);
                com.Parameters.AddWithValue("@designation", TextBox3.Text);
                com.Parameters.AddWithValue("@doj", TextBox4.Text);
                com.Parameters.AddWithValue("@contact", TextBox5.Text);
                com.Parameters.AddWithValue("@address", TextBox6.Text);
                com.Parameters.AddWithValue("@Admin_name", TextBox7.Text);
                com.Parameters.AddWithValue("@Password", TextBox8.Text);



                com.ExecuteNonQuery();


                {

                    Label1.Text = "Staff added";

                    TextBox7.Text = "";

                    Label2.Text = TextBox7.Text;
                    Label3.Text = TextBox8.Text;

                }

                Fconn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
        }

        
    }
}