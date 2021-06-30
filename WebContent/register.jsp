<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Staff Register</title>
</head>
	<body>
	<form action="Register" method="post">
 		<div>
    	<h1>Sign Up</h1>
   			<p>Please fill in this form to create an account.</p>
    <br>

    <label for="StaffID"><b>Staff ID</b></label><br>
    <input type="text" placeholder="Enter Staff ID Number " name="StaffID" required>
	<br><br>
    <label for="firstName"><b>First Name</b></label><br>
    <input type="text" placeholder="Enter First Name" name="firstName" required>
	<br><br>
    <label for="lastName"><b>Last Name</b></label><br>
    <input type="text" placeholder="Enter Last Name" name="lastName" required>
	<br><br>
    <label for="post"><b>Position</b></label><br>
  	<input type="text" placeholder="Enter Your Position" name="post" required>
    <br><br>
     <label for="phone"><b>Phone Number</b></label><br>
    <input type="text" placeholder="Mobile / Land" name="phone" required>
	<br><br>
	 <label for="email"><b>Email Address</b></label><br>
    <input type="email" placeholder="sample@sample.com" name="email" required>
	<br><br>
	 <label for="address"><b>Address</b></label><br>
    <input type="text" placeholder="Number,Street,City,ZIP Code" name="address" required>
	<br><br>
	 <label for="password"><b>Password</b></label><br>
    <input type="password" placeholder="Enter password" name="password" required>
	<br><br>
	

    <div>
      <button type="submit">Sign Up</button>
      <br>
      <a href="login.jsp">Back to Login</a>
    </div>
    
  </div>
</form>
</body>
</html>