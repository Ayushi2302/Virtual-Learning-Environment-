<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Add Questions</title>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">Add the questions</h1>
				<form action="handle-question" method="post">

					<div class="form-group">
						<label for="questionno">Question No.(*)</label><input type="text"
							class="form-control" id="questionno" aria-describedby="emailHelp"
							name="questionNo" placeholder="Enter the question number"
							required="required">
					</div>

					<div class="form-group">
						<label for="name">Subject Name(*)</label><input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="subjectName" placeholder="Enter the subject name"
							required="required">
					</div>

					<div class="form-group">
						<label for="questionDescription">Question Description(*)</label>
						<textarea class="form-control" name="questionDescription"
							id="description" rows="4"
							placeholder="Enter the question description" required="required"></textarea>
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/home"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add
							Question</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>