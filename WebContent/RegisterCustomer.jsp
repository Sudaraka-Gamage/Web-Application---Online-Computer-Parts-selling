<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

</head>

<body>
	
	<form action="CustomerContoller" method="GET" >
	
		<input type = "hidden" name="command" value="ADD"/>
		
		
		
    	<h1>Register Distributor</h1>
    	
    	<p>Add details of Distributor here,please check before submit</p>
    	<hr>
		<table>
    		<tbody>
    			<tr>
			    	<td><label for="CustomerId"><b>CustomerId</b></label></td>
			    	<td><input type="text" placeholder="Customer ID" name="CustomerId" required></td>
				</tr>
				
				<tr>
			    	<td><label for="firstName"><b>First Name</b></label></td>
			    	<td><input type="text" placeholder="First Name" name="firstName" required></td>
				</tr>
				
				<tr>
			    	<td><label for="lastName"><b>Last Name</b></label></td>
			    	<td><input type="text" placeholder="Last Name" name="lastName"></td>
				</tr>
				
				<tr>	
					<td><label for="email"><b>Email</b></label></td>
			    	<td><input type="text" placeholder="Enter Email" name="email"></td>
				</tr>
				
				<tr>	
					<td><label for="phone"><b>Contact Number</b></label></td>
			    	<td><input type="text" placeholder="+94*********" name="phone" required></td>
				</tr>
				
				<tr>	
					<td><label for="phone"><b>Contact Number</b></label></td>
			    	<td><input type="text" placeholder="+94*********" name="phone" required></td>
				</tr>
				
				<tr>	
					<td><label for="phone"><b>Contact Number</b></label></td>
			    	<td><input type="text" placeholder="+94*********" name="phone" required></td>
				</tr>
					
			    	<div>
			      		<button type="submit">Submit</button>
			    	</div>
					<br>
					<div>
						<a href="DistributorController">Previous Page</a>
					</div>
					
				
			</tbody>
		</table>
	</form>
	
</body>

</html>