<!DOCTYPE>
<html lang="en">
<head>
<title>List of questions</title>
<%@ include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body >
	<div class="container mt-3">

		<div class="row">

			<div class="col-md-12">

				<h1 class="text-center mb-3">Virtual Learning Environment</h1>

				<table class="table">
				<caption></caption>
					<thead class="thead-dark">
						<tr>
							<th scope="col">Question No.</th>
							<th scope="col">Subject Name</th>
							<th scope="col">Question Description</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					     <c:forEach items="${questions }" var="q">
						<tr>
							<th scope="row">${q.questionNo }</th>
							<td>${q.subjectName }</td>
							<td>${q.questionDescription }</td>
							<td>
							<a href="delete/${q.questionNo }"><em class="fas fa-trash-alt" style="font-size: 20px;"></em></a>
							<a href="update/${q.questionNo }"><em class="fas fa-pen-nib" style="font-size: 20px;"></em></a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</div>

		</div>

	</div>
	<div><a href="home"><h3 align="center">Go to home page</h3></a></div>

</body>
</html>
