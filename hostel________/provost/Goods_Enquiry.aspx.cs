using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace hostel________.provost
{
    public partial class Goods_Enquiry : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
                
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select Goods_Name,Quantity,Unit,minimum_stock from Goods_Data where Quantity <= minimum_stock", con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            RepDetails.DataSource = ds;
            RepDetails.DataBind();
            con.Close();

        }
    }
}