using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

namespace Job_Portal_Web_App
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString());
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "select * from tblUsers where vUsername='" + Username.Text + "'";
            SqlDataReader dr = com.ExecuteReader();
            if(dr.Read())
            {
                string sPassword, sEmail;
                sPassword = dr["vPassword"].ToString();
                sEmail = dr["vEmail"].ToString();
                SendMail(sPassword,sEmail);
            }
            else
            {
                ErrorLabel.Text = "The Username is incorrect.";
            }
        }

        public void SendMail(string Password, string Email)
        {
            try
            {
                MailMessage Message = new MailMessage("talal.mahdy@outlook.com", Email);
                Message.Subject = "Your EBLA Job Portal Account Information";
                Message.Body = "The Password for your EBLA Job Portal Account is: " + Password + "<br />";                
                Message.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp-mail.outlook.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("talal.mahdy@outlook.com", "vitaminabcde1234");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 25;
                smtp.Send(Message);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Password Recovery Request Sent Successfully.');", true);
            }
            catch (Exception ex)
            {
                ErrorLabel.Text = "Error:" + ex.Message; //Message here and message above are totally different
            }
        }
    }
}