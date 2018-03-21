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
    public partial class ViewAttendance : System.Web.UI.Page
    {
        String vt,vt1;
        String datee;
       DateTime dtt = DateTime.Now;
          
        protected void Page_Load(object sender, EventArgs e)
        {
            vt = Session["LoginId"].ToString();
            vt1 = Session["Name"].ToString();
            Image1.ImageUrl = "Handler1.ashx?id=" + vt;
            DateTime dateAndTime = DateTime.Now;
            datee = dateAndTime.ToString("dd/MM/yyyy");
            TextBox1.Text = datee;
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            getattndnc(datee);
        }

        private void getattndnc(String dat)
        {
            SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
            vconn.Open();
            String query = "Select Date,sub,fname,attendance from Attendance where sid='" + vt + "' and Date='" + dat+"'";
            SqlCommand vcomm = new SqlCommand(query, vconn);
            SqlDataAdapter da = new SqlDataAdapter(vcomm);
            DataSet ds = new DataSet();
            da.Fill(ds, "Attendance");
            DataTable vdt = ds.Tables[0];
            vconn.Close();
            GridView1.DataSource = null;
            GridView1.DataSourceID = null;
            GridView1.DataSource = vdt;
            GridView1.DataBind();
            TextBox1.Text = datee;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/StaffLogin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            System.DateTime myDate = new System.DateTime();
            myDate = Calendar1.SelectedDate;
           String date = myDate.ToString("dd/MM/yyyy");
           GridView1.DataSource = null;
           GridView1.DataBind();
            getattndnc(date);
            Calendar1.Visible = false;
            TextBox1.Text = date;

        }

    }
}