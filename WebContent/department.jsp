<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Department</title>
<%@ include file="header.jsp"%>
</head>
<body>
				 <table bgcolor="#00FF00" border="5"><tr><td>DeptID</td>
					 <td>Department Name</td>
					 <td>Research Description</td>
					 <td>Manager ID</td>
					  <td>Image</td>
					 </tr>
<c:forEach var="depts" items="${requestScope.deptList}">
	
						<tr>
						<td><b>${depts.deptID }</b></td>
						<td><b>${depts.deptName }</b></td>
						<td><b>${depts.researchDesc }</b></td>
						<td><b>${depts.managerID }</b></td>
						<td>
						<a href="DegreeController?deptID=${depts.deptID}"
							id="logo">
						<img src="${depts.imageUrl }" alt="Smiley face" height="42" width="42"> </a></td>
						
						
							
</tr>
						
</c:forEach></table>
				
<%@ include file="footer.jsp" %>
</body>
</html>