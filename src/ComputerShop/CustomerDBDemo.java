package ComputerShop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

public class CustomerDBDemo {
	
		private DataSource data;

		public CustomerDBDemo(DataSource dataSource) {
			
			data= dataSource;
		}
		
		public List<Customer> getCustomers() throws Exception {
			
			List<Customer> customersList = new ArrayList<>();
			
			Connection connection = null;
			Statement statement = null;
			ResultSet resultset = null;
			
			try {
				
				connection = data.getConnection();
				
				String query1 = "select * from customer order by idcustomer";
				
				statement = connection.createStatement();
				
				resultset = statement.executeQuery(query1);
			
				while (resultset.next()) {
				
					String id = resultset.getString("idcustomer");
					String fName = resultset.getString("firstName");
					String lName = resultset.getString("lastName");
					String mail = resultset.getString("email");
					String phonenum = resultset.getString("phoneNumber");
					
					Customer customer = new Customer(id, fName, lName, mail,phonenum);
					
					customersList.add(customer);				
				}
				
				return customersList;		
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

		public void addCustomer(Customer customer) throws Exception {

			Connection connection = null;
			PreparedStatement statement = null;
			
			try {
			
				connection = data.getConnection();
				
				String query2 = "insert into customer "
						   + "(idcustomer, firstName, lastName, email, phoneNumber) "
						   + "values (?, ?, ?, ?, ?)";
				
				statement = connection.prepareStatement(query2);
				
				statement.setString(1, customer.getID());
				statement.setString(2, customer.getFirstName());
				statement.setString(3, customer.getLastName());
				statement.setString(4, customer.getEmail());
				statement.setString(5, customer.getPhone());
				
				statement.execute();
			}
			finally {
				
				close(connection, statement, null);
			}
		}

		public Customer getCustomer(String customerId) throws Exception {

			Customer customer = null;
			
			Connection connection = null;
			PreparedStatement statement = null;
			ResultSet resultset = null;
			
			try {
				
				connection = data.getConnection();
				
				String query3 = "select * from customer where idcustomer=? ";
		
				statement = connection.prepareStatement(query3);
			
				statement.setString(1, customerId);
			
				resultset = statement.executeQuery();
				
				if (resultset.next()) {
					
					String firstName = resultset.getString("firstName");
					String lastName = resultset.getString("lastName");
					String email = resultset.getString("email");
					String phone = resultset.getString("phoneNumber");
					
					customer = new Customer(customerId ,firstName, lastName, email, phone);
				}
				else {
					throw new Exception("No matchings for " + customerId);
				}				
				
				return customer;
			}
			finally {
				
				close(connection, statement, resultset);
			}
		}

}



