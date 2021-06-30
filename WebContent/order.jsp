<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>order</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>My Example</title>

<!-- CSS -->
<style>
.myForm {
font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
font-size: 0.8em;
width: 20em;
padding: 1em;
border: 1px solid #ccc;
}

.myForm * {
box-sizing: border-box;
}

.myForm fieldset {
border: none;
padding: 0;
}

.myForm legend,
.myForm label {
padding: 0;
font-weight: bold;
}

.myForm label.choice {
font-size: 0.9em;
font-weight: normal;
}

.myForm input[type="text"],
.myForm input[type="tel"],
.myForm input[type="email"],
.myForm input[type="datetime-local"],
.myForm select,
.myForm textarea {
display: block;
width: 100%;
border: 1px solid #ccc;
font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
font-size: 0.9em;
padding: 0.3em;
}

.myForm textarea {
height: 100px;
}

.myForm button {
padding: 1em;
border-radius: 0.5em;
background: #eee;
border: none;
font-weight: bold;
margin-top: 1em;
}

.myForm button:hover {
background: #ccc;
cursor: pointer;
}
</style>

</head>
<body>
<form class="myForm" method="post" action="orderconnection">

<p>
<label>IDorder
<input type="IDorder" name="IDorder" required>
</label> 
</p>
 
<p>
<label>IID
<input type="IID" name="IID">
</label>
</p>
 

<p>
<label>DID
<input type="DID" name="DID">
</label>
</p>

<p>
<label>noOfItems
<input type="noOfItems" name="noOfItems" required>
</label> 
</p>

<p>
<label> Date
<input type="text" name="Date" required>
</label>
</p>
 




<p><input type="submit" value="Submit"/></p>
<input type=Submit name="submit" value="Submit">
</form>
</body>
</html>
<%

String sub = request.getParameter("submit");
String id = request.getParameter("IDorder");
String idd = request.getParameter("IID");
String did = request.getParameter("DID");
String noitem = request.getParameter("noOfItems");
String date = request.getParameter("Date");

if(sub == "Submit"){
%>

 <jsp:forward page="orderDisplay.jsp">

              <jsp:param name="ID" value="<%=id%>"/>
              <jsp:param name="iid" value="<%=idd%>"/>
              <jsp:param name="did" value="<%=did%>"/>
              <jsp:param name="noitem" value="<%=noitem%>"/>
              <jsp:param name="date" value="<%=date%>"/>

              </jsp:forward>
<%} %>              