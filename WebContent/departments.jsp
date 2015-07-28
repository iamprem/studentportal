<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Department Info</title>

</head>
<body>

<div id = "wrap">
<%@ include file = "header.jsp" %>

<div class="container">

<c:forEach var="depts" items="${requestScope.deptList}">

<div class="row">
  <div class="col-sm-10 col-md-10 centered" id="container_color_grey">
  <a href="DegreeController?deptID=${depts.deptID}">
	  <div class="row" >
		  <div class="col-sm-4 col-md-4">
		  	<div class="thumbnail">
	      	<img src="${depts.imageUrl }">
	    	</div>
		  </div>
		  <div class="col-sm-8 col-md-8">
		  	<div class="caption">
	        <h3>${depts.deptName }</h3>
	        <p>${depts.getShortDescription() }</p>
		  </div>
	        </div>
	    </div>
	</a>
	</div>

</br>
</div>
</c:forEach>

</div>

<div id = "footer">
<%@ include file = "footer.jsp" %>
</div>


</body>
</html>