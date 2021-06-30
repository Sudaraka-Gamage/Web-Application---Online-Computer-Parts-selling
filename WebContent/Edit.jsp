<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
Statement stat = null;
ResultSet res = null;
PreparedStatement pre = null;
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?autoReconnect=true&useSSL=false","root","root");

%>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
<form action="setStaff" method="GET">
	<%
	stat = conn.createStatement();
	String id = request.getParameter("id");
	String sql = "select * from staff where idstaff='"+id+" '";
	res = stat.executeQuery(sql);
	while(res.next()){
	%>
	<input type ="hidden" name="id" value='<%=res.getString("idstaff")%>'/>
			<table>
				<tbody>
					<tr>
			    	<td><label for="StaffId"><b>Staff ID</b></label></td>
			    	<td><input type="text" placeholder="Staff ID" name="StaffId" required></td>
				</tr>
				
				<tr>
			    	<td><label for="FirstName"><b>First Name</b></label></td>
			    	<td><input type="text" placeholder="First Name" name="FirstName" required></td>
				</tr>
				
				<tr>
			    	<td><label for="LastName"><b>Last Name</b></label></td>
			    	<td><input type="text" placeholder="Last Name" name="LastName"></td>
				</tr>
				
				<tr>	
					<td><label for="Reputation"><b>Reputation</b></label></td>
			    	<td><input type="text" placeholder="Reputation" name="Reputation"></td>
				</tr>
				
				<tr>	
					<td><label for="PhoneN"><b>Phone Number</b></label></td>
			    	<td><input type="text" placeholder="PhoneNumber" name="PhonenN" required></td>
				</tr>
				
				<tr>	
					<td><label for="email"><b>Email </b></label></td>
			    	<td><input type="text" placeholder="Email" name="email" required></td>
				</tr>
					
				<tr>	
					<td><label for="Address"><b>Address </b></label></td>
			    	<td><input type="text" placeholder="Address" name="Address" required></td>
				</tr>
				
				<tr>	
					<td><label for="Password"><b>Password</b></label></td>
			    	<td><input type="text" placeholder="*******" name="Password" required></td>
				</tr>	
			    
					
					<% } %>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Update" />Update</td>
						<td><a href="StaffMan.jsp">Previous</a>
					</tr>
					
				</tbody>
			</table>
		</form>
</html>
