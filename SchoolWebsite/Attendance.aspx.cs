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
    public partial class Attendance : System.Web.UI.Page
    {
        String datee;
        String sub1;
        SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
        String vSid, name,attendce,std;
        DropDownList temp;
        String vt,vt1;
        protected void Page_Load(object sender, EventArgs e)
        {
            vt = Session["LoginId"].ToString();
            vt1 = Session["Name"].ToString();
            Image1.ImageUrl = "Handler1.ashx?id=" + vt;
            Label1.Text = "";
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
            int std = Convert.ToInt16(DropDownList1.SelectedIndex);
            int std1 = Convert.ToInt16(DropDownList2.SelectedIndex);
            SqlCommand vcomm;
            int f=0;
            String query;
           // sub = DropDownList2.SelectedValue.ToString();
            if (std1 == 0)
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
            else
            {
                vconn.Open();
                if (std == 0)
                {
                    GridView1.DataSource = null;
                    GridView1.DataBind();
                }
                if (std == 1 || std == 2 || std == 3 || std == 4 || std == 5 || std == 6 || std == 7 || std == 8)
                {
                    Session["sub1"] = "";
                    sub1 = Session["sub1"].ToString();
                 query = "select sid,name,std from Student where std='" + std + "'";
                 vcomm = new SqlCommand(query, vconn);
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
                else if (std == 9)
                {
                    f = std;
                    Session["sub1"] = "Science";
                    sub1 = Session["sub1"].ToString();
                   
                    query = "select sid,name,std from Student where std='" + f + "' and optional='" + sub1 + "'";
                    vcomm = new SqlCommand(query, vconn);
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
                else if (std == 10)
                {
                    f = std - 1;
                    Session["sub1"] = "Art";
                    sub1 = Session["sub1"].ToString();
                    query = "select sid,name,std from Student where std='" + f + "' and optional='" + sub1 + "'";
                    vcomm = new SqlCommand(query, vconn);
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
                else if (std == 11)
                {
                    f = std - 1;
                    Session["sub1"] = "Science";
                    sub1 = Session["sub1"].ToString();
                    query = "select sid,name,std from Student where std='" + f + "' and optional='" + sub1 + "'";
                    vcomm = new SqlCommand(query, vconn);
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
                else if (std == 12)
                {
                    f = std - 2;
                    Session["sub1"] = "Art";
                    sub1 = Session["sub1"].ToString();
                    query = "select sid,name,std from Student where std='" + f + "' and optional='" + sub1 + "'";
                    vcomm = new SqlCommand(query, vconn);
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
                  else if (std == 13)
                {
                    f = std - 2;
                    Session["sub1"] = "Math";
                    sub1 = Session["sub1"].ToString();
                    query = "select sid,name,std from Student where std='" + f + "' and optional='" + sub1 + "'";
                    vcomm = new SqlCommand(query, vconn);
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
                  else if (std == 14)
                {
                    f = std - 3;
                    Session["sub1"] = "Biology";
                    sub1 = Session["sub1"].ToString();
                    query = "select sid,name,std from Student where std='" + f + "' and optional='" + sub1 + "'";
                    vcomm = new SqlCommand(query, vconn);
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

                  else if (std == 15)
                {
                    f = std - 3;
                    Session["sub1"] = "Math";
                    sub1 = Session["sub1"].ToString();
                    query = "select sid,name,std from Student where std='" + f + "' and optional='" + sub1 + "'";
                     vcomm = new SqlCommand(query, vconn);
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

                  else if (std == 16)
                {
                    f = std - 4;
                    Session["sub1"] = "Biology";
                    sub1 = Session["sub1"].ToString();
                    query = "select sid,name,std from Student where std='" + f + "' and optional='" + sub1 + "'";
                    vcomm = new SqlCommand(query, vconn);
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
           
             
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
          

            DateTime dateAndTime = DateTime.Now;
            datee=dateAndTime.ToString("dd/MM/yyyy");

           String sub = DropDownList2.SelectedValue.ToString();
            for (int x = 0; x < GridView1.Rows.Count; x++)
            {
                vSid = GridView1.Rows[x].Cells[1].Text;
                name = GridView1.Rows[x].Cells[2].Text;
                std = GridView1.Rows[x].Cells[3].Text;
                temp = (DropDownList)GridView1.Rows[x].Cells[0].FindControl("att");


                if (temp.SelectedIndex == 0)
                {
                    attendce = "P";
                   
                }
                else if (temp.SelectedIndex == 1)
                    attendce = "A";
                    insertatt(datee, vSid, std, sub, vt, attendce, vt1,Session["sub1"].ToString());
            }



        }

        private void insertatt(String dt, String vSid, String clas, String sub, String fid, String attn,String Fname,String option)
        {
            try
            {
                vconn.Open();
                String query = "insert into Attendance values(@dt,@vSid,@clas,@sub,@fid,@attn,@fname,@option)";
                SqlCommand vcomm = new SqlCommand(query, vconn);
                vcomm.Parameters.AddWithValue("@dt", dt);
                vcomm.Parameters.AddWithValue("@vSid", vSid);
                vcomm.Parameters.AddWithValue("@clas", clas);
                vcomm.Parameters.AddWithValue("@sub", sub);
                vcomm.Parameters.AddWithValue("@fid", fid);
                vcomm.Parameters.AddWithValue("@attn", attn);
                vcomm.Parameters.AddWithValue("@fname", vt1);
                vcomm.Parameters.AddWithValue("@option", option);
                vcomm.ExecuteNonQuery();
                vconn.Close();
                Label1.Text = "Attendance Saved";
                Session.Remove(sub1);
            }
            catch (Exception ex)
           {
                Label1.Text = ex.ToString();
                Label1.Text += "\nAttendance Already Marked";
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/StaffLogin.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.Items.Clear();
            GridView1.DataSource = null;
            GridView1.DataBind();
            String cls=DropDownList1.SelectedIndex.ToString();
            if (cls == "0")
            {
                DropDownList2.Items.Add("Select Subject");
            }
            if (cls == "1" || cls == "2" || cls == "3" || cls == "4" || cls == "5" || cls == "6" || cls == "7" || cls == "8")
            {
                DropDownList2.Items.Add("Select Subject");
                DropDownList2.Items.Add("English");
                 DropDownList2.Items.Add("Hindi");
                 DropDownList2.Items.Add("Math");
                 DropDownList2.Items.Add("Science");
                 DropDownList2.Items.Add("Computer");
                 DropDownList2.Items.Add("Drawing");
            }
            else if (cls == "9" || cls == "11")
            {
                DropDownList2.Items.Add("Select Subject");
                DropDownList2.Items.Add("English");
                DropDownList2.Items.Add("Hindi");
                DropDownList2.Items.Add("Math");
                DropDownList2.Items.Add("Science");
                DropDownList2.Items.Add("Social Science");
                DropDownList2.Items.Add("Drawing");
            }

            else if (cls == "10" || cls == "12")
            {
                DropDownList2.Items.Add("Select Subject");
                DropDownList2.Items.Add("English");
                DropDownList2.Items.Add("Hindi");
                DropDownList2.Items.Add("Art");
                DropDownList2.Items.Add("Social Science");
                DropDownList2.Items.Add("Economics");
                DropDownList2.Items.Add("Computer");
            }

            else if (cls == "13" || cls == "15")
            {
                DropDownList2.Items.Add("Select Subject");
                DropDownList2.Items.Add("English");
                DropDownList2.Items.Add("Hindi");
                DropDownList2.Items.Add("Math");
                DropDownList2.Items.Add("Physics");
                DropDownList2.Items.Add("Chemistry");
            }

            else if (cls == "14" || cls == "16")
            {
                DropDownList2.Items.Add("Select Subject");
                DropDownList2.Items.Add("English");
                DropDownList2.Items.Add("Hindi");
                DropDownList2.Items.Add("Biology");
                DropDownList2.Items.Add("Physics");
                DropDownList2.Items.Add("Chemistry");
            }
        }


    }
}