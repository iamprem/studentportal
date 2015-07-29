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
						<td><label for="pgmApplied">Program Applied To</label></td>
						<td><select name="pgmApplied" id="pgmApplied" >
						<option value="ALL" selected>All</option>
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


					</tr>
					
					<tr>
						<td><label for="gender">Gender</label></td>
						<td><select name="gender" id="gender" >.<option value="ALL" selected>All</option>
								<option value="1" >Male</option>
								<option value="2">Female</option>
						</select> <br></td>


					</tr>
					
					<tr>
						<td><label for="testType">Test Type</label></td>
						<td><select name="testType" id="testType" >.<option value="ALL" selected>All</option>
								<option value="GRE" >GRE</option>
								<option value="TOFEL">TOFEL</option>
								<option value="GMAT">GMAT</option>
								<option value="SAT">SAT</option>
								<option value="ACT">ACT</option>
						</select> <br></td>


					</tr>
					
					<tr>
						<td><label for="score">Score</label></td>
						<td><input type="radio" name="op"  checked value="="/>=
						<input type="radio" name="op" id="op" value="<="><=
						<input type="radio" name="op" id="op"  value=">=">>=
						<input type="radio" name="op" id="op" value=">"/>>
						<input type="radio" name="op" id="op" value="<"/><
						<input type="text" name="score" id="score"> <br/>
						
						<td><label for="gpa">GPA</label></td>
						<td><input type="radio" name="gpaop" id="gpaop" checked value="="/>=
						<input type="radio" name="gpaop" id="gpaop" value="<="><=
						<input type="radio" name="gpaop" id="gpaop" value=">=">>=
						<input type="radio" name="gpaop" id="gpaop" value=">"/>>
						<input type="radio" name="gpaop" id="gpaop" value="<"/><
						<input type="text" name="gpa" id="gpa"> <br></td>


					</tr>					
					
					<tr>
						<td><label for="country">Country</label></td>
						<td><select name="country" id="country" >.<option value="ALL" selected>All</option>
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
					 <td>Department Name</td>
					 <td>Research Description</td>
					 <td>Manager ID</td>
					  <td>Image</td>
					 </tr>
<c:forEach var="filter" items="${requestScope.filterList}">
	
					 
					 
					 
					 
						<tr>
						<td><b>${filter.studentID }</b></td>
						<td><b>${filter.appID }</b></td>
						<td><b>${filter.firstName }</b></td>
						<td><b>${filter.gender }</b></td>
						<td>
						</td>
						</tr>
						</c:forEach>
						</table>
			
			
			
<%@ include file="footer.jsp" %>
</body>
</html>