package ComputerShop;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String id = request.getParameter("StaffID");
			String fname = request.getParameter("firstName");
			String lname = request.getParameter("lastName");
			String pos = request.getParameter("post");
			String pnum = request.getParameter("phone");
			String ea = request.getParameter("email");
			String address = request.getParameter("address");
			String pwd = request.getParameter("password");
		
			DBCon db = new DBCon();
			Connection con =db.getCon();
			Statement stmt = con.createStatement();
			
			PrintWriter out = response.getWriter();
			out.println("register sucess");
			
			stmt.executeUpdate("insert into staff(idstaff,firstName,lastName,reputation,phoneNumber,email,address,password) VALUES ('"+id+"', '"+fname+"', '"+lname+"', '"+pos+"', '"+pnum+"', '"+ea+"', '"+address+"', '"+pwd+"') ");
			response.sendRedirect("login.jsp");
			
		}
		catch(SQLException e) {
			Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, e);
		}
		
		}
		}
