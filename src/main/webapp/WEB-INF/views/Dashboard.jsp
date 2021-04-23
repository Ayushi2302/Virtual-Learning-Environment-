<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>welcome page</title>
<%-- <link href='<c:url value="/resources/css/style.css"></c:url>' rel="stylesheet"> --%>
</head>
<body background='<c:url value="/resources/images/VLE.gif"></c:url>'>
	<div class="dashDiv">
	<div style="text-align:center"><h1 style="color: red"> Welcome to Virtual Learning Environment</h1></div>
	<marquee behavior="alternate" direction="left"><h2 style="color: blue">Best Platform in india for virtual learning</h2></marquee>
	<marquee behavior="alternate" direction="right"><h2 style="color: green">India's best trainers are training here</h2></marquee>
	<marquee behavior="alternate" direction="left"><h2 style="color: black">Access to coursework from anywhere at any time</h2></marquee>
	
	<marquee behavior="alternate" direction="right"><h2 style="color: yellow">Access to high quality video lectures and notes</h2></marquee>
	<marquee behavior="alternate" direction="left"><h2 style="color: red">Get proper certification after completion of course</h2></marquee>
	</div>
	<a href="facultyRegister"><h1 style="color:red">Faculty Register</h1></a>
	<a href="https://en.wikipedia.org/wiki/Virtual_learning_environment"><h3 style="text-align:center">About virtual learing environment</h3></a>
		<a href="studentRegistration"><h1 style="color:red">Student Register</h1></a>
	
	<a href="studentLogin"><h1 style="color:red">Student Login</h1></a>
	<a href="pregister"><h1 style="color:red">Parent Register</h1></a>
	<a href="plogin"><h1 style="color:red">Parent Login</h1></a>

	<a href="adminLogin"><h1 style="color:red">Admin Login</h1></a>

	<a href="facultyLogin"><h1 style="color:black;text-align:right">Faculty Login</h1></a>
</body>
</html>