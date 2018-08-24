using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace hostel________.munsi
{
    public partial class inventry_goods_manage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct goods_name,unit_of_goods, ((select sum(g_add_use_quantity) from goods_add where g_add_gid=t1.gid)-((select sum(use_quantity) from goods_use where ugid=t1.gid))) as qnt from Goods t1 inner join goods_use on (gid=ugid) inner join goods_add on (gid=g_add_gid) where (		(			(select sum(g_add_use_quantity) from goods_add where g_add_gid=t1.gid)	-			(select sum(use_quantity) from goods_use where ugid=t1.gid)		)		<= (minimum_quantity)) group by gid,goods_name,unit_of_goods", con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            RepDetails.DataSource = ds;
            RepDetails.DataBind();
            con.Close();

            //con.Open();
            //SqlCommand cmd2 = new SqlCommand("select gid,goods_name,unit_of_goods, ((select sum(g_add_use_quantity) from goods_add where g_add_gid=gid)-((select sum(use_quantity) from goods_use where ugid=gid))) as qnt2  from Goods", con);
            //DataSet ds2 = new DataSet();
            //SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            //da2.Fill(ds2);
            //Repeater1.DataSource = ds2;
            //Repeater1.DataBind();
            //con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = true;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();

            string name2 = "select unit_of_goods, ((isnull((select sum(g_add_use_quantity) from goods_add where g_add_gid=gid),0)) -	(isnull((select sum(use_quantity) from goods_use where ugid=gid),0)) ) as qnt2   from Goods where goods_name='" + DropDownList1.Text + "'";
            SqlCommand cmd2 = new SqlCommand(name2, con);
            SqlDataReader sdr2 = cmd2.ExecuteReader();
            while (sdr2.Read())
            {
                Label4.Text = sdr2["qnt2"].ToString();
                Label5.Text = sdr2["unit_of_goods"].ToString();

            }
            con.Close();
        }
    }
}