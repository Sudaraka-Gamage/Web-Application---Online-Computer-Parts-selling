<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {font-family: Comic Sans MS, Helvetica, sans-serif;}
* {box-sizing: border-box}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
 }

input[type=Reset] {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
 

input{
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

table, th, td {
    border: 1px solid black;
    border-collapse: collapse;}
</style>
</head>
<body>
<center>
<iframe src ="ItemViewController" style = "heigh:1000px; width:1000px">
</center>
</iframe>
<form action="calcBill.jsp">
	<table>
    		<tbody>
    			<tr>
			    	<td><label for="id"><b>Invoice ID</b></label></td>
			    	<td><input type="text" name="id" required></td>
				</tr>
    			<tr>
			    	<td><label for="product"><b>Product Name</b></label></td>
			    	<td><input type="text" name="product" required></td>
				</tr>
				<tr>
			    	<td><label for="date"><b>Date</b></label></td>
			    	<td><input type="text" placeholder="2018-01-01" name="date" required></td>
				</tr>
				
				<tr>
			    	<td><label for="qty"><b>Quantity</b></label></td>
			    	<td><input type="text" name="qty" required></td>
				</tr>
				
				<tr>
			    	<td><label for="price"><b>Price</b></label></td>
			    	<td><input type="text" name="price"></td>
				</tr>
			</tbody>
	</table>
	
	<input type="submit" value="SUBMIT" />

  	<input type="Reset" value="Reset" />
</form>
</body>
</html>