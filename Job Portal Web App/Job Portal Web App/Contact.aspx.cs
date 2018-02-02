using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.IO;


namespace Job_Portal_Web_App
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage Message = new MailMessage("talal.mahdy@outlook.com", "talal.mahdy@outlook.com");
                Message.Subject = "EBLA Job Portal User Inquiry";
                Message.Body = "Name: " + Name.Text + "<br />Phone: " + Phone.Text + "<br />Email: " + Email.Text + "<br />Message: " + MessageBody.Text + "";
                if(AttachmentUpload.HasFile)
                {
                    string FileName = Path.GetFileName(AttachmentUpload.PostedFile.FileName);
                    Message.Attachments.Add(new Attachment(AttachmentUpload.PostedFile.InputStream, FileName));
                }
                Message.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp-mail.outlook.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("talal.mahdy@outlook.com","vitaminabcde1234");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 25;
                smtp.Send(Message);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Inquiry Sent Successfully.');", true);

            }
            catch(Exception ex)
            {
                ErrorLabel.Text = "Error:"+ ex.Message; //Message here and message above are totally different
            }

        }
    }
}