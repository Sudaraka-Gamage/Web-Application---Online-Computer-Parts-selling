<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="DistributorController" method="GET" >
	
		<input type = "hidden" name="command" value="ADD"/>
		
		
		
    	<h1>Register Distributor</h1>
    	
    	<p>Add details of distributor here,please check before submit</p>
    	<hr>
		<table>
    		<tbody>
    			<tr>
			    	<td><label for="DistributorId"><b>Distributor ID</b></label></td>
			    	<td><input type="text" placeholder="Distributor ID" name="DistributorId" required></td>
				</tr>
				
				<tr>
			    	<td><label for="comName"><b>Company Name</b></label></td>
			    	<td><input type="text" placeholder="Company Name" name="comName" required></td>
				</tr>
				
				<tr>
			    	<td><label for="agtName"><b>Agent Name</b></label></td>
			    	<td><input type="text" placeholder="Agent Name" name="agtName"></td>
				</tr>
				
				<tr>	
					<td><label for="comPhone"><b>Company Contact Number </b></label></td>
			    	<td><input type="text" placeholder="+94*********" name="comPhone"></td>
				</tr>
				
				<tr>	
					<td><label for="agtPhone"><b>Agent Contact Number</b></label></td>
			    	<td><input type="text" placeholder="+94*********" name="agtPhone" required></td>
				</tr>
				
				<tr>	
					<td><label for="Email"><b>Email</b></label></td>
			    	<td><input type="email" placeholder="Enter Email" name="Email"></td>
				</tr>
				
				<tr>	
					<td><label for="addrs"><b>Address</b></label></td>
			    	<td><input type="text" placeholder="Enter Address" name="addrs"></td>
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