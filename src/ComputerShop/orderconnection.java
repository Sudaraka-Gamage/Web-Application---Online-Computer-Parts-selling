package ComputerShop;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/orderconnection")
public class orderconnection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public orderconnection() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException {
		class DBCon {
    Connection con;
    public Connection getCon(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?useSSL=false","root","root");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBCon.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBCon.class.getName()).log(Level.SEVERE, null, ex);
             System.out.println(ex);
        }
    return con;
    }
    
}

		try {
			
			String id = request.getParameter("IDorder");
			String idd = request.getParameter("IID");
			String did = request.getParameter("DID");
			String noitem = request.getParameter("noOfItems");
			String date = request.getParameter("Date");
			
			DBCon db = new DBCon();
			Connection con =db.getCon();
			PreparedStatement stmt = con.prepareStatement("insert into orders(idorders,itemID,disID,units,date) VALUES (?,?,?,?,?)");
			
			stmt.setString(1, id);
			stmt.setString(2, idd);
			stmt.setString(3, did);
			stmt.setString(4, noitem);
			stmt.setString(5, date);
			
			PrintWriter out = response.getWriter();
			stmt.executeUpdate();
			
			response.sendRedirect("orderDisplay.jsp");
			
		}
		
		catch(SQLException e) {
			Logger.getLogger(orderconnection.class.getName()).log(Level.SEVERE, null, e);
		}
		
		}
		}

