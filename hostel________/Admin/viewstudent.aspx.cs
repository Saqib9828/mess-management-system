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

namespace hostel________.Admin
{
    public partial class viewstudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = false;
            Label4.Visible = false;
             
            Label6.Visible = false;

            TextBox1.Visible = false;
            DropDownList3.Visible = false;
            DropDownList2.Visible = false;
            DropDownListF.Visible = false;
             

            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
             
            Button5.Visible = false;


            GridView1.Visible = true;
            GridView6.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = false;
            Label3.Visible = true;
            Label4.Visible = false;
             
            Label6.Visible = false;

            TextBox1.Visible = false;
            DropDownList3.Visible = false;
            DropDownList2.Visible = false;
            DropDownListF.Visible = false;
             

            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
             
            Button5.Visible = false;


            GridView2.Visible = true;
            GridView6.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = true;
             
            Label6.Visible = false;

            TextBox1.Visible = false;
            DropDownList3.Visible = false;
            DropDownList2.Visible = false;
            DropDownListF.Visible = false;
            

            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
             
            Button5.Visible = false;


            GridView3.Visible = true;
            GridView6.Visible = false;
        }

         
        protected void Button5_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
             
            Label6.Visible = true;

            TextBox1.Visible = false;
            DropDownList3.Visible = false;
            DropDownListF.Visible = false;
            DropDownList2.Visible = false;
             

            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
             
            Button5.Visible = false;


            GridView5.Visible = true;
            GridView6.Visible = false;
        }

         
    }
}