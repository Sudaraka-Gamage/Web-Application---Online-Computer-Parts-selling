<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Item</title>
</head>
<body>
<form action="ItemController" method="GET" >
	
		<input type = "hidden" name="command" value="ADD"/>
		
		
		
    	<h1>Add Item</h1>
    	
    	<p>Add details of item here,please check before submit</p>
    	<hr>
		<table>
    		<tbody>
    			<tr>
			    	<td><label for="ItemId"><b>Item ID</b></label></td>
			    	<td><input type="text" placeholder="Item ID" name="ItemId" required></td>
				</tr>
				
				<tr>
			    	<td><label for="itemName"><b>Item Name</b></label></td>
			    	<td><input type="text" placeholder="Item Name" name="itemName" required></td>
				</tr>
				
				<tr>
			    	<td><label for="price"><b>Price</b></label></td>
			    	<td><input type="text" placeholder="Price" name="price"></td>
				</tr>
				
				<tr>	
					<td><label for="units"><b>Units</b></label></td>
			    	<td><input type="text" placeholder="Available Units" name="units"></td>
				</tr>
				
				<tr>	
					<td><label for="dID"><b>Distributor ID</b></label></td>
			    	<td><input type="text" placeholder="DID" name="dID" required></td>
				</tr>
				
				<tr>	
					<td><label for="discount"><b>Discount Precentage</b></label></td>
			    	<td><input type="text" placeholder="%" name="discount" required></td>
				</tr>
					
			    	<div>
			      		<button type="submit">Submit</button>
			    	</div>
					<br>
					<div>
						<a href="ItemController">Previous Page</a>
					</div>
					
				</tr>
			</tbody>
		</table>
	</form>
	
</body>
</body>
</html>