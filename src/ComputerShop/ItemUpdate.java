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

@WebServlet("/ItemUpdate")
public class ItemUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ItemUpdate() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
	
			String id = request.getParameter("id");
			String iName = request.getParameter("ItemName");
			float price = Float.parseFloat(request.getParameter("Price"));
			int unt = Integer.parseInt(request.getParameter("units"));
			String did = request.getParameter("Did");
			float dis = Float.parseFloat(request.getParameter("discount"));
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?useSSL=false","root","root");
			PreparedStatement ps = (PreparedStatement)con.prepareStatement("update items set itemName='"+iName+"' ,price='"+price+"' ,availableUnits='"+unt+"', distributorID='"+did+"',discountPercentage='"+dis+"' where iditems='"+id+"'");
			ps.executeUpdate();
			response.sendRedirect("ItemController");
			
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
	}

	

	}
}
