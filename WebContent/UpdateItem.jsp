<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
Statement stat = null;
ResultSet res = null;
PreparedStatement pre = null;
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?autoReconnect=true&useSSL=false","root","root");
%>
<title>Update Item</title>
</head>
<body>
<form action="ItemUpdate" method="GET">

	<%
	stat = con.createStatement();
	String id = request.getParameter("id");
	String sql = "select * from items where iditems='"+id+"'";
	res = stat.executeQuery(sql);
	while(res.next()){
	%>
	<input type ="hidden" name="id" value='<%=res.getString("iditems")%>'/>
			<table>
				<tbody>
					<tr>
						<td><label for="ItemName">Item Name</label></td>
						<td><input type="text" name="ItemName" value='<%=res.getString("itemName")%>'/></td>
					</tr>

					<tr>
						<td><label for="Price">Item Price</label></td>
						<td><input type="text" name="Price" value='<%=res.getString("price")%>' /></td>
					</tr>

					<tr>
						<td><label for="units">Available Units</label></td>
						<td><input type="text" name="units" value='<%=res.getString("availableUnits")%>'/></td>
					</tr>
					
					<tr>
						<td><label for="Did">Distributor ID</label></td>
						<td><input type="text" name="Did" value='<%=res.getString("distributorID")%>'/></td>
					</tr>
					
					<tr>
						<td><label for="discount">Discount</label></td>
						<td><input type="text" name="discount" value='<%=res.getString("discountPercentage")%>'/></td>
					</tr>
					<% } %>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Update" /></td>
						<td><a href="ItemController">Previous</a>
					</tr>
					
				</tbody>
			</table>
		</form>
</body>
</html>