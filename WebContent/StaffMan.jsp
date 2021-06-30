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
<title>Staff Management</title>

        <style>
           body{background-color:powderblue}
		   button{width:1000px}
        </style>
 
   </head>
   <body>
   
   <h1><center>Staff</center></h1>
   
   <td><a href="register.jsp">ADD</a></td>
   
   <table style="width:90%">
  <tr>
    <th><b>Staff ID</b></th>
    <th><b>First Name</b></th> 
    <th><b>Last Name </b></th>
	<th><b>Reputation</b></th>
	<th><b>Phone Number</b></th>
    <th><b>E-mail</b></th> 
    <th><b>Address </b></th>
	<th><b>Password</b></th>
	<th class ="text- center">Action</th> 
  </tr>
  </center>
  <tbody>
  	<%String host = "";
  	  Connection conn = null;
  	  Statement stat = null;
  	  ResultSet res = null;
  	  
  	  Class.forName("com.mysql.jdbc.Driver");
  	  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?autoReconnect=true&useSSL=false","root","root");
  	  stat = conn.createStatement();
  	  String data = "select * from staff order by idstaff desc";
  	  res = stat.executeQuery(data);
  	  while(res.next()){
  	%>
  	<tr>
  		<td><%=res.getString("idstaff") %></td>
  		<td><%=res.getString("firstName") %></td>
  		<td><%=res.getString("lastName") %></td>
  		<td><%=res.getString("reputation") %></td>
  		<td><%=res.getString("PhoneNumber") %></td>
  		<td><%=res.getString("email") %></td>
  		<td><%=res.getString("address") %></td>
  		<td><%=res.getString("password") %></td>
		<td>
			<a href = "Edit.jsp">Edit</a>
		</td>  	
  	</tr>
  	<%
  	}
  	  %>
  </tbody>
  </table>

</body>
</html>