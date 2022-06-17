using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelpingWebsite1 {
    public partial class WebForm7 : System.Web.UI.Page {
        public string message_to_client = "";
        protected void Page_Load(object sender, EventArgs e) {
            if (Session["admin"] != null) {
                String fileName = "myfirstdb.mdf";
                String tableName = "users";


                if (Request["submit_delete"] != null) {
                    string rowDelete = Request["submit_delete"];
                    String DeleteQuery = "DELETE  FROM " + tableName + " WHERE user_name='" + rowDelete + "'";
                    Helper.ExecuteDataTable(fileName, DeleteQuery);
                }


                string sqlSelect = "SELECT * FROM " + tableName;
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
                int length = table.Rows.Count;
                if (length == 0) {
                    message_to_client = "no users";
                }
                else {
                    message_to_client += "<tr>";
                    message_to_client += "<th></th>";
                    message_to_client += "<th>User name</th>";
                    message_to_client += "<th>First name</th>";
                    message_to_client += "<th>Last name</th>";
                    message_to_client += "<th>Telephone</th>";
                    message_to_client += "<th>Gender</th>";
                    message_to_client += "<th>User's country</th>";
                    message_to_client += "<th>Birth date</th>";
                    message_to_client += "<th>Email</th>";
                    message_to_client += "<th>Password</th>";
                    message_to_client += "<th>IsAdmin</th>";
                    message_to_client += "</tr>";
                    for (int i = 0; i < length; i++) {
                        message_to_client += "<tr>";
                        message_to_client += "<th style=\" border: 1px solid black;\"><button type=\"submit\" name=\"submit_delete\"  value=\"" + table.Rows[i]["user_name"] + "\"> 🗑</button> </th>";
                        //message_to_client += "<td><button type = \"submit\" name=\"submit_delete\"> <i style=\"cursor:pointer\" class=\"fa\">&#xf014;</i></td>";

                        message_to_client += "<td>" + table.Rows[i]["user_name"] + "</td>";
                        message_to_client += "<td>" + table.Rows[i]["first_name"] + "</td>";
                        message_to_client += "<td>" + table.Rows[i]["last_name"] + "</td>";
                        message_to_client += "<td>" + table.Rows[i]["telephone"] + "</td>";
                        message_to_client += "<td>" + table.Rows[i]["gender"] + "</td>";
                        message_to_client += "<td>" + table.Rows[i]["user_country"] + "</td>";
                        message_to_client += "<td>" + table.Rows[i]["birth_date"] + "</td>";
                        message_to_client += "<td>" + table.Rows[i]["email"] + "</td>";
                        message_to_client += "<td>" + table.Rows[i]["password"] + "</td>";
                        message_to_client += "<td>" + table.Rows[i]["isAdmin"].Equals(1) + "</td>";
                        message_to_client += "</tr>";

                    }
                }

            }
        }

    }
}