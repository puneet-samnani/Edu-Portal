using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SchoolWebsite
{
    public partial class changepasswd : System.Web.UI.Page
    {
        String ss;
        protected void Page_Load(object sender, EventArgs e)
        {
            //ss = Session["name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
            vconn.Open();
            String query="update Student set password='"+TextBox3.Text+"' where name='"+ss+"'";
            SqlCommand vcomm = new SqlCommand(query, vconn);
            vcomm.ExecuteNonQuery();
            vconn.Close();
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/StaffLogin.aspx");
        }
    }
}