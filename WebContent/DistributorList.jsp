<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Distributor</title>
</head>
<body>
<div>
		<div>
			<h2>Add / Remove / Update Distributor</h2>
		</div>
	</div>

	<div>
	
		<div>
			
			<input type="button" value="Add Item" 
				   onclick="window.location.href='AddDistributor.jsp'; return false;"
			/>
			
			<table>
			
				<tr>
					<th>ID</th>
					<th>Company Name</th>
					<th>Agent Name</th>
					<th>Company Contact</th>
					<th>Agent Contact</th>
					<th>Email</th>
					<th>Address</th>
					<th>Actions</th>
				</tr>
				
				<c:forEach var="tempDistributor" items="${DLIST}">
					
							
					<c:url var="tempLink" value="UpdateDistributor.jsp">
						<c:param name="id" value="${tempDistributor.ID}" />
					</c:url>

					
					<c:url var="deleteLink" value="deleteDistributor.jsp">
						<c:param name="id" value="${tempDistributor.ID}" />
					</c:url>
															
					<tr>
						<td> ${tempDistributor.ID} </td>
						<td> ${tempDistributor.company} </td>
						<td> ${tempDistributor.agent} </td>
						<td> ${tempDistributor.comPhone} </td>
						<td> ${tempDistributor.agentPhone} </td>
						<td> ${tempDistributor.mail} </td>
						<td> ${tempDistributor.address} </td>
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