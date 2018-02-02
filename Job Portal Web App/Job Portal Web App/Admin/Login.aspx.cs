using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal_Web_App.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["id"] != null)
            {
                if(Request.QueryString["id"].ToString() == "LoginRequired")
                {
                    ErrorLabel.Text = "Please Login First.";
                }
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if(Username.Text == "admin" && Password.Text == "talal")
            {
                Page.Session.Add("admin", Username.Text);
                Response.Redirect("Home.aspx");
            }
            else
            {
                ErrorLabel.Text = "Username/Password is Incorrect.";
            }
        }
    }
}