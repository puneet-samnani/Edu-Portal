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
    public partial class StaffLogin : System.Web.UI.Page
    {
        SqlConnection vconn = new SqlConnection(ConfigurationManager.ConnectionStrings["SchoolConnectionString4"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            vconn.Open();
            String reg = Username.Text;
           // long pwd = passwd.Text
            string pwd = passwd.Text;
            String query = "select password from Student where(sid='" + reg + "')";
            SqlCommand vcomm = new SqlCommand(query, vconn);
            SqlDataReader vdr = vcomm.ExecuteReader();
            if (!vdr.Read())
            {
                Label1.Text = "Wrong Username or Password";
                Label2.Text = "Welcome";
            }
            else
            {
                if (vdr[0].ToString() == passwd.Text)
                {
                    Session["LoginId"] = reg;


                 //   if (reg == "ADMIN")

                  //      Response.Redirect("Admin.aspx");
                  //  else
                 //   {
                        vconn.Close();
                        if (vconn.State == ConnectionState.Closed)
                        {
                            vconn.Open();
                            String query1 = "select name,type from Student where(sid='" + reg + "')";
                            SqlCommand vcomm1 = new SqlCommand(query1, vconn);

                            SqlDataReader vdr1 = vcomm1.ExecuteReader();
                            if (vdr1.Read())
                            {
                                String vt1 = vdr1[0].ToString();
                                String vt2 = vdr1[1].ToString();

                                
                                Session["Name"] = vt1;
                                if (vt2.Equals("Faculty"))
                                    Response.Redirect("Faculty.aspx");
                                else if (vt2.Equals("Admin"))
                                    Response.Redirect("Admin.aspx");
                            else if (vt2.Equals("Govt"))
                                Response.Redirect("gov.aspx");
                            else
                                {

                                   // Label2.Text = vt2.Length.ToString();
                                    
                                  //  Label2.Text = vt2;
                                  Response.Redirect("Main12.aspx");

                                }
                            }
                        }

                    
                }
                else
                    Label1.Text = "Wrong Username or Password";
                
            }
            vconn.Close();

        }
    }
}