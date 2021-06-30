package ComputerShop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class ItemDBDemo {
	
	private DataSource dataS;

	public ItemDBDemo(DataSource dataSource) {
		
		dataS= dataSource;
	}
	
	public List<Item> getItems() throws Exception {
		
		List<Item> ItemList = new ArrayList<>();
		
		Connection connection = null;
		Statement statement = null;
		ResultSet resultset = null;
		
		try {
			
			connection = dataS.getConnection();
			
			String q1 = "select * from items order by iditems";
			
			statement = connection.createStatement();
			
			resultset = statement.executeQuery(q1);
		
			while (resultset.next()) {
			
				String id = resultset.getString("iditems");
				String iName = resultset.getString("itemName");
				double price = resultset.getDouble("price");
				int unit = resultset.getInt("availableUnits");
				String did= resultset.getString("distributorID");
				double dis = resultset.getDouble("discountPercentage");
				
				Item item = new Item(id, iName, price, unit,did,dis);
				
				ItemList.add(item);			
			}
			
			return ItemList;		
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

	public void addItem(Item item) throws Exception {

		Connection connection = null;
		PreparedStatement statement = null;
		
		try {
		
			connection = dataS.getConnection();
			
			String query2 = "insert into items "
					   + "(iditems, itemName, price, availableUnits, distributorID, discountPercentage) "
					   + "values (?, ?, ?, ?, ?, ?)";
			
			statement = connection.prepareStatement(query2);
			
			statement.setString(1, item.getID());
			statement.setString(2, item.getName());
			statement.setDouble(3, item.getPrice());
			statement.setInt(4, item.getUnits());
			statement.setString(5, item.getDid());
			statement.setDouble(6, item.getDiscount());
			
			statement.execute();
		}
		finally {
			
			close(connection, statement, null);
		}
	}

	public Item getItem(String itemId) throws Exception {

		Item item = null;
		
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultset = null;
		
		try {
			
			connection = dataS.getConnection();
			
			String q3 = "select * from items where iditems=? ";
	
			statement = connection.prepareStatement(q3);
		
			statement.setString(1, itemId);
		
			resultset = statement.executeQuery();
			
			if (resultset.next()) {
				
				String itemName = resultset.getString("itemName");
				double price = resultset.getDouble("price");
				int unit = resultset.getInt("availableUnits");
				String did = resultset.getString("distributorID");
				double discount = resultset.getDouble("discountPercentage");
				
				item = new Item(itemId ,itemName, price, unit, did, discount);
			}
			else {
				throw new Exception("No matchings for " + itemId);
			}				
			
			return item;
		}
		finally {
			
			close(connection, statement, resultset);
		}
	}

}
