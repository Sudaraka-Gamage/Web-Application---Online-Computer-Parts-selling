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
			<h2>Add / Remove / Update Item</h2>
		</div>
	</div>

	<div>
	
		<div>
		
			<input type="button" value="Add Item" 
				   onclick="window.location.href='AddItem.jsp'; return false;"
			/>
			
			<table>
			
				<tr>
					<th>Item ID</th>
					<th>Item Name</th>
					<th>Price</th>
					<th>Available Units</th>
					<th>Distributor ID</th>
					<th>Discount</th>
					<th>Actions</th>
				</tr>
				
				<c:forEach var="tempItem" items="${ILIST}">
						
					<c:url var="tempLink" value="UpdateItem.jsp">
						<c:param name="id" value="${tempItem.ID}" />
					</c:url>

						
					<c:url var="deleteLink" value="deleteItem.jsp">
						<c:param name="id" value="${tempItem.ID}" />
					</c:url>
															
					<tr>
						<td> ${tempItem.ID} </td>
						<td> ${tempItem.name} </td>
						<td> ${tempItem.price} </td>
						<td> ${tempItem.units} </td>
						<td> ${tempItem.did} </td>
						<td> ${tempItem.discount} </td>
						<td> 
							<a href="${tempLink}">Update</a> 
							 | 
							<a href="${deleteLink}">Delete</a>	
						</td>
					</tr>
				
				</c:forEach>
				
			</table>
		
		</div>
	
	</div>

</body>
</html>