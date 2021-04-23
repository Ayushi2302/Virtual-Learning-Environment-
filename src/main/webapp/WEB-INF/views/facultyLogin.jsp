<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Login Page</title>
<meta charset="utf-8">
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>

<style>
{
margin:0;
padding:0;
outline:none;
box-sizing:border-box;
font-family:arial;
}
body {
	height: 100vh;
	width: 100%;
	background: linear-gradient(to right, #014d6f 10%, #2b8e8b);
}

.show-btn {
	background-color: rgba(255, 255, 255, 0.6);
	padding: 10px 20px;
	font-size: 20px;
	font-weight: 500;
	color: #fff;
	cursor: pointer;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.show-btn, .container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

input[type="checkbox"] {
	display: none;
}

.container {
	display: none;
	background: #fff;
	width: 350px;
	padding: 30px;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
}

#show:checked ~ .container {
	display: block;
}

.container .close-btn {
	position: absolute;
	right: 20px;
	top: 15px;
	font-size: 18px;
	cursor: pointer;
}

.container .close-btn:hover {
	color: #000;
}

.container .text {
	font-size: 35px;
	font-weight: 600;
	text-align: center;
}

.container form {
	margin-top: -20px;
}

.container form .data {
	height: 45px;
	width: 100%;
	margin: 40px 0;
}

form .data input {
	height: 100%;
	width: 100%;
	padding-left: 10px;
	font-size: 17px;
	border: 1px solid silver;
	font-weight: bold;
}

form .data input:focus {
	border-color: orange;
	border-bottom-width: 2px;
}

form .forgot-pass {
	margin-top: -8px;
}

form .forgot-pass a {
	color: #3498db;
	text-decoration: none;
}

form .forgot-pass a:hover {
	text-decoration: underline;
}

form .btn {
	margin: 30px 0;
	height: 45px;
	width: 100%;
	position: relative;
	overflow: hidden;
}

form .btn .inner {
	height: 100%;
	width: 300%;
	position: absolute;
	left: -100%;
	z-index: -1;
	background: linear-gradient(to right, #014d6f 10%, #2b8e8b);
	transition: all 0.4s;
}

form .btn:hover .inner {
	left: 0;
}

form .btn button {
	height: 100%;
	width: 100%;
	background: none;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	text-transform: uppercase;
	letter-spacing: 1px;
	cursor: pointer;
}

form .signup-link {
	text-align: center;
}

form .signup-link a {
	color: #3498db;
	text-decoration: none;
}

form .signup-link a:hover {
	text-decoration: underline;
}
</style>

<body>
	 <div class="center">
		<input type="checkbox" id="show"><label for="show"
			class="show-btn">Login Now</label> 
		<div class="container">
			<label for="show" class="close-btn fas fa-times" title="close"></label>
			<div class="text">Login Now</div>
			<form action="loginprocess" method="post">
				<div class="data">

					<input type="text" name="email" placeholder="Enter Your Email"
						required>
				</div>
				<div class="data">

					<input type="password" name="password"
						placeholder="Enter Your Password" required>
				</div>
				<div class="forgot-pass">
					<a href="forgotPassword">Reset Password?</a>
				</div>
				<div class="btn">
					<div class="inner"></div>
					<button type="submit">login</button>
				</div>
				<div class="signup-link">
					Not a member? <a href="facultyRegister">Signup Now</a>
				</div>

				<%
				if (request.getAttribute("error") != null) {
				%>

				<p style="color: red">
					<%=request.getAttribute("error")%>
				</p>
				<%
				}
				session.setAttribute("error", null);
				%>
			</form>
		</div>
	</div>
</body>
</html>

