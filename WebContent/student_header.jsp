<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>StudentRecSystem</title>
<!-- JS Files -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="js/angular.min.js"></script>
<script type="text/javascript" src="js/dropdown.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/validator.js"></script>
<script type="text/javascript" src="js/moment.js"></script>
<script type="text/javascript" src="js/transistion.js"></script>
<script type="text/javascript" src="js/collapse.js"></script>
<script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.15.35/js/bootstrap-datetimepicker.min.js"></script>

<!-- CSS Files-->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/application.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.15.35/css/bootstrap-datetimepicker.min.css">

</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a href="#"><img class="navbar-brand" src="images/unc-charlotte-logo.gif" alt="UNCC logo"></a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li><a href="/StudentPortalWebApp/" target="_blank">Home</a></li>
        <li><a href="/StudentPortalWebApp/DepartmentController">Departments</a></li>
        <li><a href="/StudentPortalWebApp/StudentDashController">Dashboard</a></li>
        <li><a href="/StudentPortalWebApp/ProfileEditController?email=${sessionScope.student.getEmail()}&userType=student">Edit Profile</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a><span class="glyphicon glyphicon-user"></span>Welcome, <%=session.getAttribute("userName")%></a></li>
      <li><a><form action="LogoutController" method="post" id="logout"><input class="btn btn-danger" type="submit" value="Logout"></form></a></li>
       <!--<li><form action="LogoutController" method="post" id="logout">
<a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
</form></li>-->
      </ul>
    </div>
  </div>
</nav>

<%
String userName = null;
String sessionID = null;
if (session.getAttribute("userName") == null){
	response.sendRedirect("login.jsp");
}else{
	userName = (String)session.getAttribute("userName");
	Cookie[] cookies = request.getCookies();
	if(cookies !=null){
	for(Cookie cookie : cookies){
	    if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
	}
	}else{
	    sessionID = session.getId();
	}
}
%>
<div class="clear"></div>

