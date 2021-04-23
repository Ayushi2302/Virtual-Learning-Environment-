<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
<body background='<c:url value="/resources/images/index1.jpeg"></c:url>'>
	<h3 align="center">Admin Login</h3>
	<form action="adminController" method="post">
    <div style="text-align:center">
        <label for="Email"><strong>username:</strong></label><br>
        <input type="text" id="username" name="username" placeholder="Start typing" required><br>
        <label for="Password"><strong>password:</strong></label><br>
        <input type="password" id="password" name="password" placeholder="Start typing"required><br>
        <input type="submit" value="submit" style="background-color:lime;">
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