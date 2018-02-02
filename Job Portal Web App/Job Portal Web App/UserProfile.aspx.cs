using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal_Web_App
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.Session["user"] == null)
            {
                Response.Redirect("Login.aspx?id=LoginRequired");
            }
            if(Request.QueryString["id"] != null)
            {
                if(Request.QueryString["id"].ToString() == "success")
                {
                    ErrorLabel.Text = "You have successfully logged in.";
                }
            }
        }
    }
}