using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SchoolWebsite
{
    public partial class search : System.Web.UI.Page
    {
        String vt;
        String nm = "ADMIN";
        protected void Page_Load(object sender, EventArgs e)
        {
            vt = Session["LoginId"].ToString();
            Image1.ImageUrl = "Handler1.ashx?id=" + vt;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
            vconn.Open();
            String regg = TextBox1.Text;
            String query = "select * from Student where sid='" + regg + "'";
            SqlCommand vcomm = new SqlCommand(query, vconn);
            SqlDataAdapter da = new SqlDataAdapter(vcomm);

            DataSet ds = new DataSet();
            da.Fill(ds, "Student");
            DataTable vdt = ds.Tables[0];
            vconn.Close();
            GridView1.DataSource = null;
            GridView1.DataSourceID = null;
            GridView1.DataSource = vdt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
            vconn.Open();
            String query = "select * from Student where sid!='"+nm+"'";
            SqlCommand vcomm = new SqlCommand(query, vconn);
            SqlDataAdapter da = new SqlDataAdapter(vcomm);

            DataSet ds = new DataSet();
            da.Fill(ds, "Student");
            DataTable vdt = ds.Tables[0];
            vconn.Close();
            GridView1.DataSource = null;
            GridView1.DataSourceID = null;
            GridView1.DataSource = vdt;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/StaffLogin.aspx");
        }
    }
}