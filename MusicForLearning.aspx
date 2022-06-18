<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MusicForLearning.aspx.cs" Inherits="HelpingWebsite1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>MusicForLearning-Page2</title>
    <style>
        html {
            background-image: url("images/bulbFields.jpg");
        }

        div {
            display: block;
            position: relative;
            width:65%;
            height:65%;
        }

            div ::after {
                content: "";
                background-color: black;
                opacity: 0.7;
                top: 0;
                left: 0;
                bottom: 0;
                right: 0;
                position: absolute;
                z-index: -1;
            }
            .greatBk {
    display: block;
    position: relative;
}
                .greatBk::after {
        content: "";
        background-color: black;
        opacity: 0.8;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
        position: absolute;
        z-index: -1;
    }



        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div>
    <h1 > Music for learning: </h1>
    <h3 > Here are some music Play-lists you can listen to while learning. Devided into categories for you to choose from </h3>

</div>
        <br />

        <table class="greatBk">
        <tr>
            <td class="tdStandards">
                <a href ="https://youtube.com/playlist?list=PLzsQxKtCXbaiQtqdEtoKMWpZsheX7zX6T" target="_blank"> <h2> Classical music (Piano foucus): </h2></a>
           <a href="https://youtube.com/playlist?list=PLzsQxKtCXbaiQtqdEtoKMWpZsheX7zX6T" target="_blank">
        <img src="images/pianoPhoto.jpg" /></a>
            </td>


             <td class="tdStandards">
                <a href ="https://youtube.com/playlist?list=PLCE2txRE9iH5T-RMmFYPEmbkCNk3zSy-a" target="_blank" ><h2> Hebrew only: </h2></a>
              <a href="https://youtube.com/playlist?list=PLCE2txRE9iH5T-RMmFYPEmbkCNk3zSy-a" target="_blank">
        <img src="images/Hebrew1.jpg" />  </a>
            </td>

             <td class="tdStandards">
                <a href ="https://www.youtube.com/playlist?list=PLHI13bb99w384ZySckz3puWDmQGa_Qpbd" target="_blank">  <h2> Stupid songs and chill music (most of it is 10 hours): </h2></a>
                <a href="https://www.youtube.com/playlist?list=PLHI13bb99w384ZySckz3puWDmQGa_Qpbd" target="_blank" >
        <img src="images/PolishCow.jpg" />   </a>
            </td>
        </tr>
        </table>
        <table class="greatBk">
         <tr class="trStandards">
            <td class="tdStandards">
                <a href ="https://youtube.com/playlist?list=PLHI13bb99w3_JYTY3trP5Td3zi3Jh4dV7" target="_blank"> <h2> Classical music (Baroque): </h2></a>
               <a href="https://youtube.com/playlist?list=PLHI13bb99w3_JYTY3trP5Td3zi3Jh4dV7" target="_blank" >
        <img src="images/BaroqueMusic.jpg" /> </a>
            </td>
             <td class="tdStandards"">
                <a href ="https://youtube.com/playlist?list=PLHI13bb99w39YpLjsR0bh3l_bQkYJEI8k" target="_blank"><h2> Free style </h2></a>
              <a href="https://youtube.com/playlist?list=PLHI13bb99w39YpLjsR0bh3l_bQkYJEI8k" target="_blank" >
        <img src="images/FreeStyle.jpg" />  </a>
            </td>
             <td class="tdStandards">
                <a href ="https://open.spotify.com/playlist/6QCehwLDPT7vhY7oUqcPOi?si=27dc7193d7ef4f0d" target="_blank" > <h2> Rock Music: </h2></a>
                <a href="https://open.spotify.com/playlist/6QCehwLDPT7vhY7oUqcPOi?si=27dc7193d7ef4f0d" target="_blank" >
        <img src="images/rockMusic.jpg" /></a>
            </td>
        </tr>
            </table>
      
</center>
</asp:Content>
