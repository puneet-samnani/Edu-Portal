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
    public partial class Announcement : System.Web.UI.Page
    {
    
        SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
        DateTime dateAndTime = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
             String vt = Session["LoginId"].ToString();
            Image1.ImageUrl = "Handler1.ashx?id=" + vt;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/StaffLogin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String datee = dateAndTime.ToString("dd/MM/yyyy");
            String typ = "Notice";
            String mtyp = DropDownList2.SelectedValue.ToString();
            vconn.Open();
            String query = "insert into Announcement values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + datee + "','" + typ + "','" + mtyp + "')";
            SqlCommand vcomm = new SqlCommand(query, vconn);
            vcomm.ExecuteNonQuery();
            vconn.Close();
            Label1.Text = "Announcement is Done";
        }
    }
}