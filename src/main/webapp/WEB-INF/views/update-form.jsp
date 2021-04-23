<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Update Form</title>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<h1 class="text-center mb-3">Change the questions</h1>
				<form action="${pageContext.request.contextPath }/handle-question" method="post">
				
				   <div class="form-group">
						<label for="questionno">Question No.</label><input type="text"
							class="form-control" id="questionno" aria-describedby="emailHelp"
							name="questionNo" placeholder="Enter the question number"
							value="${question.questionNo }">
					</div>

					<div class="form-group">
						<label for="name">Subject Name</label><input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="subjectName" placeholder="Enter the subject name"
							value="${question.subjectName }">
					</div>
					
					<div class="form-group">
					    <label for="questionDescription"></label>
					    <textarea class="form-control" name="questionDescription" id="description"
					    rows="4" placeholder="Enter the question description">${question.questionDescription }
					    </textarea>
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/index"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>