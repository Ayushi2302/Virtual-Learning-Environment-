<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ page session="true" %>
      <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href='<c:url value="/resources/css/style.css"></c:url>'>
	
</head>
<body class="bclass" background='<c:url value="/resources/images/index1.jpeg"></c:url>'>
	<h1 style="color:black" align="center">Please login</h1>
<form action="loginProcessing" method="post">
    <div align="center">
        <label for="Email"><strong>Email:</strong></label><br>
        <input type="text" id="Email" name="email" placeholder="Start typing" required><br> 
        <label for="Password"><strong>Password:</strong></label><br>
        <input type="password" id="Password" name="password" placeholder="Start typing"required><br>
        <input type="submit" value="submit" style="background-color: lime;"> 
        <input type="reset" value="reset password" onclick="openWindow()" style="background-color:red">
        <% if(request.getAttribute("error") != null) { %>
        
        		<p style="color:red"> 
        		<%= request.getAttribute("error") %>
        		</p>
        		<% } 
        	session.setAttribute("error", null); %>
        	</div>
</form>
<p style="text-align:center"><strong>Have you registered ?</strong><a href="studentRegistration"> Get Register</a></p>
<script type="text/javascript">
function openWindow()
{
	window.open("Reset");
	}
</script>
</body>
</html>