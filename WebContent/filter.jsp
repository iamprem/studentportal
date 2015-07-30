<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<form id="adds" method="post" action="StaffFilterController">	
				<table style="background-color: #F6F6EE;">
	<tr>
						<td><label>Department ID</label></td>
						<td><input type="text" id="deptID" name="deptID" value="${sessionScope.STAFF.getdeptId()}"
							size="21"   disabled /><br></td>
					</tr>


				<!-- 	<tr>
						<td><label for="pgmApplied">Program Applied To</label></td>
						<td><select name="pgmApplied" id="pgmApplied" >
						<option value="%" selected>All</option>
								<option value="ACCF" > Accounting</option>
								<option value="CVGR"> Civil Engineering</option>
								<option value="ECGR"> Computer Engineering</option>
									<option value="EEGR"> Electical Engineering</option>
										<option value="GEOS"> Geology</option>
											<option value="ITCS"> Computer Science</option>
												<option value="ITIS"> Information and Technology</option>
													<option value="MHGR"> Mechanical Engineering</option>
													<option value="MISS"> Management Info System</option>
													<option value="PHYS"> Physics</option>
													
													
						</select> <br></td> 
					</tr>-->


					
					<tr>
						<td><label for="gender">Gender</label></td>
						<td><select name="gender" id="gender" >.<option value="%" selected>All</option>
								<option value="1" >Male</option>
								<option value="2">Female</option>
						</select> <br></td>


					</tr>
					
					<tr>
						<td><label for="testCode">Test Type</label></td>
						<td><select name="testCode" id="testCode" >
								<option value="GRE" selected>GRE</option>
								<option value="TOEFL">TOEFL</option>
								<option value="GMAT">GMAT</option>
								<option value="SAT">SAT</option>
								<option value="ACT">ACT</option>
						</select> <br></td>


					</tr>
					
					<tr>
						<td><label for="score">Score</label></td>
						<td><input type="radio" name="op"   value="="/>=
						<input type="radio" name="op" id="op" value="<="><=
						<input type="radio" name="op" id="op"  value=">=">>=
						<input type="radio" name="op" id="op" checked value=">"/>>
						<input type="radio" name="op" id="op" value="<"/><
						<input type="text" name="score" id="score" value="0"> <br/>
						
						<td><label for="gpa">GPA</label></td>
						<td><input type="radio" name="gpaop" id="gpaop"  value="="/>=
						<input type="radio" name="gpaop" id="gpaop" value="<="><=
						<input type="radio" name="gpaop" id="gpaop" value=">=">>=
						<input type="radio" name="gpaop" id="gpaop" checked value=">"/>>
						<input type="radio" name="gpaop" id="gpaop" value="<"/><
						<input type="text" name="gpa" id="gpa" value="0"> <br></td>


					</tr>					
					
					<tr>
						<td><label for="country">Country</label></td>
						<td><select name="country" id="country" >.<option value="%" selected>All</option>
								<option value="USA" >USA</option>
								<option value="India">India</option>
								<option value="China">China</option>
								<option value="Japan">Japan</option>
						</select> <br></td>


					</tr>
									</table>
									<button
							type="submit" name="action" id="action" value="Submit" class="button">Filter</button>
			</form>
							 <table bgcolor="#00FF00" border="5"><tr><td>DeptID</td>
					 <td>Student ID</td>
					 <td>Application ID</td>
					 <td>First Name</td>
					 <td>Test Type</td>
					 <td>Score</td>
					 <td>GPA</td>
					  <td>Gender</td>
					  <td>Country</td>
					 </tr>
<c:forEach var="filter" items="${requestScope.filterList}">
	
					 
					 
					 
					 
						<tr>
						<td><b>${filter.deptID }</b></td>
						<td><b>${filter.studentID }</b></td>
						<td><a href="StaffApplicationController?appID=${filter.appID}"
							id="logo"><b>${filter.appID }</b></a></td>
						<td><b>${filter.firstName }</b></td>
						<td><b>${filter.testCodes }</b></td>
						<td><b>${filter.gre }</b></td>
						<td><b>${filter.gpa }</b></td>
						<td><b>${filter.gender }</b></td>
						<td><b>${filter.country }</b></td>
						<td>
						</td>
						</tr>
						</c:forEach>
						</table>
			
			
			
<%@ include file="footer.jsp" %>
</body>
</html>