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
<div class="container">
<form class="form-horizontal" role="form" id="adds" method="post" action="StaffFilterController">	



                    <div class="form-group">
                    
						<label class="control-label col-sm-4">Department ID</label>
						<div class="col-sm-8">
						<input type="text" id="deptID" name="deptID" value="${sessionScope.STAFF.getdeptId()}"
							size="21"  disabled /><br>
							</div>
							   </div> 	


				
					<div class="form-group">
					
						<label class="control-label col-sm-4" for="gender">Gender</label>
						<div class="col-sm-8">   
						<select name="gender" id="gender" >.<option value="%" selected>All</option>
								<option value="1" >Male</option>
								<option value="2">Female</option>
						</select> <br>
					     </div>
                   </div>
                   
                   <div class="form-group">

						<label class="control-label col-sm-4" for="testCode">Test Type</label>
						<div class="col-sm-8">
						<select name="testCode" id="testCode" >
								<option value="GRE" selected>GRE</option>
								<option value="TOEFL">TOEFL</option>
								<option value="GMAT">GMAT</option>
								<option value="SAT">SAT</option>
								<option value="ACT">ACT</option>
						</select> <br>
						</div>
                   </div>

					<div class="form-group">
					
						<label class="control-label col-sm-4" for="score">Score</label>
						<div class="col-sm-8">
						<input type="radio" name="op"   value="="/>=
						<input type="radio" name="op" id="op" value="<="><=
						<input type="radio" name="op" id="op"  value=">=">>=
						<input type="radio" name="op" id="op" checked value=">"/>>
						<input type="radio" name="op" id="op" value="<"/><
						<input type="text" name="score" id="score" value="0"> <br/>
						</div>
                   </div>
                   
                   <div class="form-group">
						<label class="control-label col-sm-4" for="gpa">GPA</label>
						<div class="col-sm-8">
						<input type="radio" name="gpaop" id="gpaop"  value="="/>=
						<input type="radio" name="gpaop" id="gpaop" value="<="><=
						<input type="radio" name="gpaop" id="gpaop" value=">=">>=
						<input type="radio" name="gpaop" id="gpaop" checked value=">"/>>
						<input type="radio" name="gpaop" id="gpaop" value="<"/><
						<input type="text" name="gpa" id="gpa" value="0"> <br>
				        </div>
                   </div>
		
		           <div class="form-group">
						<label class="control-label col-sm-4" for="country">Country</label>
						<div class="col-sm-8">
						<select name="country" id="country" >.<option value="%" selected>All</option>
								<option value="USA" >USA</option>
								<option value="India">India</option>
								<option value="China">China</option>
								<option value="Japan">Japan</option>
						</select> <br>
						</div>
                   </div>
                        <div class="form-group">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-8">
					<button type="submit" name="action" id="action" value="Submit" class="btn btn-default">Filter</button>
					    </div>
							</div></form>
							</div>
			
			<div class="container">
							 <table class="table table-bordered" bgcolor="#00FF00" border="5"><tr><td>DeptID</td>
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
						<c:if test="${filter.gender==1 }">
						<c:set var="gender" value="Male"/>
						</c:if>
						<c:if test="${filter.gender==0 }">
						<c:set var="gender" value="Female"/>
						</c:if>
						<td><b>${gender}</b></td>
						<td><b>${filter.country }</b></td>
						</tr>
						</c:forEach>
						</table>
						
						</div>
						
			
			
			
<%@ include file="footer.jsp" %>
</body>
</html>