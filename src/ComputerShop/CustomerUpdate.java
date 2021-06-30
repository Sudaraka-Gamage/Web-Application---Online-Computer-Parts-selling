package ComputerShop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerUpdate")
public class CustomerUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CustomerUpdate() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			String id = request.getParameter("id");
			String fName = request.getParameter("firstNames");
			String lName = request.getParameter("lastNames");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?useSSL=false","root","root");
			PreparedStatement ps = (PreparedStatement)con.prepareStatement("update customer set firstName='"+fName+"' ,lastName='"+lName+"' ,email='"+email+"', phoneNumber='"+phone+"' where idcustomer='"+id+"'");
			ps.executeUpdate();
			response.sendRedirect("CustomerContoller");
			
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
	
	}


	

}
