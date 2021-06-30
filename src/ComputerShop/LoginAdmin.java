package ComputerShop;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginAdmin")
public class LoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginAdmin() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String name = request.getParameter("user");
			String password = request.getParameter("password");
			String dbName = null;
			String dbPassword = null;
			String sql ="SELECT idAdmin,password FROM admin where idAdmin='"+name+"' and password='"+password+"'";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop","root","root");
			Statement  stmt = conn.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			PrintWriter out = response.getWriter();
			while(rs.next()) {
				dbName= rs.getString("idAdmin");
				dbPassword = rs.getString("password");
			}
			
			if(name.equals(dbName)&&password.equals(dbPassword)) {
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("loginAdmin.jsp");
				rd.include(request, response);
			}
			
			
		}
		catch(SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
