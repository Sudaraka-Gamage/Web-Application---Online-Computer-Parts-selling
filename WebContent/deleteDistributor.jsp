<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
</head>
<body>
<% 
try{

String idDistributor = request.getParameter("id");
//out.println(n);
          
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?autoReconnect=true&useSSL=false","root","root");
         Statement stmt = con.createStatement();
         
        stmt.execute("DELETE FROM distributor WHERE iddistributor='"+idDistributor+"'");
        out.println("Recored Deleted");
           
}catch(Exception e){}
    
     %>
     <br><br>
     <div>
		<a href="DistributorController">Previous Page</a>
	</div>


</body>
</html>