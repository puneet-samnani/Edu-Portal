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
    public partial class Result2 : System.Web.UI.Page
    {
       
        String name;
        SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
        protected void Page_Load(object sender, EventArgs e)
        {
             String vt = Session["LoginId"].ToString();
            Image1.ImageUrl = "Handler1.ashx?id=" + vt;
            int f=0;
            if (Page.IsPostBack)
            {
               
            }
            else
            {
                int clss = Convert.ToInt16(Session["class1"]);
                DropDownList1.SelectedIndex = Convert.ToInt16(clss);
                int lst =Convert.ToInt16(DropDownList1.SelectedIndex);
                if (clss == 9)
                {
                    String strem="Science";
                    f = clss;
                    Session["class"] =f.ToString();
                    Session["stream"] = strem;
                }
                else if (clss == 10)
                {
                    String strem = "Art";
                    f = clss - 1;
                    Session["class"] =f.ToString();
                    Session["stream"] = strem;
                }
                else if (clss == 11)
                {
                    String strem = "Science";
                    f = clss - 1;
                    Session["class"] =f.ToString();
                    Session["stream"] = strem;
                }
                else if (clss == 12)
                {
                    String strem = "Art";
                    f = clss - 2;
                    Session["class"] = f.ToString();
                    Session["stream"] = strem;
                }
                if (clss == 13)
                {
                    String strem = "Math";
                    f = clss - 2;
                    Session["class"] = f.ToString();
                    Session["stream"] = strem;
                }
                else if (clss == 14)
                {
                    String strem = "Biology";
                    f = clss - 3;
                    Session["class1"] = f.ToString();
                    Session["stream"] = strem;
                }
                else if (clss == 15)
                {
                    String strem = "Math";
                    f = clss - 3;
                    Session["class"] = f.ToString();
                    Session["stream"] = strem;
                }
                else if (clss == 16)
                {
                    String strem = "Biology";
                    f = clss - 4;
                    Session["class"] = f.ToString();
                    Session["stream"] = strem;
                }
                //Session["class1"] = clss;

                if (lst == 9)
                {
                    MultiView1.ActiveViewIndex = 0;
                  
                }
                else  if (lst == 10)
                {
                    MultiView1.ActiveViewIndex = 1;
                    
                }
                else if (lst == 11)
                {
                    MultiView1.ActiveViewIndex = 2;
                   
                }
                else if (lst == 12)
                {
                    MultiView1.ActiveViewIndex = 3;
                 
                }
                else if (lst == 13)
                {
                    MultiView1.ActiveViewIndex = 4;
             
                }
                else if (lst == 14)
                {
                    MultiView1.ActiveViewIndex = 5;
                    
                }
                else if (lst == 15)
                {
                    MultiView1.ActiveViewIndex = 6;
                  
                }
                else if (lst == 16)
                {
                    MultiView1.ActiveViewIndex = 7;
                    
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/StaffLogin.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int vl ;
            int g=0;
            vl=Convert.ToInt16(DropDownList1.SelectedIndex);
            if (vl == 1||vl==2||vl==3||vl==4||vl==5||vl==6||vl==7||vl==8)
            {
                Session["class"] = vl.ToString();
            }
            else  if (vl == 9)
            {
                String strem="Science";
                g = vl;
                Session["class"] = g.ToString();
                Session["stream"] = strem;
            }
            else if (vl == 10)
            {
                String strem = "Art";
                g = vl - 1;
                Session["class"] = g.ToString();
                Session["stream"] = strem;
            }
            else if (vl == 11)
            {
                String strem = "Science";
                g = vl - 1;
                Session["class"] = g.ToString();
                Session["stream"] = strem;
            }
            else if (vl == 12)
            {
                String strem = "Art";
                g = vl - 2;
                Session["class"] = g.ToString();
                Session["stream"] = strem;
            }
            else if (vl == 13)
            {
                String strem = "Math";
                g = vl - 2;
                Session["class"] = g.ToString();
                Session["stream"] = strem;
            }
            else if (vl == 14)
            {
                String strem = "Biology";
                g = vl - 3;
                Session["class"] = g.ToString();
                Session["stream"] = strem;
            }
            else if (vl == 15)
            {
                String strem = "Math";
                g = vl - 3;
                Session["class"] = g.ToString();
                Session["stream"] = strem;
            }
            else if (vl == 16)
            {
                String strem = "Biology";
                g = vl - 4;
                Session["class"] = g.ToString();
                Session["stream"] = strem;
            }

            String cls = DropDownList1.SelectedIndex.ToString();
            if (cls == "1" || cls == "2" || cls == "3" || cls == "4" || cls == "5" || cls == "6" || cls == "7" || cls == "8")
            {
                Response.Redirect("~/Result1.aspx");
            }

            if (cls == "9")
            {
                MultiView1.ActiveViewIndex = 0;
               
              
            }
            else if (cls == "10")
            {
                MultiView1.ActiveViewIndex = 1;
                
            }
            else if (cls == "11")
            {
                MultiView1.ActiveViewIndex = 2;
               
            }
            else if (cls == "12")
            {
                MultiView1.ActiveViewIndex = 3;
               
            }

            else if (cls == "13")
            {
                MultiView1.ActiveViewIndex = 4;
              
            }
            else if (cls == "14")
            {
                MultiView1.ActiveViewIndex = 5;
               
            }
            else if (cls == "15")
            {
                MultiView1.ActiveViewIndex = 6;
               
            }
            else if (cls == "16")
            {
                MultiView1.ActiveViewIndex = 7;
              
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String cs =DropDownList1.SelectedIndex.ToString();
            if ( cs== "9")
            {
            for (int x = 0; x < GridView1.Rows.Count; x++)
            {
                
                    name = GridView1.Rows[x].Cells[0].Text;
                   int eng = Convert.ToInt16(((TextBox)GridView1.Rows[x].Cells[1].FindControl("TextBox1")).Text);
                   int hindi = Convert.ToInt16(((TextBox)GridView1.Rows[x].Cells[2].FindControl("TextBox2")).Text);
                   int math = Convert.ToInt16(((TextBox)GridView1.Rows[x].Cells[3].FindControl("TextBox3")).Text);
                   int science = Convert.ToInt16(((TextBox)GridView1.Rows[x].Cells[4].FindControl("TextBox4")).Text);
                   int social_science = Convert.ToInt16(((TextBox)GridView1.Rows[x].Cells[5].FindControl("TextBox5")).Text);
                   int drawing = Convert.ToInt16(((TextBox)GridView1.Rows[x].Cells[6].FindControl("TextBox6")).Text);

                    insertatt(name, eng, hindi, math, science, social_science, drawing);
                   
                }
            }
                else if (cs=="10")
                {
                     for (int x = 0; x < GridView2.Rows.Count; x++)
            {
                    name = GridView2.Rows[x].Cells[0].Text;
                   int eng = Convert.ToInt16(((TextBox)GridView2.Rows[x].Cells[1].FindControl("TextBox7")).Text);
                    int hindi = Convert.ToInt16(((TextBox)GridView2.Rows[x].Cells[2].FindControl("TextBox8")).Text);
                   int art = Convert.ToInt16(((TextBox)GridView2.Rows[x].Cells[3].FindControl("TextBox9")).Text);
                   int social_science = Convert.ToInt16(((TextBox)GridView2.Rows[x].Cells[4].FindControl("TextBox10")).Text);
                 int   computer = Convert.ToInt16(((TextBox)GridView2.Rows[x].Cells[5].FindControl("TextBox11")).Text);
                  int  economics = Convert.ToInt16(((TextBox)GridView2.Rows[x].Cells[6].FindControl("TextBox12")).Text);
                   insertatt2(name, eng, hindi, art, social_science, computer, economics);
                }
                }

                else if (cs=="11")
                {
                     for (int x = 0; x < GridView3.Rows.Count; x++)
            {
                    name = GridView3.Rows[x].Cells[0].Text;
                   int eng = Convert.ToInt16(((TextBox)GridView3.Rows[x].Cells[1].FindControl("TextBox13")).Text);
                   int hindi = Convert.ToInt16(((TextBox)GridView3.Rows[x].Cells[2].FindControl("TextBox14")).Text);
                   int math = Convert.ToInt16(((TextBox)GridView3.Rows[x].Cells[3].FindControl("TextBox15")).Text);
                  int  science = Convert.ToInt16(((TextBox)GridView3.Rows[x].Cells[4].FindControl("TextBox16")).Text);
                   int social_science = Convert.ToInt16(((TextBox)GridView3.Rows[x].Cells[5].FindControl("TextBox17")).Text);
                   int drawing = Convert.ToInt16(((TextBox)GridView3.Rows[x].Cells[6].FindControl("TextBox18")).Text);

                    insertatt1(name, eng, hindi, math, science, social_science, drawing);
                }
                }

                else if (cs=="12")
                {
                     for (int x = 0; x < GridView4.Rows.Count; x++)
            {

                    name = GridView4.Rows[x].Cells[0].Text;
                   int eng = Convert.ToInt16(((TextBox)GridView4.Rows[x].Cells[1].FindControl("TextBox19")).Text);
                   int hindi = Convert.ToInt16(((TextBox)GridView4.Rows[x].Cells[2].FindControl("TextBox20")).Text);
                   int art = Convert.ToInt16(((TextBox)GridView4.Rows[x].Cells[3].FindControl("TextBox21")).Text);
                   int social_science = Convert.ToInt16(((TextBox)GridView4.Rows[x].Cells[4].FindControl("TextBox22")).Text);
                   int computer = Convert.ToInt16(((TextBox)GridView4.Rows[x].Cells[5].FindControl("TextBox23")).Text);
                   int economics = Convert.ToInt16(((TextBox)GridView4.Rows[x].Cells[6].FindControl("TextBox24")).Text);
                    insertatt3(name, eng, hindi, art, social_science, computer, economics);
                }
                }

                else if (cs=="13")
                {
                     for (int x = 0; x < GridView5.Rows.Count; x++)
            {
                    name = GridView5.Rows[x].Cells[0].Text;
                  int  eng = Convert.ToInt16(((TextBox)GridView5.Rows[x].Cells[1].FindControl("TextBox25")).Text);
                  int  hindi = Convert.ToInt16(((TextBox)GridView5.Rows[x].Cells[2].FindControl("TextBox26")).Text);
                  int  math = Convert.ToInt16(((TextBox)GridView5.Rows[x].Cells[3].FindControl("TextBox27")).Text);
                  int  physics = Convert.ToInt16(((TextBox)GridView5.Rows[x].Cells[4].FindControl("TextBox28")).Text);
                  int  chemistry = Convert.ToInt16(((TextBox)GridView5.Rows[x].Cells[5].FindControl("TextBox29")).Text);
                    insertatt4(name, eng, hindi, math, physics, chemistry);
                }
                }
                else if (cs=="14")
                {

                    for (int x = 0; x < GridView7.Rows.Count; x++)
                    {
                        name = GridView7.Rows[x].Cells[0].Text;
                      int  eng = Convert.ToInt16(((TextBox)GridView7.Rows[x].Cells[1].FindControl("TextBox35")).Text);
                      int  hindi = Convert.ToInt16(((TextBox)GridView7.Rows[x].Cells[2].FindControl("TextBox36")).Text);
                      int  physics = Convert.ToInt16(((TextBox)GridView7.Rows[x].Cells[3].FindControl("TextBox37")).Text);
                      int  chemistry = Convert.ToInt16(((TextBox)GridView7.Rows[x].Cells[4].FindControl("TextBox38")).Text);
                      int  biology = Convert.ToInt16(((TextBox)GridView7.Rows[x].Cells[5].FindControl("TextBox39")).Text);
                        insertatt6(name, eng, hindi, physics, chemistry, biology);
                    }
                }
                else if (cs=="15")
                {
                  for (int x = 0; x < GridView7.Rows.Count; x++)
            {   
                    name = GridView6.Rows[x].Cells[0].Text;
                   int eng = Convert.ToInt16(((TextBox)GridView6.Rows[x].Cells[1].FindControl("TextBox30")).Text);
                   int hindi = Convert.ToInt16(((TextBox)GridView6.Rows[x].Cells[2].FindControl("TextBox31")).Text);
                  int  math = Convert.ToInt16(((TextBox)GridView6.Rows[x].Cells[3].FindControl("TextBox32")).Text);
                  int  physics = Convert.ToInt16(((TextBox)GridView6.Rows[x].Cells[4].FindControl("TextBox33")).Text);
                   int chemistry = Convert.ToInt16(((TextBox)GridView6.Rows[x].Cells[5].FindControl("TextBox34")).Text);
                    insertatt5(name, eng, hindi, math, physics, chemistry);
                }
                }
                else if (cs=="16")
                {
                    for (int x = 0; x < GridView8.Rows.Count; x++)
                    {
                      name = GridView8.Rows[x].Cells[0].Text;
                   int eng = Convert.ToInt16(((TextBox)GridView8.Rows[x].Cells[1].FindControl("TextBox40")).Text);
                  int  hindi = Convert.ToInt16(((TextBox)GridView8.Rows[x].Cells[2].FindControl("TextBox41")).Text);
                  int  physics = Convert.ToInt16(((TextBox)GridView8.Rows[x].Cells[4].FindControl("TextBox42")).Text);
                   int chemistry = Convert.ToInt16(((TextBox)GridView8.Rows[x].Cells[5].FindControl("TextBox43")).Text);
                  int  biology = Convert.ToInt16(((TextBox)GridView8.Rows[x].Cells[3].FindControl("TextBox44")).Text);
                  insertatt7(name, eng, hindi, physics, chemistry, biology);
                }
            }
        }

        private void insertatt(String nm, int dt, int vSid, int clas, int sub, int fid, int attn)
        {
            try
            {
                vconn.Open();
                String sd = Session["class"].ToString();
                String query = "insert into Result(name,std,English, Hindi, Math, Science, [Social Science], Drawing) values(@nm,@std,@dt,@vSid,@clas,@sub,@fid,@attn)";
                SqlCommand vcomm = new SqlCommand(query, vconn);
                vcomm.Parameters.AddWithValue("@nm", nm);
                vcomm.Parameters.AddWithValue("@std", sd);
                vcomm.Parameters.AddWithValue("@dt", dt);
                vcomm.Parameters.AddWithValue("@vSid", vSid);
                vcomm.Parameters.AddWithValue("@clas", clas);
                vcomm.Parameters.AddWithValue("@sub", sub);
                vcomm.Parameters.AddWithValue("@fid", fid);
                vcomm.Parameters.AddWithValue("@attn", attn);
                vcomm.ExecuteNonQuery();
                vconn.Close();
                Label1.Text = "Marks Saved";
            }
            catch (Exception)
            {
                Label1.Text = "Marks Already Saved";
            }
        }



        private void insertatt1(String nm, int s1, int s2, int s3, int s4, int s5, int s6)
        {
            try
            {
                vconn.Open();
                String sd = Session["class"].ToString();
                String query = "insert into Result(name,std,English, Hindi, Math, Science, [Social Science], Drawing) values(@nm,@std,@s1,@s2,@s3,@s4,@s5,@s6)";
                SqlCommand vcomm = new SqlCommand(query, vconn);
                vcomm.Parameters.AddWithValue("@nm", nm);
                vcomm.Parameters.AddWithValue("@std", sd);
                vcomm.Parameters.AddWithValue("@s1", s1);
                vcomm.Parameters.AddWithValue("@s2", s2);
                vcomm.Parameters.AddWithValue("@s3", s3);
                vcomm.Parameters.AddWithValue("@s4", s4);
                vcomm.Parameters.AddWithValue("@s5", s5);
                vcomm.Parameters.AddWithValue("@s6", s6);
                vcomm.ExecuteNonQuery();
                vconn.Close();
                Label1.Text = "Marks Saved";
            }
            catch (Exception)
            {
                Label1.Text = "Marks Already Saved";
            }
        }


        private void insertatt2(String nm, int s1, int s2, int s3, int s4, int s5, int s6)
        {
            try
            {
                vconn.Open();
                String sd = Session["class"].ToString();
                String query = "insert into Result(name, std,English, Hindi, Art, [Social Science], Computer, Economics) values(@nm,@std,@s1,@s2,@s3,@s4,@s5,@s6)";
                SqlCommand vcomm = new SqlCommand(query, vconn);
                vcomm.Parameters.AddWithValue("@nm", nm);
                vcomm.Parameters.AddWithValue("@std", sd);
                vcomm.Parameters.AddWithValue("@s1", s1);
                vcomm.Parameters.AddWithValue("@s2", s2);
                vcomm.Parameters.AddWithValue("@s3", s3);
                vcomm.Parameters.AddWithValue("@s4", s4);
                vcomm.Parameters.AddWithValue("@s5", s5);
                vcomm.Parameters.AddWithValue("@s6", s6);
                vcomm.ExecuteNonQuery();
                vconn.Close();
                Label1.Text = "Marks Saved";
            }
            catch (Exception)
            {
                Label1.Text = "Marks Already Saved";
            }
        }



        private void insertatt3(String nm, int s1, int s2, int s3, int s4, int s5, int s6)
               {
                   try
                   {
                       vconn.Open();
                       String sd = Session["class"].ToString();
                       String query = "insert into Result(name, std,English, Hindi, Art, [Social Science], Computer, Economics) values(@nm,@std,@s1,@s2,@s3,@s4,@s5,@s6)";
                       SqlCommand vcomm = new SqlCommand(query, vconn);
                       vcomm.Parameters.AddWithValue("@nm", nm);
                       vcomm.Parameters.AddWithValue("@std", sd);
                       vcomm.Parameters.AddWithValue("@s1", s1);
                       vcomm.Parameters.AddWithValue("@s2", s2);
                       vcomm.Parameters.AddWithValue("@s3", s3);
                       vcomm.Parameters.AddWithValue("@s4", s4);
                       vcomm.Parameters.AddWithValue("@s5", s5);
                       vcomm.Parameters.AddWithValue("@s6", s6);
                       vcomm.ExecuteNonQuery();
                       vconn.Close();
                       Label1.Text = "Marks Saved";
                   }
                   catch (Exception)
                   {
                       Label1.Text = "Marks Already Saved";
                   }
               }



         private void insertatt4(String nm, int s1, int s2, int s3, int s4, int s5)
        {
            try
            {
                vconn.Open();
                String sd = Session["class"].ToString();
                String query = "insert into Result(name,std, English, Hindi, Math, Physics, Chemistry) values(@nm,@std,@s1,@s2,@s3,@s4,@s5)";
                SqlCommand vcomm = new SqlCommand(query, vconn);
                vcomm.Parameters.AddWithValue("@nm", nm);
                vcomm.Parameters.AddWithValue("@std", sd);
                vcomm.Parameters.AddWithValue("@s1", s1);
                vcomm.Parameters.AddWithValue("@s2", s2);
                vcomm.Parameters.AddWithValue("@s3", s3);
                vcomm.Parameters.AddWithValue("@s4", s4);
                vcomm.Parameters.AddWithValue("@s5", s5);
               
                vcomm.ExecuteNonQuery();
                vconn.Close();
                Label1.Text = "Marks Saved";
            }
           catch (Exception ex)
            {
                Label1.Text = ex.ToString();
                Label1.Text += "Marks Already Saved";
            }
        }


         private void insertatt5(String nm, int s1, int s2, int s3, int s4, int s5)
         {
             try
             {
                 vconn.Open();
                 String sd = Session["class"].ToString();
                 String query = "insert into Result(name,std, English, Hindi, Math, Physics, Chemistry) values(@nm,@std,@s1,@s2,@s3,@s4,@s5)";
                 SqlCommand vcomm = new SqlCommand(query, vconn);
                 vcomm.Parameters.AddWithValue("@nm", nm);
                 vcomm.Parameters.AddWithValue("@std", sd);
                 vcomm.Parameters.AddWithValue("@s1", s1);
                 vcomm.Parameters.AddWithValue("@s2", s2);
                 vcomm.Parameters.AddWithValue("@s3", s3);
                 vcomm.Parameters.AddWithValue("@s4", s4);
                 vcomm.Parameters.AddWithValue("@s5", s5);
                 vcomm.ExecuteNonQuery();
                 vconn.Close();
                 Label1.Text = "Marks Saved";
             }
             catch (Exception ex)
             {
                Label1.Text = ex.ToString();
                Label1.Text += "Marks Already Saved";
             }
         }

         private void insertatt6(String nm, int s1, int s2, int s3, int s4, int s5)
        {
            try
            {
                vconn.Open();
                String sd = Session["class"].ToString();
                String query = "insert into Result(name,std, English, Hindi, Physics, Chemistry, Biology) values(@nm,@std,@s1,@s2,@s3,@s4,@s5)";
                SqlCommand vcomm = new SqlCommand(query, vconn);
                vcomm.Parameters.AddWithValue("@nm", nm);
                vcomm.Parameters.AddWithValue("@std", sd);
                vcomm.Parameters.AddWithValue("@s1", s1);
                vcomm.Parameters.AddWithValue("@s2", s2);
                vcomm.Parameters.AddWithValue("@s3", s3);
                vcomm.Parameters.AddWithValue("@s4", s4);
                vcomm.Parameters.AddWithValue("@s5", s5);
                vcomm.ExecuteNonQuery();
                vconn.Close();
                Label1.Text = "Marks Saved";
            }
           catch (Exception)
            {
                
                Label1.Text += "Marks Already Saved";
            }
        }

         private void insertatt7(String nm, int s1, int s2, int s3, int s4, int s5)
        {
             try
             {
            vconn.Open();
            String sd = Session["class"].ToString();
            String query = "insert into Result(name,std, English, Hindi, Physics, Chemistry, Biology) values(@nm,@std,@s1,@s2,@s3,@s4,@s5)";
            SqlCommand vcomm = new SqlCommand(query, vconn);
            vcomm.Parameters.AddWithValue("@nm", nm);
            vcomm.Parameters.AddWithValue("@std", sd);
            vcomm.Parameters.AddWithValue("@s1", s1);
            vcomm.Parameters.AddWithValue("@s2", s2);
            vcomm.Parameters.AddWithValue("@s3", s3);
            vcomm.Parameters.AddWithValue("@s4", s4);
            vcomm.Parameters.AddWithValue("@s5", s5);
            vcomm.ExecuteNonQuery();
            vconn.Close();
            Label1.Text = "Marks Saved";
             }
             catch (Exception)
             { 
                Label1.Text = "Marks Already Saved";
            }
        }
    }
}