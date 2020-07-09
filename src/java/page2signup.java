import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/page2signup")
public class page2signup extends HttpServlet {
    public void doGet(HttpServletRequest request,HttpServletResponse
response)throws IOException,ServletException
 {
 response.setContentType("text/html");
 PrintWriter out=response.getWriter();
 String user=request.getParameter("uname");
 String pass=request.getParameter("pass");
 String gender=request.getParameter("gender");
 String emailid=request.getParameter("email");
 String place=request.getParameter("place");
 String phone=request.getParameter("phone");
 String question=request.getParameter("question");
 String answer=request.getParameter("answer");
 String url="jdbc:mysql://localhost:3306/irctlogindetails";
 String sqlusername="root";
 String sqlpassword="Wipronascom@123";
 String query="insert into userinfo (username,password,gender,Emailid,place,phone,security,security_question) values('"+user+"','"+pass+"','"+gender+"','"+emailid+"','"+place+"','"+phone+"','"+answer+"','"+question+"')";
 try{
     try {
         Class.forName("com.mysql.jdbc.Driver");
     } catch (ClassNotFoundException ex) {
         Logger.getLogger(page2signup.class.getName()).log(Level.SEVERE, null, ex);
     }
     Connection con=DriverManager.getConnection(url,sqlusername,sqlpassword);
     Statement smt = con.createStatement();
     smt.executeUpdate(query);
     out.println("Successfully created!");
     RequestDispatcher rd=request.getRequestDispatcher("/mainlogin1.html");
     rd.include(request,response);
     con.close();
 }catch(SQLException ex)
 {
    out.println(ex);
 }
   }
}
    
   