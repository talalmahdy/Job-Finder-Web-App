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
using System.IO;

namespace Job_Portal_Web_App
{
    public partial class ResumeBuilder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.Session["user"] == null)
            {
                Response.Redirect("Login.aspx?id=LoginRequired");
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString());
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "select * from tblUsers where vUsername = '" + Page.Session["user"].ToString() + "'";
            SqlDataReader dr;
            dr = com.ExecuteReader();
            if(dr.Read())
            {
                Name.Text = dr["vName"].ToString();
                Surname.Text = dr["vSurname"].ToString();
                Address.Text = dr["vAddress"].ToString();
                Phone.Text = dr["vPhoneNumber"].ToString();
                Email.Text = dr["vEmail"].ToString();                
                DateOfBirth.Text = Convert.ToDateTime(dr["dDateOfBirth"]).ToString("dd/MMM/yyyy");
            }            
            con.Close();            
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(FileErrorLabel.Text)))
            {
                FileErrorLabel.Text = "";
            }
            string sFileName = UploadResumeFile();
            if (!(FileErrorLabel.Text == "You can only upload files of type .doc/.docx/.pdf/.txt"))
            {                
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString());
                con.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "insert into tblResumes (vName,vAddress,vPhone,vEmail,vHighSchool,vGraduation,vPostGraduation,vResumeFile,vJobID)  values('" + Name.Text + "','" + Address.Text + "','" + Phone.Text + "','" + Email.Text + "','" + HighSchool.Text + "','" + Graduation.Text + "','" + PostGraduation.Text + "','" + sFileName + "','" + Request.QueryString["id"].ToString() + "')";
                com.ExecuteNonQuery();
                Response.Redirect("ResumeUploadSuccessful.aspx");
            }

        }
        public string UploadResumeFile()
        {            
            if(ResumeFileUpload.HasFile) //checks if a file is selected in the ResumeFileUpload
            {
                //ResumeFileUpload.SaveAs(Server.MapPath("Resumes/" + Page.Session["user"].ToString() + ResumeFileUpload.FileName));
                Regex fileExtension = new Regex(@"^.+\.(doc|docx|pdf|txt)");
                Match MatchResult = fileExtension.Match(ResumeFileUpload.FileName); //.Match method will match resume filename with 
                //file extension. If the extension matches the ones above, MatchResult is true (success). 
                if (MatchResult.Success)
                {
                    ResumeFileUpload.SaveAs(Server.MapPath("Resumes/" + Page.Session["user"].ToString() + ResumeFileUpload.FileName));
                }
                else
                {
                    FileErrorLabel.Text = "You can only upload files of type .doc/.docx/.pdf/.txt";                    
                }
            }
            return Page.Session["user"].ToString() + ResumeFileUpload.FileName;
        }
    }
}