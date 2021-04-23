<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href='<c:url value="/resources/css/style.css"></c:url>'>
<style type="text/css" >
body::selection {
	background-image:url("/resources/images/VLE.gif");
}
</style>
</head>
<body background='<c:url value="/resources/images/VLE.gif"></c:url>'>
<div style="text-align:center"><h1 style="color:black"> Welcome to Virtual Learning Environment</h1></div>
    <div class="scrollmenu" align="left"> 

        <a href="studentRegistration" style="color: black;"><h3>Student</h3></a>
		 <a href="Lectures" style="color: black;"><h3>Courses</h3></a>
         <a href="facultyRegister" style="color:black;"><h3>Faculties</h3></a>
         <a href="pregister" style="color: black;"><h3>Parent</h3></a>
        <a href="adminWork" style="color: black;"><h3>Admin</h3></a> 
      </div> 
      <marquee behavior="alternate" direction="left"><h2 style="color: blue">Best Platform in india for virtual learning</h2></marquee>
	<marquee behavior="alternate" direction="right"><h2 style="color: green">India's best trainers are training here</h2></marquee>
	<marquee behavior="alternate" direction="left"><h2 style="color: black">Access to coursework from anywhere at any time</h2></marquee>
	
	<marquee behavior="alternate" direction="right"><h2 style="color: yellow">Access to high quality video lectures and notes</h2></marquee>
	<marquee behavior="alternate" direction="left"><h2 style="color: red">Get proper certification after completion of course</h2></marquee>
</body>
</html>