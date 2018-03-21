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
    public partial class InputResult : System.Web.UI.Page
    {
     
        String name;
        SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
        protected void Page_Load(object sender, EventArgs e)
        {
            String vt = Session["LoginId"].ToString();
            Image1.ImageUrl = "Handler1.ashx?id=" + vt;
            int f = 0;
            if (Page.IsPostBack)
            {
                Button4.Visible = true;
            }
            else
            {
                
                int clss = Convert.ToInt16(Session["class1"]);
                DropDownList1.SelectedIndex = Convert.ToInt16(clss);
                int lst = Convert.ToInt16(DropDownList1.SelectedIndex);
                if (clss == 1)
                {
                   
                    Session["class1"] = clss.ToString();
                }
                else if (clss == 2)
                {
                    
                    Session["class1"] = clss.ToString();
                }
                else if (clss == 3)
                {
                    
                    Session["class1"] = clss.ToString();
                }
                else if (clss == 4)
                {
                   
                    Session["class1"] = clss.ToString();
                }
                else if (clss == 5)
                {
                 
                    Session["class1"] = clss.ToString();
                }
                else if (clss == 6)
                {
                  
                    Session["class1"] = clss.ToString();
                }
                else if (clss == 7)
                {
                    
                    Session["class1"] = clss.ToString();
                }
                else if (clss == 8)
                {
                    
                    Session["class1"] = clss.ToString();
                }


                if (lst == 1 || lst == 2 || lst == 3 || lst == 4 || lst== 5 || lst == 6 || lst == 7 || lst == 8)
                {
                    GridView1.Visible = true;
                    
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Button4.Visible = false;
            Response.Redirect("~/StaffLogin.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["class1"] = Convert.ToInt16(DropDownList1.SelectedIndex);
            String cls = DropDownList1.SelectedIndex.ToString();
            if (cls == "1" || cls == "2" || cls == "3" || cls == "4" || cls == "5" || cls == "6" || cls == "7" || cls == "8")
            {
                GridView1.Visible = true;
                
            }
            else if (cls == "9" || cls == "10" || cls == "11" || cls == "12"||cls=="13"||cls=="14"||cls=="15"||cls=="16")
            {
                GridView1.Visible = false;
                Response.Redirect("~/Result2.aspx");

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            for (int x = 0; x < GridView1.Rows.Count; x++)
            {
                name = GridView1.Rows[x].Cells[0].Text;
             int eng = Convert.ToInt16(((TextBox)GridView1.Rows[x].Cells[1].FindControl("TextBox1")).Text);
            int hindi = Convert.ToInt16(((TextBox)GridView1.Rows[x].Cells[2].FindControl("TextBox2")).Text);
            int math = Convert.ToInt16(((TextBox)GridView1.Rows[x].Cells[3].FindControl("TextBox3")).Text);
           int  science = Convert.ToInt16(((TextBox)GridView1.Rows[x].Cells[4].FindControl("TextBox4")).Text);
           int  computer = Convert.ToInt16(((TextBox)GridView1.Rows[x].Cells[5].FindControl("TextBox5")).Text);
            int drawing = Convert.ToInt16(((TextBox)GridView1.Rows[x].Cells[6].FindControl("TextBox6")).Text);
              
                insertatt(name,eng, hindi, math, science, computer, drawing);
            }
        }

       private void insertatt(String nm,int s1, int s2, int s3, int s4, int s5, int s6)
        {
            try
            {
                vconn.Open();
                String sd = Session["class1"].ToString();
                String query = "insert into Result(name,std,English,Hindi,Math,Science,Computer,Drawing) values(@nm,@std,@s1,@s2,@s3,@s4,@s5,@s6)";
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
       
    }
}