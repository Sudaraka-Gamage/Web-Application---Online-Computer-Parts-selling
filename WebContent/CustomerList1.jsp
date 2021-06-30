<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customers</title>
</head>
<body>
<div>
		<div>
			<h2>Add / Remove / Update Customer</h2>
		</div>
	</div>

	<div>
	
		<div>
			
			<input type="button" value="Add Item" 
				   onclick="window.location.href='RegisterCustomer.jsp'; return false;"
			/>
			
			<table>
			
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Phone Number</th>
					<th>Actions</th>
				</tr>
				
				<c:forEach var="tempCustomer" items="${CLIST}">
					
							
					<c:url var="tempLink" value="UpdateCus.jsp">
						<c:param name="id" value="${tempCustomer.ID}" />
					</c:url>

					
					<c:url var="deleteLink" value="deleteCustomer.jsp">
						<c:param name="id" value="${tempCustomer.ID}" />
					</c:url>
															
					<tr>
						<td> ${tempCustomer.ID} </td>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
						<td> ${tempCustomer.phone} </td>
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