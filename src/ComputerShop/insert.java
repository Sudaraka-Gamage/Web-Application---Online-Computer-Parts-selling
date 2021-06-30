package ComputerShop;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class insert extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

public void init(ServletConfig config) throws ServletException{
  super.init(config);
  }
 
  public void doPost(HttpServletRequest req, 
  HttpServletResponse res) throws ServletException,
  IOException{

 try {
	  String a = req.getParameter("idstaff");
	  String b = req.getParameter("firstName");
	  String c = req.getParameter("lastName");
	  String d = req.getParameter("reputation");
	  String e = req.getParameter("PhoneNumber");
	  String f = req.getParameter("email");
	  String g = req.getParameter("address");
	  String h = req.getParameter("password");
		
	  	DBinsert dbinsert = new DBinsert();
	  	
		Connection connection =dbinsert.getCon();
		Statement stmt = connection.createStatement();
		
		stmt.executeUpdate("insert into staff(idstaff,firstName,lastName,reputation,phoneNumber,email,address,password) VALUES ('"+a+"', '"+b+"', '"+c+"', '"+d+"', '"+e+"', '"+f+"', '"+g+"', '"+h+"') ");
		res.sendRedirect("StaffMan.jsp");
  // show that the new account has been created
  
  }
  catch(SQLException e){
  e.printStackTrace();
  }
  catch (Exception ex){
  ex.printStackTrace();
  }
  finally {

 
  }
}
}