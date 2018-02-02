using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

namespace Job_Portal_Web_App.Admin
{
    public partial class ViewResumes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Session["admin"] == null)
            {
                Response.Redirect("Login.aspx?id=LoginRequired");
            }
            if (Request.QueryString["del"] != null)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString());
                con.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "delete from tblResumes where iRid="+Request.QueryString["del"].ToString()+"";
                com.ExecuteNonQuery();
                Response.Redirect("ViewResumes.aspx?id=deleted");
            }
            if (Request.QueryString["id"] != null)
            {
                if (Request.QueryString["id"].ToString() == "deleted")
                {
                    ErrorLabel.Text = "Resume Deleted Successfully.";
                }
            }
        }
    }
}