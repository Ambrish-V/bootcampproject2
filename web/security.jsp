<%-- 
    Document   : security
    Created on : 5 Jul, 2020, 7:49:46 PM
    Author     : Ambrish V
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
             body{
                background-image: url("train7.jpg");
                background-size: cover;
            }
             div.loginform{
                text-align: left;
                top: 20%;
                left: 35%;
                font-size: 30px;
                font-family: sans-serif;
                position: absolute;
                color: #fff;
                padding: 50px;
                margin: 20px;
                background-color: rgba(0,0,0,0.4);
                box-sizing: border-box;
            }
            .loginform input[type="text"]
            {
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                color: #fff;
            }
             .loginform  input[type="submit"]
            {
                width: 100%;
                margin-bottom: 10px;
                border: none;
                outline: none;
                height: 40px;
                background: #1c8adb;
                color: #fff;
                font-size: 18px;
                border-radius: 90px;
            }
            .loginform  input[type="submit"]:hover
            {
                cursor: pointer;
                background: #39dc79;
                color: #000;
            }
            th {
             text-align: center;
            }   
            .loginform a{
                font-size: 16px;
                position: left;
                color: #fff;
            }
            .loginform a:hover{
                color: #39dc79
            }
        </style>
    </head>
    <body>
        
        <div class="loginform">
            <form name="securityform" method="get" action="forgetpassword">
                 <table cellspacing="0" border="0" align="center" style="width: 100%">
                     <tr height="50px" bgcolor="dodgerblue" ><th><Strong>Password retrieval</strong></th><tr>
                    <tr><td>Username</td></tr>
                    <tr><td><input type="text" name="uname" placeholder="Enter username" onkeydown="highlight(this)" onkeyup="white(this)" required><br></td></tr>
                     <tr><td>Choose Security question</td></tr>
                     <tr><td><select  name="question" required>
                     <option value="What is your favourite colour?">What is your favourite colour?</option>
                     <option value="What is your native?">What is your native?</option>
                     <option value="What is your school name?">What is your school name?</option>
                     <option value="What is your favourite food?">What is your favourite food?</option>
                     <option value="What is your pet name?">What is your pet name?</option>
                     <option value="What is your favourite destination?">What is your favourite destination?</option>
                     </select><br></td></tr>
                 <tr><td>Answer</td></tr>
                 <tr><td><input type="text" name="answer" placeholder="Your answer" onkeydown="highlight(this)" onkeyup="white(this)" required></td></tr>
                 <tr height="80px"><td style="vertical-align:bottom"><input type="submit" value="Submit"></td></tr>
                 <tr><td> <p class="message">Login<a href="mainlogin1.html">Back </a></p></td></tr>
                    </table>
            </form>
        </div>
    </body>
</html>
