using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelpingWebsite1 {
    public partial class WebForm5 : System.Web.UI.Page {
        public string logged_in = "";
        public string msg_to_user = "";
        private string admin_password = "109876543210";
        private string wrongPassword = "0";
       

        protected void Page_Load(object sender, EventArgs e) {

            if (Request["submit"] != null) {

                string username = Request["username"];
                string firstname = Request["firstName"];
                string lastname = Request["lastName"];
                string email = Request["email"];
                string birthDate = Request["birthDate"];
                string gender = Request["gender"];
                string telephone = Request["telephone"];
                string user_country = Request["user_country"];
                string password = Request["password"];
              

                string databaseFileName = "myfirstdb.mdf";
                string tableName = "users";
                string insertQuery = "";
                string is_admin = "1";

                if (Request["admin-password"].Equals("")) {
                    is_admin = "0";
                }
                else if (!Request["admin-password"].Equals(admin_password)) {
                    msg_to_user = "The admin password is incorrect, in order to creat a user either dont fill the admin password or if you are an admin fill it with the correct password";
                    is_admin = "0";
                    wrongPassword = "1";
                } 
                  else if (is_admin == "1") {
                    Session["admin"] = "logged_admin";
                }
                if (wrongPassword.Equals("0")) {
                insertQuery =
" INSERT INTO " + tableName + "(first_name, last_name, birth_date, gender, user_country, user_name, password, email, telephone, isAdmin) VALUES ('" + firstname + "','" + lastname + "', '" + birthDate + "','" + gender + "','" + user_country + "','" + username + "','" + password + "','" + email + "' , '" + telephone + "' , '" + is_admin + "')";
           

 Helper.ExecuteDataTable(databaseFileName, insertQuery);

                if (is_admin.Equals("0")) {
                    Session["user"] = username;
                }
                    logged_in = "You are logged in " + username;
                }
               


            }
        }
    }
}