<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Book Course</title>
</head>
<body background='<c:url value="/resources/images/VLE.gif"></c:url>'>

<form action="course" method="post">
<h3 align="center">Enter details for booking</h3>
<div align="center">
 		<label for="Name"><strong>Name:</strong></label><br>
        <input type="text" name="studentName" placeholder="Enter your name" required><br> 
        <label for="courseName"><strong>Course Name:</strong></label><br>
 <select name="courseName" >       
<option>Java</option>       
<option>C++</option>       
<option>Oracle</option>   
<option>Python</option> 
</select>            
        <br>
        
        
  
        <label for="Email"><strong>Email:</strong></label><br>
        <input type="text" id="Email" name="email" placeholder="Start typing" required><br> 
        <label for="Password"><strong>Password:</strong></label><br>
        <input type="password" id="Password" name="password" placeholder="Start typing"required><br>
        <input type="submit" value="Book Course" style="background-color: lime;">
        <p align="center">Do you want to book course?</p>
        <a  href="Home"><h3 align="center">Go to home page</h3></a>
 <% if(request.getAttribute("error") != null) { %>
        
        		<p style="color:red"> 
        		<%= request.getAttribute("error") %>
        		</p>
        		<% } 
        	session.setAttribute("error", null); %>
        	
        	<a href="studentRegistration" > Register </a>
</div>

</form>
</body>
</html>