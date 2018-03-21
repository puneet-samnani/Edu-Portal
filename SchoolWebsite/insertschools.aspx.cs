using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SchoolWebsite
{
    public partial class insertschools : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String vt = Session["LoginId"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label8.Text = "";

            try
            {

                if (FileUpload1.HasFile)
                {
                    String vfilename = FileUpload1.PostedFile.FileName;
                    String vcompletedfilename = Server.MapPath("~/Att/" + vfilename);
                    FileUpload1.SaveAs(vcompletedfilename);
                    FileStream fs = new FileStream(Server.MapPath("~/Att/" + vfilename), FileMode.Open);
                    byte[] img = new byte[fs.Length];
                    fs.Read(img, 0, (int)fs.Length);
                    fs.Close();

                    SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
                    // SqlConnection vconn = new SqlConnection(ConfigurationManager.ConnectionStrings["SchoolConnectionString4"].ConnectionString.ToString());
                    vconn.Open();
                    String schid = TextBox1.Text;
                    String schname = TextBox2.Text;
                    String schadminid = TextBox3.Text;
                    String schmail = TextBox4.Text;
                    String schcontact = TextBox6.Text;
                    String schaffto = TextBox5.Text;

                          String query = "insert into GovtSchools(school_id,school_name,school_admin_id,school_email,affiliated_to,school_contact,logo_upload) values('" + schid + "','" + schname + "','" + schadminid + "','" + schmail + "','" + schaffto + "','" + schcontact + "',@image" +")";
                    
                    SqlParameter vparameter = new SqlParameter("@image", SqlDbType.Image, img.Length);
                    vparameter.Value = img;
                    SqlCommand vcomm = new SqlCommand(query, vconn);
                    vcomm.Parameters.Add(vparameter);
                    vcomm.ExecuteNonQuery();
                    vconn.Close();
                    File.Delete(Server.MapPath("~/Att/" + vfilename));
                }

                Label8.Text = "School Record Saved Successfully";
            }
            catch (Exception ex)
            {
                Label8.Text = ex.ToString();
                 Label8.Text +="\nSchool Regstration Id already Present";
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