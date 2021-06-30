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


@WebServlet("/DistributorUpdate")
public class DistributorUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DistributorUpdate() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String id = request.getParameter("id");
			String cName = request.getParameter("CompanyName");
			String aName = request.getParameter("agt");
			String cPhone = request.getParameter("cPhone");
			String aphone = request.getParameter("agtPhone");
			String mail = request.getParameter("email");
			String addrs = request.getParameter("addr");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?useSSL=false","root","root");
			PreparedStatement ps = (PreparedStatement)con.prepareStatement("update distributor set companyName='"+cName+"' ,agentName='"+aName+"' ,comPhoneNumber='"+cPhone+"', agtPhoneNumber='"+aphone+"', email='"+mail+"', address='"+addrs+"' where iddistributor='"+id+"'");
			ps.executeUpdate();
			response.sendRedirect("DistributorController");
			
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
	}


}
