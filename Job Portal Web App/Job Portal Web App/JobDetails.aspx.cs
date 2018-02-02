using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal_Web_App
{
    public partial class JobDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ApplyNowButton_Click(object sender, EventArgs e)
        {
            if(Request.QueryString["id"] != null)
            {
                Response.Redirect("ResumeBuilder.aspx?id="+Request.QueryString["id"].ToString());
            }
            
        }
    }
}