<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Dashboard</title>

<%@include file="student_header.jsp"%>

</head>
<body>

	Hey,
	<%=session.getAttribute("userType")%>
	:
	<%=session.getAttribute("userName")%>
	<br> You have Logged in successfully!
	
	<br>
	<button type="Login" onclick="location.href='/StudentPortalWebApp/application.jsp'" class="btn btn-primary">Create Application</button>
	<br>
	<br>
	<table bgcolor="#00FF00" border="5">
		<tr>
			<td>Application ID</td>
			<td>Department Name</td>
			<td>Degree ID</td>
			<td>Desired Term</td>
			<td>Application Status</td>
		</tr>
		<c:forEach var="studentDashBoardItem"
			items="${requestScope.studentDashboardList}">

			<tr>
				<td><b>${studentDashBoardItem.app_id }</b></td>
				<td><b>${studentDashBoardItem.dept_name }</b></td>
				<td><b>${studentDashBoardItem.deg_id }</b></td>
				<td><b>${studentDashBoardItem.desired_term }</b></td>
				<td><b>${studentDashBoardItem.app_status }</b></td>
			</tr>

		</c:forEach>
	</table>

	<%@include file="footer.jsp"%>
</body>
</html>