<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">

<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins">
<head>
<title>Virtual Learning</title></head>
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
			<a href="#" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Home</a> <a
				href="pregister" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Register</a> <a
				href="plogin" onclick="w3_close()"
				class="w3-bar-item w3-button w3-hover-white">Login</a>
		</div>
	</nav>

	<!-- Top menu on small screens -->
	<header
		class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
		<a href="javascript:void(0)" class="w3-button w3-red w3-margin-right"
			onclick="w3_open()">☰</a> <span>Virtual Learning Platform</span>
	</header>

	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large" onclick="w3_close()"
		style="cursor: pointer" title="close side menu" id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 340px; margin-right: 40px">

		<!-- Header -->
		<div class="w3-container" style="margin-top: 80px" id="showcase">
			<h1 class="w3-jumbo">
				<strong>Welcome To Virtual Learning Site...</strong>
			</h1>
			<h1 class="w3-xxxlarge w3-text-red">
				<strong>Experience The Easy Way To Learn</strong>
			</h1>
			<hr style="width: 50px; border: 5px solid red" class="w3-round">
		</div>





		<!-- The Team -->
		<h1 class="w3-xxxlarge w3-text-red">
			<strong>Our Team</strong>
		</h1>
		<hr style="width: 50px; border: 5px solid blue" class="w3-round">

		<div class="w3-row-padding w3-grayscale">
			<div class="w3-col m4 w3-margin-bottom">
				<div class="w3-light-grey">
					<div class="w3-container">
						<h3>Hari</h3>
						<p class="w3-opacity">Member 1</p>

					</div>
				</div>
			</div>
			<div class="w3-col m4 w3-margin-bottom">
				<div class="w3-light-grey">
					<div class="w3-container">
						<h3>Abhishek</h3>
						<p class="w3-opacity">Member 2</p>
					</div>
				</div>
			</div>
			<div class="w3-col m4 w3-margin-bottom">
				<div class="w3-light-grey">
					<div class="w3-container">
						<h3>Ayushi</h3>
						<p class="w3-opacity">Member 3</p>
					</div>
				</div>
			</div>
		</div>





		<!-- End page content -->
	</div>

	<!-- W3.CSS Container -->


</body>
</html>
