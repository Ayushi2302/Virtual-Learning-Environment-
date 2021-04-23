<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body background='<c:url value="/resources/images/index1.jpeg"></c:url>'>
<form action="deleting" method="post">
<div align="center">
<h3>Enter the detail</h3>

<label> Enter Email:</label>
<input type="text" name="email" required="required" placeholder="Enter email">
<input type="submit" name="delete" value="Delete" style="background-color: lime;">
   <% if(request.getAttribute("error") != null) { %>
        
        		<p style="color:red"> 
        		<%= request.getAttribute("error") %>
        		</p>
        		<% } 
        	session.setAttribute("error", null); %>
        	</div>
</form>
</body>
</html>