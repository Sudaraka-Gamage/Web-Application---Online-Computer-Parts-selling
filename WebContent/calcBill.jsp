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
<title>Insert title here</title>
</head>
<body>

   <%   String id=request.getParameter("id"); 

		String prd=request.getParameter("product");
		
		   String date=request.getParameter("date");
		   
          String qnty=request.getParameter("qty");

          String pr=request.getParameter("price");

          int quantity=Integer.parseInt(qnty);

          int price=Integer.parseInt(pr);

          int bill=price*quantity;

          if (bill>1000)

          {

   %>  

              <jsp:forward page="discountBill.jsp">

              <jsp:param name="bill" value="<%=bill%>"/>

              </jsp:forward>

        <%

         }

           else

        {

           out.println(bill);
       }
		
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
              <jsp:param name="price" value="<%=price%>"/>
              
              <jsp:param name="bill" value="<%=bill%>"/>
              

              </jsp:forward>
</body>
</html>
