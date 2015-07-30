<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>Registration</title>
<%@ include file="header.jsp"%>
</head>
<body>
<div id = "wrap">
<c:if test="${not empty requestScope.Message }">
			<script>alert("${requestScope.Message }");</script>	
			
		</c:if>
<form id="adds" method="post" action="AddCoursesController">	
				<table style="background-color: #F6F6EE;">
					<tr>
						<td><label>Department ID</label></td>
						<td><input type="text" id="deptID" name="deptID" value="${deptID}"
							size="21"  placeholder="Department ID" readonly /><br></td>
					</tr>



					<tr>
						<td><label>Degree ID</label></td>
						<td><input type="text" id="degID" name="degID" value="${degID}"
							 placeholder="Degree ID" readonly/><br></td>
					</tr>
					
					<tr>
						<td style="width: 50%;"><label for="courseID">Course ID
								</label></td>
						<td><input type="text" id="courseID" name="courseID" value="${courseID}"
							maxlength="10"  placeholder="Minimum 4 Characters(0000) " /></td>

					</tr>

					<tr>
						<td><label for="courseName">Course Name</label></td>
						<td><input type="text" id="courseName" name="courseName" value="${courseName}"
							 placeholder="Course Name" /><br></td>
					</tr>


					<tr>
						<td><label for="creditHours">creditHours</label></td>
						<td><select name="creditHours" id="creditHours" >
								<option value="1" selected>1</option>
								<option value="2">2</option>
								<option value="3">3</option>
						</select> <br></td>


					</tr>

					<tr>
						<td><label for="insMethod">Instruction Method</label></td>
						<td><input type="text" id="insMethod" name="insMethod" value="${insMethod}"
							 placeholder="Instruction Method" /><br></td>
					</tr>

					<tr>
						<td><label for="courseDescription">Course Description</label></td>
						<td><input type="text" id="courseDescription" name="courseDescription" value="${courseDescription}"
							 placeholder="Course Description" /><br></td>
					</tr>
					
					<tr>
						<td><label for="coursePrerequisites">Course Prerequisites</label></td>
						<td><input type="text" id="coursePrerequisites" name="coursePrerequisites" value="${coursePrerequisites}"
							 placeholder="Course Prerequisites" /><br></td>
					</tr>



					<tr><td colspan="2" style="text-align: center;">
						<button
							type="submit" name="action" id="action" value="Submit" class="button">Add</button>
						<button
							type="submit" name="action" id="action" value="Cancel" class="button">Cancel</button> 
							
							
						</td>
					</tr>
				</table>
			</form>

</div>
<%@ include file="footer.jsp" %>
</body>
</html>