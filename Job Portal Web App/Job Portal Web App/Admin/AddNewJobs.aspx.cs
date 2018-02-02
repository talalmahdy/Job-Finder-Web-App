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
    public partial class AddNewJobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Session["admin"] == null)
            {
                Response.Redirect("Login.aspx?id=LoginRequired");
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString());
                con.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "insert into tblJobs (vJobTitle,tDescription,dLastDate,iNoOfPosts,vRequiredQualification,vRequiredExperience) values('" + JobTitle.Text + "', '" + Description.Text + "', '" + Deadline.Text + "', " + NoOfPosts.Text + ", '" + QualificationRequired.Text + "', '" + ExperienceRequired.Text + "')";
                com.ExecuteNonQuery();
                Response.Redirect("ViewJobs.aspx?id=added");
            }
            catch(Exception ex)
            {
                ErrorLabel.Text = "Error: "+ ex.Message;
            }
        }
    }
}