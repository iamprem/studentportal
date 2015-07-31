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
<%@ include file="common_header.jsp"%>
</head>
<body>
	<div class="container" id="wrap">
		<c:if test="${not empty requestScope.Message }">
			<script>
				alert("${requestScope.Message }");
			</script>

		</c:if>



		<form id="adds" method="post" action="CourseController">

			<div class="form-group">

				<label for="courseID" class="col-sm-2 control-label">Course
					ID</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" id="courseID" class="form-control"
						name="courseID" value="${course.courseID}" placeholder="CourseID"
						aria-describedby="basic-addon1" readonly required>
				</div>
			</div>

			<br></br>



			<div class="form-group">

				<label for="courseName" class="col-sm-2 control-label">Course
					Name</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" id="courseName" class="form-control"
						name="courseName" value="${course.courseName}" pattern="[A-Za-z]+" title="Only characters are allowed"
						aria-describedby="basic-addon1" readonly required>
				</div>
			</div>

			<br></br>
			<div class="form-group">

				<label for="creditHours" class="col-sm-2 control-label">Credit
					Hours</label>
				<div class="col-sm-4 col-xs-4">
					<input type="number" id="creditHours" class="form-control"
						name="creditHours" value="${course.creditHours}"
						aria-describedby="basic-addon1" required>
				</div>
			</div>
			<br></br>

			<div class="form-group">

				<label for="insMethod" class="col-sm-2 control-label">Instruction
					Method</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" id="insMethod" class="form-control"
						name="insMethod" value="${course.insMethod}"
						aria-describedby="basic-addon1" required>
				</div>
			</div>

			<br></br>

			<div class="form-group">

				<label for="courseDescription" class="col-sm-2 control-label">Course
					Description</label>
				<div class="col-sm-4 col-xs-4">
					<textarea class="form-control" rows="5" id="courseDescription"
						name="courseDescription" aria-describedby="basic-addon1" required>${course.courseDescription}</textarea>
				</div>
			</div>

			<br></br> <br></br> <br></br>

			<div class="form-group">

				<label for="coursePrerequisites" class="col-sm-2 control-label">Course
					Prerequisites</label>
				<div class="col-sm-4 col-xs-4">
					<textarea class="form-control" rows="2" id="coursePrerequisites"
						name="coursePrerequisites" aria-describedby="basic-addon1"
						required>${course.coursePrerequisites}</textarea>
				</div>
			</div>

			<br></br> <br></br> <br></br>

			<div class="col-sm-10 col-md-10 centered">
				<div colspan="2" ,text-align:centre>

					<input type="hidden" name="degID" value="${course.degID}" /> <input
						type="hidden" name="deptID" value="${course.deptID}" />

					<button type="submit" name="action" id="action" value="Submit"
						class="btn btn-primary">Submit</button>
					<button type="submit" name="action" id="action" value="Delete"
						onclick="return confirm('Are you sure?')" class="btn btn-danger">Delete</button>

					<a
						href="CourseController?degID=${course.degID}&deptID=${course.deptID}"
						class="btn btn-default" role="button">Cancel</a> <br></br>


				</div>
			</div>


		</form>


	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>