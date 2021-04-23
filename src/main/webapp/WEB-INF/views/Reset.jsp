<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Reset password</title>
<link rel="stylesheet" href="style.css">
</head>
<body background='<c:url value="/resources/images/VLE.gif"></c:url>'>
<h3 align="center"> Please fill the details</h3>
	<form action="resetProcessing" method="post">
	<div class="resetDiv" align="center">
	     <label for="Email"><strong>email:</strong></label><br>
        <input type="text" id="Email" name="email" placeholder="Start typing" required><br> 
        <label for="Password"><strong>Password:</strong></label><br>
        <input type="password" id="Password" name="password" placeholder="Start typing"required><br>
         <label for="Password"><strong>New Password:</strong></label><br>
        <input type="password" id="newPassword" name="newPassword" placeholder="Start typing"required><br>
        <div style="color:red"> <input type="submit" value="submit">
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