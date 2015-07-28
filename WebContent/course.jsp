<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>Department</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<h1>${requestScope.deptID}</h1>
	<h1>${requestScope.degID}</h1>

	<form name="dd" action="Addcourse.jsp">
		<c:set var="deptID" scope="session" value="${requestScope.deptID}" /> 
		<c:set var="degID" scope="session" value="${requestScope.degID}" /> 
		
		 <input
			id="addCourse" type="submit" value="Addcourse" class="button"
			style="margin-top: 20px;" />
	</form>
	<table bgcolor="#00FF00" border="5">
		<tr>
			<td>Course ID</td>
			<td>Course Name</td>
			<td>Instruction Method</td>
			<td>Credit Hours</td>
		</tr>
		<c:forEach var="courses" items="${requestScope.courseList}">





			<tr>
				<td><a href="AddCoursesController?courseID=${courses.courseID}"
							id="logo"><b>${courses.courseID }</b></a></td>
				<td><b>${courses.courseName }</b></td>
				<td><b>${courses.insMethod }</b></td>
				<td><b>${courses.creditHours }</b></td>
				<td></td>



			</tr>

		</c:forEach>
	</table>

	<%@ include file="footer.jsp"%>
</body>
</html>