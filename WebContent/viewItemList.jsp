<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
		<div>
			<h2>Item Details</h2>
		</div>
	</div>

	<div>
	
		<div>
		
			<table>
			
				<tr>
					<th>Item ID</th>
					<th>Item Name</th>
					<th>Price</th>
					<th>Available Units</th>
					<th>Distributor ID</th>
					<th>Discount</th>
				</tr>
				
				<c:forEach var="tempItem" items="${ILIST}">
						
					<tr>
						<td> ${tempItem.ID} </td>
						<td> ${tempItem.name} </td>
						<td> ${tempItem.price} </td>
						<td> ${tempItem.units} </td>
						<td> ${tempItem.did} </td>
						<td> ${tempItem.discount} </td>
					</tr>
				
				</c:forEach>
				
			</table>
		
		</div>
	
	</div>

</body>
</html>