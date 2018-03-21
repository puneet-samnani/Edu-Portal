using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SchoolWebsite
{
    public partial class ViewAnnounce : System.Web.UI.Page
    {
        
        StreamReader reader;
        String vt;
        FileStream fs;
        SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
        String vt1, vt2, vt3, vt4, vt5;
        protected void Page_Load(object sender, EventArgs e)
        {
            vt= Session["LoginId"].ToString();
            Image1.ImageUrl = "Handler1.ashx?id=" + vt;
            if (!IsPostBack)
            {
                TabContainer1_ActiveTabChanged(TabContainer1, null);
            }
           
        }
        protected void TabContainer1_ActiveTabChanged(object sender, EventArgs e)
        {
            if (File.Exists(@"E:\CAPSTONE PROJECT\SchoolWebsite\SchoolWebsite\d.txt"))
            {
                File.Delete(@"E:\CAPSTONE PROJECT\SchoolWebsite\SchoolWebsite\d.txt");
            }

            if (TabContainer1.ActiveTabIndex == 0)
            {

                vconn.Open();
                String typp = "Faculty";
                String query = "select * from Announcement where Mebtyp='"+typp+"'";
                SqlCommand vcomm = new SqlCommand(query, vconn);
                SqlDataReader vdr = vcomm.ExecuteReader();
                while (vdr.Read())
                {

                    vt1 = vdr[0].ToString();
                    vt2 = vdr[1].ToString();
                    vt3 = vdr[2].ToString();
                    vt4 = vdr[3].ToString();
                    vt5 = vdr[4].ToString();
                    String whl = vt1 + " (" + vt3 +")"+ vt2;
                   
                        
                        if (!File.Exists(@"E:\CAPSTONE PROJECT\SchoolWebsite\SchoolWebsite\d.txt"))
                        {
                            using (fs = File.Create(@"E:\CAPSTONE PROJECT\SchoolWebsite\SchoolWebsite\d.txt"))
                            {

                            }
                        }

                        using (StreamWriter _testData = new StreamWriter(Server.MapPath("~/d.txt"), true))
                        {
                            _testData.WriteLine(whl);
                        }
                        fs = new FileStream(Server.MapPath("~/d.txt"), FileMode.Open);

                        Table1.Rows.Clear();
                        reader = new StreamReader(fs);
                        String data;
                        while ((data = reader.ReadLine()) != null)
                        {

                            TableCell c1 = new TableCell();
                            c1.Text = data;
                            TableRow t1 = new TableRow();
                            t1.Controls.Add(c1);
                            Table1.Controls.Add(t1);
                        }
                        reader.Close();
                        fs.Close();
                    }
                   
                    vconn.Close();


                }
            }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/StaffLogin.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            vconn.Open();
            String typ=DropDownList1.SelectedValue.ToString();
            String query = "insert into enquiry values('" + typ + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + vt+ "')";
            SqlCommand vcomm = new SqlCommand(query, vconn);
            vcomm.ExecuteNonQuery();
            vconn.Close();
            Label1.Text = "Query is Submitted";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}