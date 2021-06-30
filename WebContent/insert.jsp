<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Staff Data</title>
</head>
<body>
<form action="insert" method="post" >
  
   <label for="idstaff"><b>Staff ID</b></label><br>
    <input type="text" name="idstaff" required>
	<br><br>
    <label for="firstName"><b>First Name</b></label><br>
    <input type="text" name="firstName" required>
	<br><br>
    <label for="lastName"><b>Last Name</b></label><br>
    <input type="text" name="lastName" required>
	<br><br>
    <label for="post"><b>Position</b></label><br>
  	<input type="text"  name="post" required>
    <br><br>
     <label for="PhoneNumber"><b>Phone Number</b></label><br>
    <input type="text"  name="PhoneNumber" required>
	<br><br>
	 <label for="email"><b>Email Address</b></label><br>
    <input type="email" name="email" required>
	<br><br>
	 <label for="address"><b>Address</b></label><br>
    <input type="text"name="address" required>
	<br><br>
	 <label for="password"><b>Password</b></label><br>
    <input type="password" name="password" required>
	<br><br>
	
		<div><button type="submit">Add</button></div>
</form>
</body>
</html>