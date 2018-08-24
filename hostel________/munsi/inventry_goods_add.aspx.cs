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
    public partial class inventry_goods_add : System.Web.UI.Page
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
                DateTime update_on = DateTime.Now;
                String insertQuery = "insert into Goods (Goods_Name,unit_of_goods,minimum_quantity)  values(@name,@unit,@minimum_stock)";
                SqlCommand com = new SqlCommand(insertQuery, Fconn);
                com.Parameters.AddWithValue("@name", TextBox1.Text);
                com.Parameters.AddWithValue("@unit", DropDownList1.Text);
                com.Parameters.AddWithValue("@minimum_stock", TextBox6.Text);
                com.ExecuteNonQuery();


                {

                    Label1.Text = "Goods Added";


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