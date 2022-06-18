using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelpingWebsite1 {
    public partial class WebForm4 : System.Web.UI.Page {
        public string msg_to_user = "";

        protected void Page_Load(object sender, EventArgs e) {
            if (Request.Form["submit_log_in"] != null) {

                string user_name = Request["user_name"];
                string password = Request["password"];
                string databaseFileName = "myfirstdb.mdf";
                string tableName = "users";


                string selectQuery = "SELECT * FROM " + tableName + " WHERE user_name = '" + user_name + "' AND password = '" + password + "'";

                DataTable table = Helper.ExecuteDataTable(databaseFileName, selectQuery);
                int userExists = table.Rows.Count;
                
                

                if (userExists != 0) {
                    Session["user"] = user_name;
                    msg_to_user = "You are logged in, good luck with you studies " + user_name;
                        if (table.Rows[0]["isAdmin"].Equals(1)) {
                            Session["admin"] = "logged_admin";
                            return;
                        }
                    }
                }
                else {
                    msg_to_user = "User does not exists";
                }

            }
        }
    }
