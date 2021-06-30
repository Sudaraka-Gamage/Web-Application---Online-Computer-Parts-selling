package ComputerShop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class DistributorDBDemo {
	
	private DataSource data;

	public DistributorDBDemo(DataSource dataSource) {
		
		data= dataSource;
	}
	
	public List<Distributor> getDistributors() throws Exception {
		
		List<Distributor> distributorsList = new ArrayList<>();
		
		Connection connection = null;
		Statement statement = null;
		ResultSet resultset = null;
		
		try {
			
			connection = data.getConnection();
			
			String query1 = "select * from distributor order by iddistributor";
			
			statement = connection.createStatement();
			
			resultset = statement.executeQuery(query1);
		
			while (resultset.next()) {
			
				String id = resultset.getString("iddistributor");
				String cName = resultset.getString("companyName");
				String aName = resultset.getString("agentName");
				String cPhone = resultset.getString("comPhoneNumber");
				String agent = resultset.getString("agtPhoneNumber");
				String mail = resultset.getString("email");
				String addr = resultset.getString("address");
				
				Distributor distributor = new Distributor(id, cName, aName, cPhone, agent, mail, addr);
				
				distributorsList.add(distributor);				
			}
			
			return distributorsList;		
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

	public void addDistributor(Distributor distributor) throws Exception {

		Connection connection = null;
		PreparedStatement statement = null;
		
		try {
		
			connection = data.getConnection();
			
			String query2 = "insert into distributor "
					   + "(iddistributor, companyName, agentName, comPhoneNumber, agtPhoneNumber, email, address) "
					   + "values (?, ?, ?, ?, ?, ?, ?)";
			
			statement = connection.prepareStatement(query2);
			
			statement.setString(1, distributor.getID());
			statement.setString(2, distributor.getCompany());
			statement.setString(3, distributor.getAgent());
			statement.setString(4, distributor.getComPhone());
			statement.setString(5, distributor.getAgentPhone());
			statement.setString(6, distributor.getMail());
			statement.setString(7, distributor.getAddress());
			
			statement.execute();
		}
		finally {
			
			close(connection, statement, null);
		}
	}

	public Distributor getDistributor(String distributorId) throws Exception {

		Distributor distributor = null;
		
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultset = null;
		
		try {
			
			connection = data.getConnection();
			
			String query3 = "select * from distributor where iddistributor=? ";
	
			statement = connection.prepareStatement(query3);
		
			statement.setString(1, distributorId);
		
			resultset = statement.executeQuery();
			
			if (resultset.next()) {
				
				String cName = resultset.getString("companyName");
				String aName = resultset.getString("agentName");
				String cPhone = resultset.getString("comPhoneNumber");
				String aPhone = resultset.getString("agtPhoneNumber");
				String mail = resultset.getString("email");
				String addr = resultset.getString("address");
				
				distributor = new Distributor(distributorId ,cName, aName, cPhone, aPhone ,mail, addr);
			}
			else {
				throw new Exception("No matchings for " + distributorId);
			}				
			
			return distributor;
		}
		finally {
			
			close(connection, statement, resultset);
		}
	}

}
