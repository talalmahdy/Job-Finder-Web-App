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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"]!=null) //first checks if there are any query strings
            {
                if (Request.QueryString["id"].ToString()=="registration") //if there is query from registration page, display this
                {
                    ErrorLabel.Text = "You have successfully Registered.";
                }
                if (Request.QueryString["id"].ToString() == "logout") //if there is query from logging out, display this
                {
                    ErrorLabel.Text = "You have successfully Logged Out.";
                }
                if (Request.QueryString["id"].ToString() == "LoginRequired") //if user tried entering userprofile page without logging in
                {
                    ErrorLabel.Text = "Please Login before accessing this page.";
                }                
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e) //event handler when login button clicks
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString());
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "select vPassword from tblUsers where vUsername='" + Username.Text+"'";
            SqlDataReader dr;
            dr = com.ExecuteReader();
            if (dr.Read()) //if the data reader can read data, it gives true
            {
                string sPassword = dr["vPassword"].ToString();
                if(sPassword==Password.Text)
                {
                    Page.Session.Add("user",Username.Text); //create session variable user of value Username. session=memory space on server where we can place temporary data
                    Page.Session.Timeout = 20; //minutes
                    Response.Redirect("UserProfile.aspx?id=success");
                }
                else
                {
                    ErrorLabel.Text = "Username/Password is Incorrect.";
                }
            }
            else
            {
                ErrorLabel.Text = "Username/Password is Incorrect.";
            }
        }
    }
}