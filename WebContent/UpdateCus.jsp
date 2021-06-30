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
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?autoReconnect=true&useSSL=false","root","root");
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="CustomerUpdate" method="GET">

	<%
	stat = con.createStatement();
	String id = request.getParameter("id");
	String sql = "select * from customer where idcustomer='"+id+"'";
	res = stat.executeQuery(sql);
	while(res.next()){
	%>
	<input type ="hidden" name="id" value='<%=res.getString("idcustomer")%>'/>
			<table>
				<tbody>
					<tr>
						<td><label for="firstNames">First Name</label></td>
						<td><input type="text" name="firstNames" value='<%=res.getString("firstName")%>'/></td>
					</tr>

					<tr>
						<td><label for="lastNames">Last Name</label></td>
						<td><input type="text" name="lastNames" value='<%=res.getString("lastName")%>' /></td>
					</tr>

					<tr>
						<td><label for="email">Email Address</label></td>
						<td><input type="text" name="email" value='<%=res.getString("email")%>'/></td>
					</tr>
					
					<tr>
						<td><label for="phone">Phone Number</label></td>
						<td><input type="text" name="phone" value='<%=res.getString("phoneNumber")%>'/></td>
					</tr>
					
					<% } %>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Update" /></td>
						<td><a href="CustomerContoller">Previous</a>
					</tr>
					
				</tbody>
			</table>
		</form>
		</body>
</html>
