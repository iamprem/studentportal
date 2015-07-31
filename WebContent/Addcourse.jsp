<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>Registration</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<div class="container" id="wrap">
		<c:if test="${not empty requestScope.Message }">
			<script>
				alert("${requestScope.Message }");
			</script>

		</c:if>


		<form id="adds" method="post" action="AddCoursesController">

			<div class="form-group">

				<label for="Department ID" class="col-sm-2 control-label">Department
					ID</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" id="deptID" class="form-control" name="deptID"
						value="${deptID}" placeholder="DepartmentID" aria-descr
						ibedby="basic-addon1" readonly required>
				</div>
			</div>
			<br></br>
			<div class="form-group">
				<label for="Degree ID" class="col-sm-2 control-label">Degree
					ID</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="degID" name="degID"
						value="${degID}" placeholder="Degree ID"
						aria-describedby="basic-addon2" required readonly>
				</div>
			</div>
			<br></br>

			<div class="form-group">
				<label for="CourseID" class="col-sm-2 control-label">Course
					ID</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="courseID"
						name="courseID" placeholder=" 4 Characters ID"
						aria-describedby="basic-addon2" required>

				</div>
			</div>

			<br></br>
			<div class="form-group">
				<label for="CourseName" class="col-sm-2 control-label">Course
					Name</label>
				<div class="col-sm-4 col-xs-4">

					<input type='text' class="form-control" name="courseName"
						id="courseName" placeholder="Course Name"
						aria-describedby="basic-addon2" required>

				</div>
			</div>

			<br> </br>
			<div class="form-group">
				<label for="insMethod" class="col-sm-2 control-label">Instruction
					Method</label>

				<div class="col-sm-4 col-xs-4">
					<input type='text' class="form-control" name="insMethod"
						id="insMethod" placeholder="Instruction Method"
						aria-describedby="basic-addon2" required>

				</div>
			</div>
			<br></br>
			<div class="form-group">
				<label for="creditHours" class="col-sm-2 control-label">Credit
					Hours</label>

				<div class="col-sm-4 col-xs-4">
					<input type='text' class="form-control" name="creditHours"
						id="creditHours" placeholder="(1-6)"
						aria-describedby="basic-addon2" required>
				</div>

			</div>
			<br></br>
			<div class="form-group">
				<label for="coursePrerequisites" class="col-sm-2 control-label">Course
					Prerequisites</label>

				<div class="col-sm-4 col-xs-4">
					<input type='text' class="form-control" name="coursePrerequisites"
						id="coursePrerequisites"
						placeholder="Pre-requisites required for the course"
						aria-describedby="basic-addon2" required>
				</div>

			</div>
			<br></br>
			<div class="form-group">
				<label for="courseDescription" class="col-sm-2 control-label">Course
					Description</label>

				<div class="col-sm-4 col-xs-4">
					<textarea class="form-control" rows="5" name="courseDescription"
						id="courseDescription"
						placeholder="Short description about the course"
						aria-describedby="basic-addon2" required></textarea>
				</div>


			</div>


			<br></br> <br></br> <br></br>

			<div class="col-sm-10 col-md-10 centered">
				<div colspan="2" ,text-align:centre>

					<button type="submit" name="action" id="action" value="Submit"
						class="btn btn-primary">Add</button>

					<a href="CourseController?degID=${degID}&deptID=${deptID}"
						class="btn btn-danger" role="button">Cancel</a>

					<!--  <button type="button" name="action" id="action" value="Cancel"
						class="button">Cancel</button> -->
					<br></br>


				</div>
			</div>

		</form>



	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>