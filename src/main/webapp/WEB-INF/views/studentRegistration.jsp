  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Registration page !</title>
</head>
<body background='<c:url value="/resources/images/index1.jpeg"></c:url>'>
<h3 style="color:black; text-align:center">Please fill the details below</h3>
<form action="processing" method="post">
    <div align="center">
    <label for="fname"><strong>Name:</strong></label><br>
    <input type="text" id="fname" name="name" placeholder="Start typing" required><br> 
    <label for="email"><strong>Email:</strong></label><br>
    <input type="text" id="Email" name="email"placeholder="Start typing"required><br>
    <label for="Mobile"><strong>Mobile:</strong></label><br>
    <input type="text" id="Mobile" name="mobile" placeholder="Start typing"required><br>
    <label for="Password"><strong>Password:</strong></label><br>
    <input type="password" id="Password" name="password"placeholder="Start typing" required="required" ><br>
    <label for="Re-Type"><strong>Re-Type:</strong></label><br>
    <input type="password" id="Re-Type" name="Re-Type"placeholder="Start typing"required><br>
    <input type="radio" id="male" name="gender" value="male" required="required">
    <label for="male"><strong>Male</strong></label><br>
    <input type="radio" id="female" name="gender" value="female" required="required">
    <label for="female"><strong>Female</strong></label><br>
    <input type="radio" id="other" name="gender" value="other" required="required">
    <label for="other"><strong>Other</strong></label><br>
    <input type="submit" name="submit" value="submit" onclick="return validate()">
      <% if(request.getAttribute("error") != null) { %>
        		<p style="color:red"> 
        		<%= request.getAttribute("error") %>
        		</p>
        		<% } 
        	session.setAttribute("error", null); %>
    </div>
    <style>
        div {text-align: center;}
    </style>
  </form> 
 
    <p style="text-align:center"><strong>Already have an account?</strong> <a href="studentLogin">Sign in</a></p> 
        <script type="text/javascript">
            function validate()
            {

                var password1=document.getElementById("Password");
                var password2=document.getElementById("Re-Type");
                var mobileNumber=document.getElementById("Mobile");
                var email = document.getElementById('Email');
                var password=document.getElementById("Password");
                var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                if(password1.value!=password2.value)
                {
                    alert("password doesn't match");
                    password1.focus();
    
                    return false;
                }
                
                else if(mobileNumber.value.length<10)
                	{
                		alert("Mobile Number Must be 10 digit");
                		return false;
                	}
                else if (!filter.test(email.value)) 
                {
                    alert('Please provide a valid email address');
                    email.focus;
                    return false;
                 }
                else if(password.value.length<=8)
                	{
                		alert("Password must be greater the 8 characters");
                		return false;
                	}
                
                else
                	{
                	return true;
                	}
            }
         
        </script>
</body>
</html>