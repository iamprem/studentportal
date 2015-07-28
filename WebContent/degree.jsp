<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Department</title>
</head>
<body>
<div id = "wrap">
<%@ include file="header.jsp"%>
<div class="container">
<c:set var="department" value="${requestScope.department_data}"/>

<div class="row">
  <div class="col-sm-10 col-md-10 centered" id="container_color_grey">

	  <div class="row" >
		  <div class="col-sm-2 col-md-2">
		  	<div class="thumbnail">
	      	<img src="${department.imageUrl }">
	    	</div>
		  </div>
		  <div class="col-sm-10 col-md-10">
		  	<div class="caption">
	        <h3>${department.deptName }</h3>
	        <p>${department.researchDesc }</p>
		  </div>
	        </div>
	    </div>
	</div>

</br>
</div>

<c:forEach var="degrees" items="${requestScope.degreeList}">

<div class="row">
<div class="col-sm-10 col-md-10 centered" id="container_color_grey">
<h3>${degrees.degID} Details</h3>
</div>
</div>

<div class="row">
<div class="col-sm-10 col-md-10 centered" id="container_color_grey">
<h4>Fee Details</h4>
</div>
</div>


<div class="row">
  <div class="col-sm-10 col-md-10 centered" id="container_color_grey">

	  <div class="row" >
		  <div class="col-sm-6 col-md-6">
		  	<p>In-state Fee</p> 
		  </div>
		  <div class="col-sm-6 col-md-6">
		  	<p>${degrees.instateFee}</p>
	        </div>
	    </div>
	</div>

</div>

<div class="row">
  <div class="col-sm-10 col-md-10 centered" id="container_color_grey">

	  <div class="row" >
		  <div class="col-sm-6 col-md-6">
		  	<p>Out-state Fee</p> 
		  </div>
		  <div class="col-sm-6 col-md-6">
		  	<p>${degrees.outstateFee}</p>
	        </div>
	    </div>
	</div>

</div>




<div class="row">
<div class="col-sm-10 col-md-10 centered" id="container_color_grey">
<h4>Application Deadline Details</h4>
</div>
</div>


<div class="row">
  <div class="col-sm-10 col-md-10 centered" id="container_color_grey">

	  <div class="row" >
		  <div class="col-sm-6 col-md-6">
		  	<p>Fall Intake</p> 
		  </div>
		  <div class="col-sm-6 col-md-6">
		  	<p>${degrees.fallDL}</p>
	        </div>
	    </div>
	</div>

</div>

<div class="row">
  <div class="col-sm-10 col-md-10 centered" id="container_color_grey">

	  <div class="row" >
		  <div class="col-sm-6 col-md-6">
		  	<p>Spring Intake</p> 
		  </div>
		  <div class="col-sm-6 col-md-6">
		  	<p>${degrees.springDL}</p>
	        </div>
	    </div>
	</div>

</div>




</c:forEach>

<p>${requestScope.department_data}</p>

	</div>
</div>		
	<div id = "footer">			
<%@ include file="footer.jsp" %>
</div>
</body>
</html>