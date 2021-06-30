package ComputerShop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBinsert {
	Connection con;
    public Connection getCon(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop","root","root");
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
        } catch (SQLException ex) {
             System.out.println(ex);
        }
    return con;
    }
}
