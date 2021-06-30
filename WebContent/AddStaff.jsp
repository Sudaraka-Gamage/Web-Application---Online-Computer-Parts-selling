<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Staff</title>
</head>
<body>
<form action="StaffController" method="GET" >
	
		<input type = "hidden" name="command" value="ADD"/>
		
		
		
    	<h1>Register Staff</h1>
    	
    	<p>Add details of Staff here,please check before submit</p>
    	<hr>
		<table>
    		<tbody>
    			<tr>
			    	<td><label for="StaffId"><b>Staff ID</b></label></td>
			    	<td><input type="text" placeholder="Staff ID" name="StaffId" required></td>
				</tr>
				
				<tr>
			    	<td><label for="firstName"><b>First Name</b></label></td>
			    	<td><input type="text" placeholder="First Name" name="firstName" required></td>
				</tr>
				
				<tr>
			    	<td><label for="lastName"><b>Last Name</b></label></td>
			    	<td><input type="text" placeholder="Last Name" name="agtName"></td>
				</tr>
				
				<tr>	
					<td><label for="phone"><b>Contact Number </b></label></td>
			    	<td><input type="text" placeholder="+94*********" name="phone"></td>
				</tr>
				
				<tr>	
					<td><label for="rept"><b>Post</b></label></td>
			    	<td><input type="text" placeholder="Ex: Manager/Cashier" name="rept" required></td>
				</tr>
				
				<tr>	
					<td><label for="Email"><b>Email</b></label></td>
			    	<td><input type="email" placeholder="Enter Email" name="Email"></td>
				</tr>
				
				<tr>	
					<td><label for="addrs"><b>Address</b></label></td>
			    	<td><input type="text" placeholder="Enter Address" name="addrs"></td>
				</tr>
				
				<tr>	
					<td><label for="password"><b>Password</b></label></td>
			    	<td><input type="password" placeholder="Password" name="password"></td>
				</tr>
					
			    	<div>
			      		<button type="submit">Submit</button>
			    	</div>
					<br>
					<div>
						<a href="StaffController">Previous Page</a>
					</div>
					
				
			</tbody>
		</table>
	</form>
	

</body>
</html>