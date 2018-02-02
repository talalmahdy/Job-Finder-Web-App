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

namespace Job_Portal_Web_App
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString());
                con.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "insert into tblUsers(vUsername,vPassword,vName,vSurname,vAddress,vPhoneNumber,vEmail,dDateOfBirth,vQualification,vCountry) values ('"
                    + Username.Text + "','"
                    + Password.Text + "','"
                    + Name.Text + "','"
                    + Surname.Text + "','"
                    + Address.Text + "','"
                    + Phone.Text + "','"
                    + Email.Text + "','"
                    + DateOfBirth.Text + "','"
                    + Qualification.Text + "','"
                    + Country.SelectedValue.ToString() + "')";
                com.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Login.aspx?id=registration");
                //ErrorLabel.Text = "You have successfully registered.";
            }

        }

        protected void TermsValidator_ServerValidate(object source, ServerValidateEventArgs args) //terms checkbox
        {
            args.IsValid = Terms.Checked;
        }
    }
}