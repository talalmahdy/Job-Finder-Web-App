using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal_Web_App
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.Session["user"] != null) //if there is a value in this session variable, it means we're already logged in
            {
                LoginLogoutLabel.Text = "Logout"; //when we're logged in, logout button is displayed
                SignUpUserProfileLabel.Text = "Profile";
            }
            else
            {
                LoginLogoutLabel.Text = "Login";
                SignUpUserProfileLabel.Text = "Sign Up";
            }
        }

        protected void LoginLogoutLabel_Click(object sender, EventArgs e)
        {
            if(LoginLogoutLabel.Text == "Login")
            {
                Response.Redirect("Login.aspx");
            }
            if(LoginLogoutLabel.Text == "Logout") //or else
            {
                Page.Session.Abandon();
                Response.Redirect("Login.aspx?id=logout");
            }
        }

        protected void SignUpUserProfileLabel_Click(object sender, EventArgs e)
        {
            if (SignUpUserProfileLabel.Text == "Sign Up")
            {
                Response.Redirect("Sign Up.aspx");
            }
            if (SignUpUserProfileLabel.Text == "Profile")
            {
                Response.Redirect("UserProfile.aspx");
            }
        }
    }
}