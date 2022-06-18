using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelpingWebsite1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string loggedInUser = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request["submit_log_out"] != null) {
                Session["user"] = null;
                Session["admin"] = null;
                Response.Redirect("SignIn.aspx");
            }
            if (Session["user"] != null) {
                loggedInUser = "You are logged in " + Session["user"];
            }
            if(Session["admin"] != null) {
                loggedInUser = "Hello admin : " + Session["user"];
            }
        }
    }
}