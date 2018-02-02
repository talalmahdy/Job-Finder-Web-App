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
    public partial class EditJobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Session["admin"] == null)
            {
                Response.Redirect("Login.aspx?id=LoginRequired");
            }
            if (Request.QueryString["edit"] != null)
            {
                //this code will execute only if the page isnt posted back, when we click update, this code is run again 
                //and old data taken again from server. After clicking update, this code will run since the page is posted back.
                if (!IsPostBack)
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString());
                    con.Open();
                    SqlCommand com = new SqlCommand();
                    com.Connection = con;
                    com.CommandText = "select * from tblJobs where iJid =" + Request.QueryString["edit"].ToString();
                    SqlDataReader dr = com.ExecuteReader();
                    if (dr.Read())
                    {
                        JobTitle.Text = dr["vJobTitle"].ToString();
                        Description.Text = dr["tDescription"].ToString();
                        Deadline.Text = Convert.ToDateTime( dr["dLastDate"]).ToString("dd/MMM/yyyy");
                        NoOfPosts.Text = dr["iNoOfPosts"].ToString();
                        QualificationRequired.Text = dr["vRequiredQualification"].ToString();
                        ExperienceRequired.Text = dr["vRequiredExperience"].ToString();
                    }
                    con.Close();
                }
                    
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["edit"] != null)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString());
                con.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "update tblJobs set vJobTitle='" + JobTitle.Text + "',tDescription='" + Description.Text + "',dLastDate='" + Deadline.Text + "',iNoOfPosts=" + NoOfPosts.Text + ",vRequiredQualification='" + QualificationRequired.Text + "',vRequiredExperience='" + ExperienceRequired.Text + "' where iJid = "+Request.QueryString["edit"].ToString()+"";
                com.ExecuteNonQuery();
                con.Close();
                Response.Redirect("ViewJobs.aspx?id=updated");
            }
        }
    }
}