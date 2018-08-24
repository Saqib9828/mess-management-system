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
    public partial class munshi_add_goods : System.Web.UI.Page
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
                String insertQuery = "insert into Goods_Data (Goods_Name,TYpe,Quantity,Unit,Expairy_Date,Updated_On,Munshi,minimum_stock)  values(@name,@type,@quantity,@unit,@exp_date,@updated_on,@munshi,@minimum_stock)";
                SqlCommand com = new SqlCommand(insertQuery, Fconn);
                com.Parameters.AddWithValue("@name", TextBox1.Text);
                com.Parameters.AddWithValue("@type", TextBox2.Text);
                com.Parameters.AddWithValue("@quantity", TextBox3.Text);
                com.Parameters.AddWithValue("@unit", DropDownList1.Text);
                com.Parameters.AddWithValue("@exp_date", TextBox4.Text);
                com.Parameters.AddWithValue("@updated_on", update_on);
                com.Parameters.AddWithValue("@munshi", Session["munshi"]);
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