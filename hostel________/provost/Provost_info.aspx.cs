using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hostel________.provost
{
    public partial class Provost_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Label1.Text += Session["New"].ToString();
            }
            else
            {
                Response.Redirect("provost_login.aspx");
            }
        }
    }
}