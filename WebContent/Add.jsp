<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.Statement"%>
<%@page import = "java.sql.Connection"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Staff</title>
<style>
           body{background-color:powderblue}
		  
        </style>
</head>
<body>
<form action="" method="GET" >
		
    	<h1>Manage Staff</h1>
    	
    	<hr>
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
					<td><label for="Phn"><b>Phone Number</b></label></td>
			    	<td><input type="text" placeholder="PhoneNumber" name="Phn" required></td>
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
			    	<td><input type="" placeholder="*******" name="Password" required></td>
				</tr>	
			    	<div>
			      		<button type="submit">Submit</button>
			    	</div>
					<br>
					<div>
						<a href="StaffMan.jsp">Previous Page</a>
					</div>
					
				</tr>
			</tbody>
		</table>
	</form>
	
</body>
</html>
<%
String sid = request.getParameter("StaffID");
String fname = request.getParameter("FirstName");
String lname = request.getParameter("LastName");
String pos = request.getParameter("post");
String pnum = request.getParameter("phn");
String ea = request.getParameter("email");
String address = request.getParameter("Address");
String pwd = request.getParameter("Password");

if(sid != null){
Connection conn = null;

Class.forName("com.mysql.jdbc.Driver");

		
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?useSSL=false","root","root");
			Statement stat = conn.createStatement();
		
			stat.executeQuery("insert into staff(idstaff,firstName,lastName,reputation,phoneNumber,email,address,password) VALUES ('"+sid+"', '"+fname+"', '"+lname+"', '"+pos+"', '"+pnum+"', '"+ea+"', '"+address+"', '"+pwd+"') ");
			response.sendRedirect("StaffMan.jsp");
}
%>