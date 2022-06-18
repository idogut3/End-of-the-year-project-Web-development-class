<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="HelpingWebsite1.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>AdminPage</title>
    <style>
        html {
            background-image: url("images/p7.jpg");
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div class="coolButton" style="width: 30%;">
            <h1>Admin Table </h1>
        </div>
        <br />

        <div>
            <form runat="server">

                <table class="admin_table">
                    <%=message_to_client %>
                </table>

            </form>
        </div>
    </center>

</asp:Content>
