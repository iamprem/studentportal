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
<div class="container" id="wrap">
	<!-- Hey,
	<%=session.getAttribute("userType")%>
	:
	<%=session.getAttribute("userName")%>
	<br> You have Logged in successfully!
	
	<br> -->
	<p>
	Welcome back. To create a new application, click <a href="/StudentPortalWebApp/ApplicationController" alt="Create application">here</a>.
	</p>
	<p>For more information on departments, click <a href="/StudentPortalWebApp/DepartmentController" target="_blank">here</a></p>
	<!--  <button type="Login" onclick="location.href='/StudentPortalWebApp/application.jsp'" class="btn btn-primary">Create Application</button>  -->
	<br>
	<br>
	
	
	<div class="container">
<p>Below is the list of applications you have applied for. Note:Condition for checking if at least one application exits is pending</p>

<div class="row">
  <div class="col-sm-10 col-md-10 centered" id="container_color_grey">
  
	  <div class="row" >
		  <div class="col-sm-2 col-md-2">
		  	<p>Application Id</p>
		  </div>
		  <div class="col-sm-3 col-md-3">
		  	<p>Department</p>
		  </div>
		  <div class="col-sm-3 col-md-3">
		  	<p>Degree</p>
		  </div>
		  <div class="col-sm-2 col-md-2">
		  	<p>Enrollment Term</p>
		  </div>
		  <div class="col-sm-2 col-md-2">
		  	<p>Application Status</p>
		  </div>
	    </div>
	</a>
	</div>

</br>
</div>

<c:forEach var="studentDashBoardItem"
			items="${sessionScope.studentDashboardList}">

<div class="row">
  <div class="col-sm-10 col-md-10 centered" id="container_color_grey">
  <a href="ApplicationController?appID=${studentDashBoardItem.app_id}&appStatus=${studentDashBoardItem.app_status}">
	  <div class="row" >
		  <div class="col-sm-2 col-md-2">
		  	<p>${studentDashBoardItem.app_id}</p>
		  </div>
		  <div class="col-sm-3 col-md-3">
		  	<p>${studentDashBoardItem.dept_name}</p>
		  </div>
		  <div class="col-sm-3 col-md-3">
		  	<p>${studentDashBoardItem.deg_id}</p>
		  </div>
		  <div class="col-sm-2 col-md-2">
		  	<p>${studentDashBoardItem.desired_term}</p>
		  </div>
		  <div class="col-sm-2 col-md-2">
		  	<p>${studentDashBoardItem.app_status}</p>
		  </div>
	    </div>
	</a>
	</div>

</br>
</div>
</c:forEach>


</div>
<input type="hidden" name="studentId" value=${sessionScope.student.getStudent_id()}>
</div>
<div id = "footer">
	<%@include file="footer.jsp"%>
</div>
</body>
</html>