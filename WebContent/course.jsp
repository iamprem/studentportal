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
<%@ include file="common_header.jsp"%>
</head>
<body>
<div id = "wrap">
	<div class="col-sm-10 col-md-10 centered" id="container_color_grey">
	<h1>${requestScope.deptID} - ${requestScope.degID} </h1>
	</div>
		<c:if test="${sessionScope.userType eq 'faculty'}">
	<div class="col-sm-10 col-md-10 centered" id="container_color_grey">
	<form name="dd" action="Addcourse.jsp">
		<c:set var="deptID" scope="session" value="${requestScope.deptID}" /> 
		<c:set var="degID" scope="session" value="${requestScope.degID}" /> 
		
		 <input
			id="addCourse" type="submit" value="Add Course" class="button"
			style="margin-top: 20px;" />
	</form>
	</br>
	</div>
	</c:if>
<c:forEach var="courses" items="${requestScope.courseList}">
<div class="row">
	<div class="col-sm-10 col-md-10 centered" id="container_color_grey">
	<c:choose>
	<c:when test="${sessionScope.userType eq 'faculty'}">
	<a href="AddCoursesController?courseID=${courses.courseID}" id="logo">
		<h4> <b>${courses.courseName } ( ${requestScope.deptID} ${courses.courseID } )	</b></h4>
		</a>
	</c:when>
	<c:otherwise>
	<h4> <b>${courses.courseName } ( ${requestScope.deptID} ${courses.courseID } )	</b></h4>
	</c:otherwise>
	
	</c:choose>
	
		
		<h5> Instruction Method : ${courses.insMethod }	</h5>
		<h5> PreRequisites : ${courses.coursePrerequisites }	</h5>
		<h5> Description :  ${courses.courseDescription } </h5>
		</br>
	</div>
	
</div>
</c:forEach>	
</div>
<div id="footer">
	<%@ include file="footer.jsp"%>
	</div>
</body>
</html>