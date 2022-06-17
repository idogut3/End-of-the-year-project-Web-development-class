<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="HelpingWebsite1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>SignIn-Page4</title>
    <style>
        html {
            background-image: url("images/p6.jpg");
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <form runat="server">
    <center>
      
    <h1 class ="titles">
        This is the Sign in page! Sign in here:
    </h1>
       
  
         <h3> 
         <label for="userNameSignIn" >User Name : </label> 
        </h3>
        <input type ="text" name ="user_name" id="userNameSignIn" class="inputT"/>

         <h3> 
         <label for="userPasswordSignIn"> Password: </label> 
        </h3>
        <input type ="password"  name ="password" id="userPasswordSignIn" class="inputT" />

      
    <br/>
    <br/>
    <br/>
        
         <h3>
             <label for="enterAcc" >Enter to your account: </label> 
        </h3>
        <h1 style="color:white;">  <%=msg_to_user %> </h1>
        <input type="submit" name="submit_log_in" id="enterAcc" class="inputT" value="submit"/>
    <center>
    </form>
</asp:Content>
