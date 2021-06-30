package ComputerShop;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;




@WebServlet("/orderget")
public class orderget extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public orderget() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		{
			response.setContentType("text/html");
			PrintWriter pw = ((HttpServletResponse) response).getWriter();
			Connection con;
			Statement stmt;
			ResultSet rs;
			try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?useSSL=false","root","root");
			stmt = con.createStatement();
			rs = stmt.executeQuery("select * from order");
			
			pw.println("+noOfItems+"+"orderID"+"IID"+"DID"+"Date");
			while(rs.next())
			{
			pw.println(rs.getString(1)+" "+rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4) +" " + rs.getString(5));
			}
			}
			catch (Exception e){
			pw.println(e);
			}
			
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}

}
