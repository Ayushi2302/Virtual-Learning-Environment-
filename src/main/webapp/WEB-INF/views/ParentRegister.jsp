<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    
    
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<body>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
  </div>
  <div class="w3-bar-block">
    <a href="pregister" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Register</a> 
    <a href="plogin" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Login</a> 
        <a href="contact" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Contact Us</a>   
  </div>
</nav>

<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
    .error {
        color: red; font-weight: bold;
    }
</style>
</head>
<body>
<div class="w3-main" style="margin-left:340px;margin-right:40px">

	<div class="container">
		<div class="row justify-content-center">
				<div class="col-md-5">
				<div class="login-panel">
						<h1>Register</h1>
						<br>
						<form:form method="post" modelAttribute="user" action="performRegistration">
							
							<div class="form-group">
								<label>Your email</label>
								<form:input path="email" cssClass="form-control label" placeholder="Enter email"/>
								<br>
								<form:errors path="email" cssClass="error"/>
								
							</div>
							<div class="form-group">
								<label>Your name</label>
								<form:input path="name" cssClass="form-control label" placeholder="Full name"/>
							<form:errors path="name" cssClass="error"/>
								
							</div>
							<div class="form-group">
								<label>Date of birth</label>
								<form:input type="date" path="dob" cssClass="form-control label" placeholder="DD/MM/YYYY"/>
							<form:errors path="dob" cssClass="error"/>
								
							</div>
							<div class="form-group">
								<label>Gender</label>
								<form:select path = "gender" cssClass="form-control label">
									<form:option value = "unknown" label = "Select"/>
									<form:options items="${gender}"/>
								</form:select>
							<form:errors path="gender" cssClass="error"/>
								
							</div>
							<div class="form-group">
								<label>Choose a security question</label>
								<form:select path = "question1" cssClass="form-control label">
									<form:options items="${question1}"/>
								</form:select>
						<form:errors path="question1" cssClass="error"/>
								
							</div>
							<div class="form-group">
								<label>Answer</label>
								<form:input path="answer1" cssClass="form-control label" placeholder="Answer"/>
							<form:errors path="answer1" cssClass="error"/>
								
							</div>
							<div class="form-group">
								<label>Choose a security question</label>
								<form:select path = "question2" cssClass="form-control label">
									<form:options items="${question2}"/>
								</form:select>
							<form:errors path="question2" cssClass="error"/>
								
							</div>
							<div class="form-group">
								<label>Answer</label>
								<form:input path="answer2" cssClass="form-control label" placeholder="Answer"/>
							<form:errors path="answer2" cssClass="error"/>
								
							</div>
							<div class="form-group">
								<label>Choose a password</label>
								<form:password path="pwd" cssClass="form-control label" placeholder="Min. Of 8 Characters"/>
						<form:errors path="pwd" cssClass="error"/>
								
							</div>
							<div class="form-group">
								<label>Confirm password</label>
								<form:password path="conf" cssClass="form-control label" placeholder="Min. Of 8 Characters"/>
							<form:errors path="conf" cssClass="error"/>
								
							</div>
							<button type="submit" class="btn cust-btn form-control label">REGISTER</button>
						</form:form>
						</div>
				</div>
		</div>
		<h1>${param.msg} </h1>
		
	</div>
<h2>${param.msg1} </h2>
</div>

</body>
</html>