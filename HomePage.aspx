<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="HelpingWebsite1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <title> HomePage-Page1</title>
    <style>
        html {
            background-image: url("images/p1.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
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

        <table style="width: 100%; border: solid; border-color: white">
            <tr>
                <td>
                   
                   <div style="width:30%;  margin: 0; -ms-transform: translateX(0%); transform: translateX(115%); ">
                       <h1> HomePage </h1>
                   </div>
                    </table>
                    <br />
                    <div class="greatBk">

                        <h3 style="color:darkturquoise">
                          Hey, do you like to study? Do you enjoy listening to songs while you study? Need a website to help you know when to take a break? If for all / some of the questions asked here the answer is yes, thats a sign that this is the site for you. Here at Useful website you get to enjoy listening to great music while learning your favorite courses on the internet! Sign up today and start your learning journey throughout the internet!
                        </h3>
                    </div>
                    <br />

                    <div style="width: 30%; border-width: 6px;">
                        <h1>Courses : </h1>
                    </div>
                    <br />

                    <table>
                        <tr>
                            <td class="tdStandards">
                                <a href="https://www.codecademy.com/learn/learn-java" target="_blank">
                                    <h2>Java Programming for beginners- Codecademy</h2>                
                                <img src="images/teach-you-java-fundamentals.jpg" /> </a>
                            </td>
                            <td class="tdStandards">
                                <a href="https://www.mygreatlearning.com/academy/learn-for-free/courses/video-editing-basics" target="_blank">
                                    <h2>Video Editing Basics</h2>
                                <img src="images/video-editing-Chicago.jpg" /> </a>
                            </td>
                            <td class="tdStandards">
                                <a href="https://www.coursera.org/learn/market-research" target="_blank">
                                    <h2>Market Research and Consumer Behavior</h2>                
                                <img src="images/Digital-Marketing-Courses.jpg" /> </a>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr class="trStandards">
                            <td class="tdStandards">
                                <a href="https://www.freecodecamp.org/news/maths-for-programmers/" target="_blank">
                                    <h2>Math for Programmers Course</h2>
                                <img src="images/MathForProgramming.jpg" /> </a>
                            </td>
                            <td class="tdStandards">
                                <a href="https://ocw.mit.edu/courses/physics/8-04-quantum-physics-i-spring-2013/" target="_blank">
                                    <h2>Quantum Physics I - Prof. Allan Adams - For begginers</h2>             
                                <img src="images/maxresdefault.jpg" /> </a>
                            </td>
                            <td class="tdStandards">
                                <a href="https://www.coursera.org/learn/introduction-psychology" target="_blank">
                                    <h2>Introduction to Psychology</h2>
                                <img src="images/Psychology.jpg" /> </a>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td class="tdStandards">
                                <a href="https://www.coursera.org/learn/learning-how-to-learn" target="_blank">
                                    <h2>Learning How to Learn: Powerful mental tools to help you master tough subjects</h2>
                                <img src="images/Learning.png" /></a>
                            </td>
                            <td class="tdStandards">
                                <a href="https://www.coursera.org/learn/game-theory-1" target="_blank">
                                    <h2>Game Theory-For begginers</h2>
                                <img src="images/GameTheory.jpg" /></a>
                            </td>
                            <td class="tdStandards">
                                <a href="https://www.edx.org/course/pyramids-of-giza-ancient-egyptian-art-and-archaeol?source=aw&awc=6798_1541134264_f21ea65dcbefff56717a3d36f4751599&utm_source=aw&utm_medium=affiliate_partner&utm_content=text-link&utm_term=301045_https%3A%2F%2Fwww.class-central.com%2F" target="_blank">
                                    <h>Pyramids of Giza: Ancient Egyptian Art and Archaeology - Begginer friendly by Harvard University</h>
                              <img src="images/download.jpg" /></a> 
                                    
                            </td>
                        </tr>
                    </table>

                    <br />
                    <br />

    </center>
</asp:Content>
