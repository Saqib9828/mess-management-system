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
    public partial class submit_dining_fee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Convert.ToString(Session["New"]);
            DateTime Paid_On = DateTime.Now;
            Label5.Text = Convert.ToString(Paid_On);

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label3.Text = Convert.ToString(Convert.ToInt16(DropDownList1.Text) * Convert.ToInt16(Label2.Text));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection Fconn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
                Fconn.Open();

                String insertQuery = "insert into stdiningdata (enrol,datee,nofmonth,total)  values(@enrol,@datee,@nofmonth,@total)";
                SqlCommand com = new SqlCommand(insertQuery, Fconn);
                com.Parameters.AddWithValue("@enrol", Label1.Text);
                com.Parameters.AddWithValue("@datee", Label5.Text);
                com.Parameters.AddWithValue("@nofmonth", DropDownList1.Text);
                com.Parameters.AddWithValue("@total", Label3.Text);
              

                com.ExecuteNonQuery();


                {

                    Label4.Text = "Your Payment Successful";

                }

                Fconn.Close();

                Fconn.Open();

                String insertQuery2 = "insert into start_stop_data (enrol,activity,Datee) values(@enrol,@activity,@Datee)";
                SqlCommand com2 = new SqlCommand(insertQuery2, Fconn);
                com2.Parameters.AddWithValue("@enrol", Label1.Text);
                com2.Parameters.AddWithValue("@datee", Label5.Text);
                com2.Parameters.AddWithValue("@activity", "2");
                com2.ExecuteNonQuery();
                {

                    Label4.Text = "Your Payment Successful";

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