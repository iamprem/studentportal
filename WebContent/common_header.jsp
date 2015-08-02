<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- JS Files -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="js/angular.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/validator.js"></script>
<script type="text/javascript" src="js/moment.js"></script>
<script type="text/javascript" src="js/transistion.js"></script>
<script type="text/javascript" src="js/collapse.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/validate_number.js"></script>

<script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.15.35/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>


<!-- CSS Files-->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/application.css">
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-datepicker.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.15.35/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" type="text/css"
	href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
</head>

<body>

	<c:set var="userType" value="${sessionScope.userType}"/>
	
	<nav class="navbar navbar-inverse" style="margin-bottom:0px;">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="/StudentPortalWebApp"><img class=""
				src="images/UNCC_logo_sm2.png" alt="UNCC logo"></a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="/StudentPortalWebApp">Home</a></li>
				<li><a href="/StudentPortalWebApp/DepartmentController">Departments</a></li>
				<li><a href="#">Admissions</a></li>
				<li><a href="#">About UNCC</a></li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
			<c:if test="${userType eq null}">
				<li><a href="login.jsp"><button type="button"
							class="btn btn-success">
							<span class="glyphicon glyphicon-log-in"></span> Login
						</button></a></li>
			</c:if>
			<c:if test="${userType ne null}">
				
				<c:if test="${userType eq 'faculty'}">
					<li><a href="/StudentPortalWebApp/faculty.jsp">DashBoard</a></li>
				</c:if>
				<c:if test="${userType eq 'student'}">
					<li><a href="/StudentPortalWebApp/StudentDashController">DashBoard</a></li>
				</c:if>
				<li><a href="/StudentPortalWebApp/ProfileEditController">Profile</a></li>
				<li><a><span class="glyphicon glyphicon-user"></span>Welcome,
						<%=session.getAttribute("userName")%></a></li>
				<li><a><form action="LogoutController" method="post"
							id="logout">
							<button type="submit" class="btn btn-danger">
							<span class="glyphicon glyphicon-log-out"></span> Logout
							</button>
						</form></a></li>
			</c:if>
			</ul>
		</div>
	</div>
	</nav>
