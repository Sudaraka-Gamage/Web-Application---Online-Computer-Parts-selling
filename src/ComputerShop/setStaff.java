package ComputerShop;

import java.io.IOException;
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

/**
 * Servlet implementation class setStaff
 */
@WebServlet("/setStaff")
public class setStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public setStaff() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		try {
			String a = request.getParameter("StaffId");
			String b = request.getParameter("FirstName");
			String c = request.getParameter("LastName");
			String d = request.getParameter("Reputation");
			String e = request.getParameter("phoneN");
			String f = request.getParameter("email");
			String g = request.getParameter("Address");
			String h = request.getParameter("Password");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?useSSL=false","root","root");
			PreparedStatement ps = (PreparedStatement)con.prepareStatement("update staff set firstName='"+b+"' ,lastName='"+c+"' ,reputation='"+d+"',phoneNumber='"+e+"',email='"+f+"', address='"+g+"',password='"+h+"' where idstaff='"+a+"'");
			ps.executeUpdate();
			response.sendRedirect("StaffMan.jsp");
			
			
		} catch (ClassNotFoundException | SQLException e) {
			Logger.getLogger(DBCon.class.getName()).log(Level.SEVERE, null, e);
            System.out.println(e);
		}
		

	}

}
