using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;

namespace SchoolWebsite
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            String vname = context.Request.QueryString["id"];
            SqlConnection vconn = new SqlConnection(@"Data Source=RISKY-VAIO\SQL14;Initial Catalog=School;Persist Security Info=True;User ID=sa;Password=1803");
            vconn.Open();
            String vquery = "select img from Student where sid=@puneet";
            SqlCommand vcomm = new SqlCommand(vquery, vconn);
            vcomm.Parameters.AddWithValue("@puneet", vname);
            SqlDataReader myreader = vcomm.ExecuteReader();
            while (myreader.Read())
            {
                context.Response.ContentType = "image/jpg";
                context.Response.BinaryWrite((byte[])myreader["img"]);
            }
            myreader.Close();
            vconn.Close();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}