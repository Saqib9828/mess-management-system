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
    public partial class inventry_goods_use : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection Fconn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
                Fconn.Open();
                DateTime update_on = DateTime.Now;
                String insertQuery = "insert into goods_use (ugid,use_quantity,datee)  values(@gid,@quantity,@updated_on)";
                SqlCommand com = new SqlCommand(insertQuery, Fconn);
                com.Parameters.AddWithValue("@updated_on", update_on);
                com.Parameters.AddWithValue("@gid", Convert.ToInt16(DropDownList3.Text));
                com.Parameters.AddWithValue("@quantity", TextBox3.Text);
                com.ExecuteNonQuery();


                {

                    Label1.Text = "Goods Uses Recorded";


                }

                Fconn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //conn.Open();

            //string name2 = "select gid from Goods  where goods_name='"+DropDownList2.Text+"'";
            //SqlCommand cmd2 = new SqlCommand(name2, conn);
            //SqlDataReader sdr2 = cmd2.ExecuteReader();
            //while (sdr2.Read())
            //{
            //    Label2.Text = sdr2["gid"].ToString();

            //}
            //conn.Close();
        }
    }
}