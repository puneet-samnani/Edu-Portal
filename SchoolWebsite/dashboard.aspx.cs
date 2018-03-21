using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolWebsite
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
            vconn.Open();

            String query1 = "Select count(sid) from Student where type='Faculty'";
            SqlCommand vcomm = new SqlCommand(query1, vconn);

            Int32 n = (Int32) vcomm.ExecuteScalar();
            

            Label6.Text = n.ToString();
            vconn.Close();

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
            vconn.Open();

            String query1 = "Select count(school_id) from GovtSchools";
            SqlCommand vcomm = new SqlCommand(query1, vconn);



            Int32 n = (Int32)vcomm.ExecuteScalar();


            Label4.Text = n.ToString();
            vconn.Close();

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
            vconn.Open();

            String query1 = "Select count(sid) from Student where type='Student'";
            SqlCommand vcomm = new SqlCommand(query1, vconn);

            Int32 n = (Int32)vcomm.ExecuteScalar();

            Label5.Text = n.ToString();

            vconn.Close();

        }
    }
}