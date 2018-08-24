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

namespace hostel________.Student
{
    public partial class DiningClose : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection Fconn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
                Fconn.Open();
                String insertQuery = "insert into diningclose (start,endd,reason,enno,IsSeen)  values(@start,@endd,@reason,@enno,@isseen)";
                SqlCommand com = new SqlCommand(insertQuery, Fconn);
              
                com.Parameters.AddWithValue("@start", TextBox1.Text);
                com.Parameters.AddWithValue("@reason", TextBox3.Text);
                com.Parameters.AddWithValue("@endd", DropDownList1.Text);
                com.Parameters.AddWithValue("@enno", Convert.ToString(Session["New"]));
                com.Parameters.AddWithValue("@isseen", 0);

                com.ExecuteNonQuery();


                {

                    Label1.Text = "Recorded";

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