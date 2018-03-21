using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolWebsite
{
    public partial class Main12 : System.Web.UI.Page
    {
        String vt,vt1;
        protected void Page_Load(object sender, EventArgs e)
        {
          vt = Session["LoginId"].ToString();
          vt1 = Session["Name"].ToString();
          Image1.ImageUrl = "Handler1.ashx?id=" + vt;
           Label1.Text = vt1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/StaffLogin.aspx");
        }
    }
}