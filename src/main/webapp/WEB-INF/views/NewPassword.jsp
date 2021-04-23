<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Faculty Details</title>
</head>
<style type="text/css">
body {
	background: linear-gradient(to right, #014d6f 10%, #2b8e8b);
}

h1 {
	color: white;
	text-align: center;
	margin-bottom: 30px;
}
</style>

</head>
<body>
	
		<h1>Your Email is ${faculty.email}</h1>
		<h1>Your New Password is ${faculty.password}</h1>
	


	<div class="btn">
		<div class="inner"></div>
		<button style="margin: auto; text-align: center;" type="submit">Go
			to Login Page</button>
		<a href="/VirtualLearning/login"></a>
	</div>
</body>
</html>
