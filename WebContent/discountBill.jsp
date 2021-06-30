<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



   <br>

   <br>

   <p>YOUR DISCOUNT BILL IS</p>

    <%
    String id=request.getParameter("id"); 

	String prd=request.getParameter("product");
	
	   String date=request.getParameter("date");
	   
	   String qnty=request.getParameter("qty");

       String pr=request.getParameter("price");

       int quantity=Integer.parseInt(qnty);

       int price=Integer.parseInt(pr);

            int bill=Integer.parseInt(request.getParameter("bill"));

            int disc =((bill*30)/100);

            out.println(disc);

            int pay=bill-disc;

   %>
 <%
        
        
        Connection conn = null;

        Class.forName("com.mysql.jdbc.Driver");

        		
        			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/computer_shop?autoReconnect=true&useSSL=false","root","root");
        			Statement stat = conn.createStatement();
        		
        			stat.executeUpdate("insert into sales(idinvoice,productName,date,numOfItems,price,total) VALUES ('"+id+"', '"+prd+"', '"+date+"', '"+quantity+"', '"+price+"', '"+bill+"') ");
        	
        
        %>
                <jsp:forward page="billDisplay.jsp">

              <jsp:param name="ID" value="<%=id%>"/>
              <jsp:param name="prd" value="<%=prd%>"/>
              <jsp:param name="date" value="<%=date%>"/>
              <jsp:param name="qnty" value="<%=qnty%>"/>
              <jsp:param name="price" value="<%=pr%>"/>
               <jsp:param name="disc" value="<%=disc%>"/>
              <jsp:param name="pay" value="<%=pay%>"/>
              

              </jsp:forward>
</body>
</html>