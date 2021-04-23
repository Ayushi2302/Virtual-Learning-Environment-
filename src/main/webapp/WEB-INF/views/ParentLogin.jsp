<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
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
    <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
    <a href="pregister" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Register</a> 
    <a href="plogin" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Login</a> 
  </div>
</nav>

<head>
<meta charset="ISO-8859-1">

<title>Login - User</title>
<style>
    .error {
        color: red; font-weight: bold;
    }
</style>
</head>
<body>

<div class="w3-main" style="margin-left:340px;margin-right:40px">

	
		<br><br><br>
		<div class="container">
				<div class="row justify-content-center">
					<div class="col-sm-4">
						<div class="login-panel">
						<h1>Login</h1>
							<form:form action="loginProcess"  method="post" modelAttribute="getUser">
								<div class="form-group">
								<label>Enter Email</label>
								<form:input path="email" cssClass="form-control label" placeholder="Enter Email"/>
								<br>
								<form:errors path="email" cssClass="error"/>
								
							</div>
							<div class="form-group">
								<label>Enter password</label>
								<form:password path="pwd" cssClass="form-control label" placeholder="Min. Of 8 Characters"/>
								<br>
								<form:errors path="pwd" cssClass="error"/>
							</div>
							<button type="submit" class="btn cust-btn form-control label">SUBMIT</button>
							</form:form>
							<a href="forgot-password">Forgot Password ?</a>
						</div>
					</div>
				</div>
			</div>	
</div>
			<br><br><br>
		

</body>
</html>