<%-- 
    Document   : page2login
    Created on : 4 Jul, 2020, 10:23:53 PM
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
                width: 350px;
                height: 450px;
                text-align: left;
                top: 30%;
                font-size: 30px;
                font-family: sans-serif;
                position: absolute;
                color: #fff;
                padding: 50px;
                margin: 20px;
                background-color: rgba(0,0,0,0.4);
                box-sizing: border-box;
            }
            div.title{
                text-align: center;
                font-size: 40px;
                font-family: sans-serif;
                padding: 20px;
                color: #fff;
                margin: 80px;
                background: rgba(0,0,0,0.4);
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
            div.logout {
                right: 50px;
                bottom: 600px;
                text-align: right;
                position: fixed;
                font-size: 20px;
                font-family: sans-serif;
                padding: 20px;
                color: #fff;
                margin: 40px;
                background: rgba(0,0,0,0.0);
                box-sizing: border-box;
            }
            .logout a:hover
            {
                cursor: pointer;
                background: yellow;
                color: #000;
   
            }
             th {
             text-align: center;
            }   
        </style>
        <script type="text/javascript">
            function checking()
            {
                if(document.trainselect.From.selectedIndex===document.trainselect.To.selectedIndex;)
                {
                    alert("Invalid source and destination");
                    trainselect.From.focus();
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
        <div class="title">
            <%
                response.setContentType("text/html");
                String s1=(String)session.getAttribute("user");  
                out.println("<strong>Welcome "+s1+"</strong>");
             %>
        </div>
         <div class="loginform">
            
                 <table cellspacing="0" border="0" align="center" >
                     <tr height="50px" bgcolor="dodgerblue"><th><Strong>Book your ticket</strong></th><tr>
                <form class="login-form" name="trainselect" action="page3login.jsp" onsubmit="return checking">
                    <tr><td>From</td></tr>
                    <tr><td><select  name="From" required>
                     <option value="Ahmedabad">Ahmedamad</option>
                     <option value="Allahabad">Allahabad</option>
                     <option value="Bangalore">Bangalore</option>
                     <option value="Bhuvaneshwar">Bhuvaneshwar</option>
                     <option value="Coimbatore">Coimbatore</option>
                     <option value="Chennai">Chennai</option>
                     <option value="Delhi">Delhi</option>
                     <option value="Gurgoan">Gurgoan</option>
                     <option value="Ernaculam">Ernaculam</option>
                     <option value="Hubballi">Hubballi</option>
                     <option value="Jamnagar">Jamnagar</option>
                     <option value="Kolkatta">Kolkatta</option>
                     <option value="Kozhikode">Kozhikode</option>
                     <option value="Madurai">Madurai</option>
                     <option value="Mangalore">Mangalore</option>
                     <option value="Mumbai">Mumbai</option>
                     <option value="Nagpur">Nagpur</option>
                     <option value="Nellore">Nellore</option>
                     <option value="Ongole">Ongole</option>
                     <option value="Raipur">Raipur</option>
                     <option value="Ranchi">Ranchi</option>
                     <option value="Salem">Salem</option>
                     <option value="Secunderabad">Secunderabad</option>
                     <option value="Trichy">Trichy</option>
                     <option value="Vijayawada">Vijayawada</option>
                     <option value="Vishagapatnam">Vishagapatnam</option>
                     </select><br></td></tr>
                     <tr><td>To</td></tr>
                     <tr><td><select  name="To" required>
                     <option value="Ahmedabad">Ahmedamad</option>
                     <option value="Allahabad">Allahabad</option>
                      <option value="Bangalore">Bangalore</option>
                     <option value="Bhuvaneshwar">Bhuvaneshwar</option>
                     <option value="Coimbatore">Coimbatore</option>
                     <option value="Chennai">Chennai</option>
                     <option value="Delhi">Delhi</option>
                     <option value="Gurgoan">Gurgoan</option>
                     <option value="Ernaculam">Ernaculam</option>
                     <option value="Hubballi">Hubballi</option>
                     <option value="Jamnagar">Jamnagar</option>
                     <option value="Kolkatta">Kolkatta</option>
                     <option value="Kozhikode">Kozhikode</option>
                     <option value="Madurai">Madurai</option>
                     <option value="Mangalore">Mangalore</option>
                     <option value="Mumbai">Mumbai</option>
                     <option value="Nagpur">Nagpur</option>
                     <option value="Nellore">Nellore</option>
                     <option value="Ongole">Ongole</option>
                     <option value="Raipur">Raipur</option>
                     <option value="Ranchi">Ranchi</option>
                     <option value="Salem">Salem</option>
                     <option value="Secunderabad">Secunderabad</option>
                     <option value="Trichy">Trichy</option>
                     <option value="Vijayawada">Vijayawada</option>
                     <option value="Vishagapatnam">Vishagapatnam</option>
                     </select><br></td></tr>
                 <tr><td>Date of journey</td></tr>
                 <tr><td><input type="date" name="date" onkeydown="highlight(this)" onkeyup="white(this)" required></td></tr>
                 <tr height="80px"><td style="vertical-align:bottom"><input type="submit" value="Find Trains"></td></tr>
                    </table>
                </form>
                     <div class="logout">
                         <a href="mainlogin1.html"><b>Logout</b></a></p>
                     </div>
         </div>  
        <script>
              function highlight(x) {
            x.style.background = "dodgerblue";
        }
            function white(x){
            x.style.background= "white";            
            }
        </script>
    </body>
</html>
