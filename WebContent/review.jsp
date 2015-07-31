<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sp.model.Student"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>Registration</title>
<%@ include file="common_header.jsp"%>
</head>
<body>
<c:if test="${not empty requestScope.Message }">
			<script>alert("${requestScope.Message }");</script>	
			
		</c:if>
    <div class="container">
<form class="form-horizontal" role="form" id="review" method="post" action="StaffApplicationController">	
<c:set var="app" value="${requestScope.application}"/>	
<c:set var="student" value="${app.getStudent()}"/>
<c:set var="department" value="${app.getDepartment()}"/>
<c:set var="degree" value="${app.getDegree()}"/>	
    
					 <div class="form-group">
						<label class="control-label col-sm-4">Student ID</label>
						<div class="col-sm-8">
						<input type="text" id="studentID" name="studentID" value="${student.student_id}"
							size="21"  readonly /><br>
							</div>
					</div>
                    <div class="form-group">
							<label class="control-label col-sm-4">Student Name</label>
                        <div class="col-sm-8">
						<input type="text" id="studentName" name="studentName" value="${student.getFullName()}"
							size="21"  readonly /><br>
					   </div>
					</div>
					 
					<div class="form-group">
						<label class="control-label col-sm-4">Application ID</label>
						<div class="col-sm-8">
						<input type="text" id="appID" name="appID" value="${app.app_id}"
							size="21"  readonly /><br>
						</div>
					</div>
        
					<div class="form-group">
						<label class="control-label col-sm-4">Department Name</label>
                        <div class="col-sm-8">
						<input type="text" id="deptID" name="deptID" value="${department.deptName}"
							size="21"  readonly /><br>
                        </div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-sm-4">Degree Name</label>
                        <div class="col-sm-8">
						<input type="text" id="degID" name="degID" value="${degree.degName}"
							size="21"  readonly /><br>
                             </div>
					</div>
					
                      <div class="form-group">
						<label class="control-label col-sm-4">Desired Term</label>
                          <div class="col-sm-8">
						<input type="text" id="desiredTerm" name="desiredTerm" value="${app.desired_term}"
							size="21"  readonly /><br>
                              </div>
					</div>
					
						<div class="form-group">
						<label class="control-label col-sm-4">Applied Date</label>
                            <div class="col-sm-8">
						<input type="text" id="appliedDate" name="appliedDate" value="${app.applied_date}"
							size="21"  readonly /><br>
                                </div>
					</div>
				 <div class="form-group">
						<label class="control-label col-sm-4">GPA</label>
						<div class="col-sm-8">
						<input type="text" id="gpa" name="gpa" value="${student.gpa}"
							size="21"  readonly /><br>
							</div>
					</div>
					 <div class="form-group">
						<label class="control-label col-sm-4">Major</label>
						<div class="col-sm-8">
						<input type="text" id="major" name="major" value="${student.major}"
							size="21"  readonly /><br>
							</div>
					</div>
                       <div class="form-group">
						<label class="control-label col-sm-4" for="sop">Statement Of Purpose</label>
						<div class="col-sm-8">
						<textarea rows="35" cols="50" id="sop" name="sop" readonly>${app.sop_content}</textarea>
						<br>
					   </div>
					</div>
			
                     <div class="form-group">
						<label class="control-label col-sm-4" for="appStatus">Application Status</label>
                         <div class="col-sm-8">
						<select name="appStatus" id="appStatus" >.<option value="Processing" selected>Processing</option>
								<option value="Accepted" >Accepted</option>
								<option value="Declined">Declined</option>
						</select> <br>
                            </div>
					</div>


				 <div class="form-group">
                        <div class="col-sm-4">
                        </div>
					<div class="col-sm-8">

				
						<button
							type="submit" name="action" id="action" value="Submit" class="btn btn-primary" onclick="return confirm('Are you sure?')">Update</button>
						<button
							type="submit" name="action" id="action" value="Cancel" class="btn btn-danger">Cancel</button> 
							
							</div>
							</div>
						
							


					 
			
			</form>
    	</div>
			
<%@ include file="footer.jsp" %>
</body>
</html>