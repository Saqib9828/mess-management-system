using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace hostel________.munsi
{
    public partial class DailyUsed : System.Web.UI.Page
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
                DateTime update_on = DateTime.Now;
                String insertQuery = "insert into DailyUsed (Date,BGName,Btype,Bquantity,Bunit,LGName,Ltype,Lquantity,Lunit,DGName,Dtype,Dquantity,Dunit,Munshi)  values(@date,@name,@type,@quantity,@unit,@name1,@type1,@quantity1,@unit1,@name2,@type2,@quantity2,@unit2,@munshi)";
                SqlCommand com = new SqlCommand(insertQuery, Fconn);

                com.Parameters.AddWithValue("@date", TextBox1.Text);

                com.Parameters.AddWithValue("@name", TextBox5.Text);
                com.Parameters.AddWithValue("@type", TextBox6.Text);
                com.Parameters.AddWithValue("@quantity", TextBox7.Text);
                com.Parameters.AddWithValue("@unit", DropDownList1.Text);
               

                com.Parameters.AddWithValue("@name1", TextBox2.Text);
                com.Parameters.AddWithValue("@type1", TextBox3.Text);
                com.Parameters.AddWithValue("@quantity1", TextBox4.Text);
                com.Parameters.AddWithValue("@unit1", DropDownList2.Text);
               

                com.Parameters.AddWithValue("@name2", TextBox10.Text);
                com.Parameters.AddWithValue("@type2", TextBox11.Text);
                com.Parameters.AddWithValue("@quantity2", TextBox12.Text);
                com.Parameters.AddWithValue("@unit2", DropDownList3.Text);
                
                
                com.Parameters.AddWithValue("@munshi", Session["munshi"]);
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