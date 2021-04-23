<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body, h1, h2, h3, h4, h5 {
	font-family: "Poppins", sans-serif
}

body {
	font-size: 16px;
}

.w3-half img {
	margin-bottom: -6px;
	margin-top: 16px;
	opacity: 0.8;
	cursor: pointer
}

.w3-half img:hover {
	opacity: 1
}
</style>
<body>

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding"
		style="z-index: 3; width: 300px; font-weight: bold;" id="mySidebar">
		<br> <a href="javascript:void(0)" onclick="w3_close()"
			class="w3-button w3-hide-large w3-display-topleft"
			style="width: 100%; font-size: 22px">Close Menu</a>
		<div class="w3-container"></div>
		<div class="w3-bar-block">
			<a href="pregister" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Register</a> <a
				href="plogin" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Login</a> <a
				href="contact" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Contact Us</a> <a
				href='edit-profile/${email}' onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Edit Profile</a> <a
				href="forgot-password" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Change Password</a> <a
				href="userLogout" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Log Out</a>

		</div>
	</nav>
<head>
<meta charset="ISO-8859-1">

<title>Welcome</title>
</head>
<body>

	<div class="w3-main" style="margin-left: 340px; margin-right: 40px">

		<h1>Welcome....</h1>

		<br>
		<div class="w3-row-padding w3-grayscale">
			<div class="w3-col m4 w3-margin-bottom">
				<div class="w3-light-grey">
					<div class="w3-container">

						<a href="student-form">Student Details</a>
					</div>
				</div>
			</div>
			<br>
			<br>
			<br>
			<div class="w3-col m4 w3-margin-bottom">
				<div class="w3-light-grey">
					<div class="w3-container">

						<a href="student-marks">Student Marks</a>
					</div>
				</div>
			</div>
			<br>
			<br>
			<br>
			<div class="w3-col m4 w3-margin-bottom">
				<div class="w3-light-grey">
					<div class="w3-container">

						<a href="student-attendance">Student Attendance</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>