import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/page33")
public class page33 extends HttpServlet
{
 public void doGet(HttpServletRequest request,HttpServletResponse
response)throws IOException,ServletException
 {
 response.setContentType("text/html");
 PrintWriter out = response.getWriter();
 String From = request.getParameter("From");
 String To = request.getParameter("To");
 String date=request.getParameter("date");
out.println("<h1>"+From+"</h1>");
out.println("<h2>"+To+"</h1>");
out.println("<h3>"+date+"</h3>");
 
 out.println("<a href='mainlogin1.html'>Back</a>");
 out.close();
 }
}

