<%-- 
    Document   : page3login
    Created on : 5 Jul, 2020, 4:16:33 PM
    Author     : Ambrish V
--%>
<%@page import="javax.servlet.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.io.*"%>
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
             div.table{
                width: 1340px;
                height: 650px;
                text-align: center;
                top: 5%;
                left: 5%;
                font-size: 30px;
                font-family: sans-serif;
                position: absolute;
                color: #fff;
                padding: 50px;
                margin: 20px;
                background-color: rgba(0,0,0,0.4);
                box-sizing: border-box;
            }
            #maintable{
                width: 30%;
                border: 5px;
                background-color: #D8F0DA;
                font-family: sans-serif;
                min-width: 92%;
                color: #fff;
                position: absolute;
                opacity: 1;
                background: transparent;
                border: 4px solid black;
            }
            th,td{
                padding: 1px;
                border: 4px solid black;
                border-spacing: 0px;
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
        </style>
    </head>
    <body>
        <div class="table" style="overflow: auto">
        <%
            response.setContentType("text/html");
 String From = request.getParameter("From");
 String To = request.getParameter("To");
 String date=request.getParameter("date");
 String url="jdbc:mysql://localhost:3306/irctlogindetails";
 String sqluname="root";
 String sqlpass="Wipronascom@123";
 String query ="select * from traininfo where start_place='"+From+"' and end_place='"+To+"' and date_0f_journey='"+date+"'";
%>
<table id="maintable" >
    <caption align="center"><b>Available Trains</b></caption>
    <tr>
        <th bgcolor="mediumseagreen"><p><b>Train Number</b></p></th>
        <th bgcolor="mediumseagreen"><p><b>Train Name</b></p></th>
        <th bgcolor="mediumseagreen"><p><b>Depart</b></p></th>
        <th bgcolor="mediumseagreen"><p><b>Arrival</b></p></th>
        <th bgcolor="mediumseagreen"><p><b>Duration</b></p></th>
    </tr>
     <%
try{ 
    try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
    boolean flag=false;
Connection  con= DriverManager.getConnection(url,sqluname,sqlpass);
Statement st=con.createStatement();
ResultSet rs= st.executeQuery(query);
while(rs.next()){
    
%>
<tr bgcolor="orange">
  
<td><%=rs.getString("train_number") %></td>
<td><%=rs.getString("train_name") %></td>
<td><%=rs.getString("depart") %></td>
<td><%=rs.getString("arrival") %></td>
<td><%=rs.getString("duration") %></td>

</tr>


<% 
    flag=true;
}
if(rs.next()){
  out.println("<h1 style=text-align: center>"+"No trains available"+"</h1>");
}

} catch (Exception e) {
e.printStackTrace();
}
%>
    </table>
        </div>
                     <div class="logout">
                         <a href="mainlogin1.html"><b>Logout</b></a></p>
                     </div>
    </body>
</html>

