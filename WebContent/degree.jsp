<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>Department</title>
<%@ include file="header.jsp"%>
</head>
<body><h1>${requestScope.deptID}</h1>
				 <table bgcolor="#00FF00" border="5"><tr>
					 <td>Degree ID</td>
					 <td>Deadline Spring</td>
					 <td>Deadline Fall</td>
					  <td>Deadline Summer</td>
					 </tr>
<c:forEach var="degrees" items="${requestScope.degreeList}">
	
					 
					 
					 
					 
						<tr>
						<td>
						<form action="CourseController" method="post">
										<input type="hidden" name="degID" value="${degrees.degID}" /> <input
											type="hidden" name="deptID"
											value="${requestScope.deptID}" /> <input
											id="deleteCartProduct" type="submit" value="${degrees.degID }" class="button"
											style="margin-top: 20px;" />
									</form></td>
						
						
						
						<%-- <a href="CourseController?degID=${degrees.degID} & deptID=${requestScope.deptID}"
							id="logo"><b>${degrees.degID }</b></a></td> --%>
						<td><b>${degrees.springDL }</b></td>
						<td><b>${degrees.fallDL }</b></td>
						<td><b>${degrees.summerDL }</b></td>
						<td>
						</td>
						
						
							
</tr>
						
				</c:forEach></table>
				
<%@ include file="footer.jsp" %>
</body>
</html>