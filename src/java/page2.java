import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/page2")
public class page2 extends HttpServlet
{
 public void doGet(HttpServletRequest request,HttpServletResponse
response)throws IOException,ServletException
 {
 response.setContentType("text/html");
 PrintWriter out=response.getWriter();
 String user=request.getParameter("uname");
 String pass=request.getParameter("pass");
 String url="jdbc:mysql://localhost:3306/irctlogindetails";
 String sqlusername="root";
 String sqlpassword="Wipronascom@123";
 String query="select * from userinfo where username=? and password=?";
 boolean flag=false;
 boolean flag1=false;
 try{
     try {
         Class.forName("com.mysql.jdbc.Driver");
         
     } catch (ClassNotFoundException ex) {
         Logger.getLogger(page2.class.getName()).log(Level.SEVERE, null, ex);
     }
Connection con=DriverManager.getConnection(url,sqlusername,sqlpassword);
         PreparedStatement ps=con.prepareStatement(query);
           ps.setString(1,user);
  ps.setString(2,pass);
  ResultSet rs=ps.executeQuery();
  if(rs.next())
  {
      flag=true;
  }
 }catch(SQLException ex)
 {
     flag1=true;
     out.println(ex);
 }   
     if(flag)
     {
         HttpSession session=request.getSession();
         session.setAttribute("user",user);
         RequestDispatcher rd =request.getRequestDispatcher("/page2login.jsp");
         rd.forward(request, response);
     }
     else if(flag==false && flag1==false)
     {
         out.println("Invalid username or password");
         RequestDispatcher rd =request.getRequestDispatcher("/mainlogin1.html");
         rd.include(request, response);
     }
 out.close();
 }
}