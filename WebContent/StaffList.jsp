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
			<h2>Add / Remove / Update Staff</h2>
		</div>
	</div>

	<div>
	
		<div>
			
			<input type="button" value="Add Item" 
				   onclick="window.location.href='AddStaff.jsp'; return false;"
			/>
			
			<table>
			
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Post</th>
					<th>Contact</th>
					<th>Email</th>
					<th>Address</th>
					<th>Actions</th>
				</tr>
				
				<c:forEach var="tempStaff" items="${SLIST}">
												
					<tr>
						<td> ${tempStaff.ID} </td>
						<td> ${tempStaff.firstName} </td>
						<td> ${tempStaff.lastName} </td>
						<td> ${tempStaff.rep} </td>
						<td> ${tempStaff.phone} </td>
						<td> ${tempStaff.mail} </td>
						<td> ${tempStaff.address} </td>
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