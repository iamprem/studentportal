<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sp.model.Student"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>Registration</title>
<%@ include file="header.jsp"%>
</head>
<body>
<c:if test="${not empty requestScope.Message }">
			<script>alert("${requestScope.Message }");</script>	
			
		</c:if>
<form id="review" method="post" action="StaffApplicationController">	
<c:set var="app" value="${requestScope.application}"/>	
<c:set var="student" value="${app.getStudent()}"/>
<c:set var="department" value="${app.getDepartment()}"/>
<c:set var="degree" value="${app.getDegree()}"/>	
					 <table style="background-color: #F6F6EE;">
						<tr>
						<td><label>Student ID</label></td>
						<td><input type="text" id="studentID" name="studentID" value="${student.student_id}"
							size="21"  readonly /><br></td>
					</tr>
							<td><label>Student Name</label></td>
						<td><input type="text" id="studentName" name="studentName" value="${student.getFullName()}"
							size="21"  readonly /><br></td>
					</tr>
					 
					<tr>
						<td><label>Application ID</label></td>
						<td><input type="text" id="appID" name="appID" value="${app.app_id}"
							size="21"  readonly /><br></td>
					</tr>
					<tr>
						<td><label>Department Name</label></td>
						<td><input type="text" id="deptID" name="deptID" value="${department.deptName}"
							size="21"  readonly /><br></td>
					</tr>
					<tr>
						<td><label>Degree Name</label></td>
						<td><input type="text" id="degID" name="degID" value="${degree.degName}"
							size="21"  readonly /><br></td>
					</tr>
	<tr>
						<td><label>Desired Term</label></td>
						<td><input type="text" id="desiredTerm" name="desiredTerm" value="${app.desired_term}"
							size="21"  readonly /><br></td>
					</tr>
						<tr>
						<td><label>Applied Date</label></td>
						<td><input type="text" id="appliedDate" name="appliedDate" value="${app.applied_date}"
							size="21"  readonly /><br></td></tr>
				
<tr>
						<td><label for="sop">Statement Of Purpose</label></td>
						<td>
						<textarea rows="35" cols="50" id="sop" name="sop" readonly>${app.sop_content}</textarea>
						<br></td>
					</tr>
			<tr>
						<td><label for="appStatus">Application Status</label></td>
						<td><select name="appStatus" id="appStatus" >.<option value="Processing" selected>Processing</option>
								<option value="Accepted" >Accepted</option>
								<option value="Declined">Declined</option>
						</select> <br></td>


					</tr>

					<tr><td colspan="2" style="text-align: center;">
						<button
							type="submit" name="action" id="action" value="Submit" class="button">Update</button>
						<button
							type="submit" name="action" id="action" value="Cancel" class="button">Cancel</button> 
							
							
						</td>
					</tr>
				</table>

					 
			
			</form>
			
<%@ include file="footer.jsp" %>
</body>
</html>