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
<%
Statement stat = null;
ResultSet res = null;
PreparedStatement pre = null;
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?autoReconnect=true&useSSL=false","root","root");
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<body>
<form action="DistributorUpdate" method="GET">

	<%
	stat = con.createStatement();
	String id = request.getParameter("id");
	String sql = "select * from distributor where iddistributor='"+id+"'";
	res = stat.executeQuery(sql);
	while(res.next()){
	%>
	<input type ="hidden" name="id" value='<%=res.getString("iddistributor")%>'/>
			<table>
				<tbody>
					<tr>
						<td><label for="CompanyName">Company Name</label></td>
						<td><input type="text" name="CompanyName" value='<%=res.getString("companyName")%>'/></td>
					</tr>

					<tr>
						<td><label for="agt">Agent Name</label></td>
						<td><input type="text" name="agt" value='<%=res.getString("agentName")%>' /></td>
					</tr>

					<tr>
						<td><label for="cPhone">Available Units</label></td>
						<td><input type="text" name="cPhone" value='<%=res.getString("comPhoneNumber")%>'/></td>
					</tr>
					
					<tr>
						<td><label for="agtPhone">Distributor ID</label></td>
						<td><input type="text" name="agtPhone" value='<%=res.getString("agtPhoneNumber")%>'/></td>
					</tr>
					
					<tr>
						<td><label for="email">Discount</label></td>
						<td><input type="email" name="email" value='<%=res.getString("email")%>'/></td>
					</tr>
					
					<tr>
						<td><label for="addr">Distributor ID</label></td>
						<td><input type="text" name="addr" value='<%=res.getString("address")%>'/></td>
					</tr>

					<% } %>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Update" /></td>
						<td><a href="DistributorController">Previous</a>
					</tr>
					
				</tbody>
			</table>
		</form>
</body>
</html>