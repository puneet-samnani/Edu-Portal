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
    public partial class Result : System.Web.UI.Page
    {
        String vt1,query1,vt2;
        protected void Page_Load(object sender, EventArgs e)
        {
            String vt = Session["LoginId"].ToString();
            Image1.ImageUrl = "Handler1.ashx?id=" + vt;

            SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
            vconn.Open();
            String regg = "S101"; //vt
            String query = "select std,optional from Student where sid='" + regg + "'";
            SqlCommand vcomm = new SqlCommand(query, vconn);
            SqlDataReader vdr = vcomm.ExecuteReader();
            if (vdr.Read())
            {
                vt1 = vdr[0].ToString();
                vt2= vdr[1].ToString();
               // Session["Name"] = vt1;
            }
            vconn.Close();

            if (vconn.State == ConnectionState.Closed)
            {
                vconn.Open();
                if (vt1 == "1" || vt1 == "2" || vt1 == "3" || vt1 == "4" || vt1 == "5" || vt1 == "6" || vt1 == "7" || vt1 == "8")
                {  
                    query1="select English,Hindi,Math,Science,Computer,Drawing from Student s,Result r where s.name=r.name and sid='"+regg+"'";
                }
                else if (vt1 == "9" && vt2 == "Science"|| vt1=="10" && vt2=="Science" )
                {
                    query1 = "select English,Hindi,Math,Science,[Social Science],Drawing from Student s,Result r where s.name=r.name and sid='" + regg + "'";
                }
                else if (vt1 == "9" && vt2 == "Art"|| vt1=="10" && vt2=="Art" )
                {
                    query1 = "select English,Hindi,Art,[Social Science],Economics,Computer from Student s,Result r where s.name=r.name and sid='" + regg + "'";
                }
                else if (vt1 == "11" && vt2 == "Math"|| vt1=="12" && vt2=="Math" )
                {
                    query1 = "select English,Hindi,Math,Physics,Chemistry from Student s,Result r where s.name=r.name and sid='" + regg + "'";
                }
                  else if (vt1 == "11" && vt2 == "Biology"|| vt1=="12" && vt2=="Biology" )
                {
                    query1 = "select English,Hindi,Biology,Physics,Chemistry from Student s,Result r where s.name=r.name and sid='" + regg + "'";
                }
                SqlCommand vcomm1 = new SqlCommand(query1, vconn);
                SqlDataAdapter da = new SqlDataAdapter(vcomm1);

                DataSet ds = new DataSet();
                da.Fill(ds, "Result");
                DataTable vdt = ds.Tables[0];
                vconn.Close();
             
                GridView1.DataSource = null;
                GridView1.DataSourceID = null;
                GridView1.DataSource = vdt;
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/StaffLogin.aspx");
        }
    }
}