package ComputerShop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class StaffDBDemo {
		
	private DataSource data;

	public StaffDBDemo(DataSource dataSource) {
		
		data= dataSource;
	}
	
	public List<Staff> getStaff() throws Exception {
		
		List<Staff> staffList = new ArrayList<>();
		
		Connection connection = null;
		Statement statement = null;
		ResultSet resultset = null;
		
		try {
			
			connection = data.getConnection();
			
			String query1 = "select * from staff order by idstaff";
			
			statement = connection.createStatement();
			
			resultset = statement.executeQuery(query1);
		
			while (resultset.next()) {
			
				String id = resultset.getString("idstaff");
				String cName = resultset.getString("firstName");
				String aName = resultset.getString("lastName");
				String cPhone = resultset.getString("reputation");
				String agent = resultset.getString("phoneNumber");
				String mail = resultset.getString("email");
				String addr = resultset.getString("address");
				String pw = resultset.getString("password");
				
				Staff staff = new Staff(id, cName, aName, cPhone, agent, mail, addr, pw);
				
				staffList.add(staff);				
			}
			
			return staffList;		
		}
		finally {

			close(connection, statement, resultset);
		}		
	}

	private void close(Connection connection, Statement statement, ResultSet resultset) {

		try {
			if (resultset != null) {
				resultset.close();
			}
			
			if (statement != null) {
				statement.close();
			}
			
			if (connection != null) {
				connection.close();  
			}
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
	}

	public void addStaff(Staff staff) throws Exception {

		Connection connection = null;
		PreparedStatement statement = null;
		
		try {
		
			connection = data.getConnection();
			
			String query2 = "insert into staff "
					   + "(idstaff, firstName, lastName, reputation, phoneNumber, email, address, password) "
					   + "values (?, ?, ?, ?, ?, ?, ?, ?)";
			
			statement = connection.prepareStatement(query2);
			
			statement.setString(1, staff.getID());
			statement.setString(2, staff.getFirstName());
			statement.setString(3, staff.getLastName());
			statement.setString(4, staff.getRep());
			statement.setString(5, staff.getPhone());
			statement.setString(6, staff.getMail());
			statement.setString(7, staff.getAddress());
			statement.setString(8, staff.getPassword());
			
			statement.execute();
		}
		finally {
			
			close(connection, statement, null);
		}
	}

	public Staff getstaff(String staffId) throws Exception {

		Staff staff = null;
		
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultset = null;
		
		try {
			
			connection = data.getConnection();
			
			String query3 = "select * from staff where idstaff=? ";
	
			statement = connection.prepareStatement(query3);
		
			statement.setString(1, staffId);
		
			resultset = statement.executeQuery();
			
			if (resultset.next()) {
				
				String fName = resultset.getString("firstName");
				String lName = resultset.getString("lastName");
				String rep = resultset.getString("reputation");
				String Phone = resultset.getString("phoneNumber");
				String mail = resultset.getString("email");
				String addr = resultset.getString("address");
				String pword = resultset.getString("password");
				
				staff = new Staff(staffId ,fName, lName, rep, Phone ,mail, addr, pword);
			}
			else {
				throw new Exception("No matchings for " + staffId);
			}				
			
			return staff;
		}
		finally {
			
			close(connection, statement, resultset);
		}
	}

}
