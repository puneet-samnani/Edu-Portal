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

    public partial class viewallrresult : System.Web.UI.Page
    {
        SqlConnection vconn;
        String vt1, query1, vt2, vt11, vt22;
        protected void Page_Load(object sender, EventArgs e)
        {
            String vt = Session["LoginId"].ToString();
            Image1.ImageUrl = "Handler1.ashx?id=" + vt;
            Label1.Text = "";
            GridView1.DataSource = null;
            GridView1.DataBind();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
               
                String cls = DropDownList1.SelectedIndex.ToString();
                vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
                vconn.Open();
                String query = "select std,optional from Student where std='" + cls + "'";
                SqlCommand vcomm = new SqlCommand(query, vconn);
                SqlDataReader vdr = vcomm.ExecuteReader();
                if (vdr.Read())
                {
                    vt1 = vdr[0].ToString();
                    vt2 = vdr[1].ToString();
                }
                vconn.Close();

                if (vconn.State == ConnectionState.Closed)
                {
                    vconn.Open();
                    if (vt1 == "1" || vt1 == "2" || vt1 == "3" || vt1 == "4" || vt1 == "5" || vt1 == "6" || vt1 == "7" || vt1 == "8")
                    {
                        query1 = "select name,English,Hindi,Math,Science,Computer,Drawing from Result where std='" + vt1 + "'";
                    }
                    else if (vt1 == "9" && vt2 == "Science" || vt1 == "10" && vt2 == "Science")
                    {
                        query1 = "select name,English,Hindi,Math,Science,[Social Science],Drawing from Result where std='" + vt1 + "'";
                    }
                    else if (vt1 == "9" && vt2 == "Art" || vt1 == "10" && vt2 == "Art")
                    {
                        query1 = "select name,English,Hindi,Art,[Social Science],Economics,Computer from Result where std='" + vt1 + "'";
                    }
                    else if (vt1 == "11" && vt2 == "Math" || vt1 == "12" && vt2 == "Math")
                    {
                        query1 = "select name,English,Hindi,Math,Physics,Chemistry from Result where std='" + vt1 + "'";
                    }
                    else if (vt1 == "11" && vt2 == "Biology" || vt1 == "12" && vt2 == "Biology")
                    {
                        query1 = "select name,English,Hindi,Biology,Physics,Chemistry from Result where std='" + vt1 + "'";
                    }
                    SqlCommand vcomm1 = new SqlCommand(query1, vconn);
                    SqlDataAdapter da = new SqlDataAdapter(vcomm1);

                    DataSet ds = new DataSet();
                    da.Fill(ds, "Result");
                    DataTable vdt = ds.Tables[0];
                    string getValue = vcomm1.ExecuteScalar().ToString();
                    if (getValue == null)
                    {
                        Label1.Text = "No Record To Display";
                    }
                    vconn.Close();

                    GridView1.DataSource = null;
                    GridView1.DataSourceID = null;
                    GridView1.DataSource = vdt;
                    GridView1.DataBind();
                }
            }
            catch (Exception)
            {
                Label1.Text = "No Record To Display";
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
            try
            {
                String cls1 = DropDownList2.SelectedIndex.ToString();
                vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
                vconn.Open();
                String query = "select std,optional from Student where std='" + cls1 + "'";
                SqlCommand vcomm = new SqlCommand(query, vconn);
                SqlDataReader vdr = vcomm.ExecuteReader();
                if (vdr.Read())
                {
                    vt11 = vdr[0].ToString();
                    vt22 = vdr[1].ToString();
                }
                vconn.Close();

                if (vconn.State == ConnectionState.Closed)
                {
                    vconn.Open();
                    if (vt11 == "1" || vt11 == "2" || vt11 == "3" || vt11 == "4" || vt11 == "5" || vt11 == "6" || vt11 == "7" || vt11 == "8")
                    {
                        query1 = "select name,English,Hindi,Math,Science,Computer,Drawing from Result where name='" + TextBox1.Text + "'";
                    }
                    else if (vt11 == "9" && vt22 == "Science" || vt11 == "10" && vt22 == "Science")
                    {
                        query1 = "select name,English,Hindi,Math,Science,[Social Science],Drawing from Result where name='" + TextBox1.Text + "'";
                    }
                    else if (vt11 == "9" && vt22 == "Art" || vt11 == "10" && vt22 == "Art")
                    {
                        query1 = "select name,English,Hindi,Art,[Social Science],Economics,Computer from Result where name='" + TextBox1.Text + "'";
                    }
                    else if (vt11 == "11" && vt22 == "Math" || vt11 == "12" && vt22 == "Math")
                    {
                        query1 = "select name,English,Hindi,Math,Physics,Chemistry from Result where name='" + TextBox1.Text + "'";
                    }
                    else if (vt11 == "11" && vt22 == "Biology" || vt11 == "12" && vt22 == "Biology")
                    {
                        query1 = "select name,English,Hindi,Biology,Physics,Chemistry from Result where name='" + TextBox1.Text + "'";
                    }
                    SqlCommand vcomm1 = new SqlCommand(query1, vconn);
                    SqlDataAdapter da = new SqlDataAdapter(vcomm1);

                    DataSet ds = new DataSet();
                    da.Fill(ds, "Result");
                    DataTable vdt = ds.Tables[0];
                    string getValue = vcomm1.ExecuteScalar().ToString();
                    if (getValue == null)
                    {
                        Label1.Text = "No Record To Display";
                    }
                    vconn.Close();

                    GridView1.DataSource = null;
                    GridView1.DataSourceID = null;
                    GridView1.DataSource = vdt;
                    GridView1.DataBind();
                }

            }
            catch (Exception)
            {
                Label1.Text = "No Record To Display";
            }
        }
    }
}