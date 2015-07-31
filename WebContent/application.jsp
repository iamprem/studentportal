<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Apply for Application</title>
<%@include file="student_header.jsp"%>
</head>
<body>
	<c:set var="student" value="${sessionScope.student}" />
	<div id="wrap">
		<br /> <br /> <br />
		<div class="col-md-offset-3">
			<form class="form-horizontal" id="enrollform" method="POST"
				action="ApplicationController">
				<div class="form-group">
					<label for="firstName" class="col-sm-2 control-label">First
						Name</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" id="firstName" class="form-control"
							name="firstName" placeholder="First Name" pattern="[A-Za-z]+" title="Only characters are allowed"
							aria-describedby="basic-addon1" value="${student.getFirstName()}"
							required>
					</div>
				</div>
				<div class="form-group">
					<label for="lastName" class="col-sm-2 control-label">Last
						Name</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="lastName"
							name="lastName" placeholder="Last Name" pattern="[A-Za-z]+" title="Only characters are allowed"
							aria-describedby="basic-addon2" value="${student.getLastName()}"
							required>
					</div>
				</div>

				<div class="form-group">
					<label for="gender" class="col-sm-2 control-label">Gender</label>
					<div class="col-sm-4 col-xs-4">

						<c:choose>
							<c:when test="${student.getGender()=='1'}">
								<label class="radio-inline"> <input id="gender"
									type="radio" value="1" checked name="gender">Male
								</label>
								<label class="radio-inline"> <input id="gender"
									type="radio" value="0" name="gender">Female
								</label>
							</c:when>
							<c:otherwise>
								<label class="radio-inline"> <input id="gender"
									type="radio" value="1" name="gender">Male
								</label>
								<label class="radio-inline"> <input id="gender"
									type="radio" value="0" checked name="gender">Female
								</label>
							</c:otherwise>
						</c:choose>
					</div>
				</div>


				<div class="form-group">
					<label for="gender" class="col-sm-2 control-label">Date Of
						Birth</label>
					<div class="col-sm-4 col-xs-4">
						<div class='input-group date' id='datetimepicker10'>
							<input type='text' name="dateOfBirth" id="dateOfBirth"
								class="form-control" value="${student.getDob()}" required /> <span
								class="input-group-addon"> <span
								class="glyphicon glyphicon-calendar"> </span>
							</span>
						</div>
					</div>
				</div>

				<script type="text/javascript">
					$(function() {
						$('#datetimepicker10').datetimepicker({
							viewMode : 'years',
							format : 'YYYY/MM/DD'
						});
					});
				</script>


				<div class="form-group">
					<label for="phoneNumber" class="col-sm-2 control-label">Phone
						Number</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="phoneNumber"
							name="phoneNumber" placeholder="Phone Number XXX-XXX-XXXX" pattern="[0-9-]+" title="Only numbers are allowed"
							value="${student.getPhone()}" aria-describedby="basic-addon2"
							required>
					</div>
				</div>




				<div class="form-group">
					<label for="ssn" class="col-sm-2 control-label">SSN</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="ssn" name="ssn"
							value="${student.getSsn()}" placeholder="SSN"
							aria-describedby="basic-addon2">
					</div>
				</div>

				<div class="form-group">
					<label for="streetAddress" class="col-sm-2 control-label">Street
						Address</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="streetAddress"
							value="${student.getStAddress()}" name="streetAddress"
							placeholder="Street Address" aria-describedby="basic-addon2"
							required>
					</div>
				</div>


				<div class="form-group">
					<label for="aptNumber" class="col-sm-2 control-label">Apt
						Number</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="aptNumber"
							name="aptNumber" placeholder="Apartment Number"
							value="${student.getApartmentNo()}"
							aria-describedby="basic-addon2" required>
					</div>
				</div>


				<div class="form-group">
					<label for="city" class="col-sm-2 control-label">City</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="city" name="city"
							value="${student.getCity()}" placeholder="City"
							aria-describedby="basic-addon2" required>
					</div>
				</div>


				<div class="form-group">
					<label for="state" class="col-sm-2 control-label">State</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="state" name="state"
							value="${student.getStateOrTeritory()}" placeholder="State"
							aria-describedby="basic-addon2" required>
					</div>
				</div>
				<!-- ***********************COUNTRY********************************* -->

				<div class="form-group">

					<label for="country_label" class="col-sm-2 control-label">Country</label>
					<div class="col-sm-4 col-xs-4">
						<select class="form-control sel" id="country_label">
							<option>United States</option>
							<option>India</option>
							<option>China</option>
							<option>Canada</option>
						</select>

					</div>

				</div>

				<!-- 
				<div class="form-group ">
					<label for="country" class="col-sm-2 control-label">Country</label>
					<div class="col-sm-4 col-xs-4">
						<div class="btn-group">
							<button class="btn dropdown-toggle" name="recordinput"
								data-toggle="dropdown" required>
								Select a Country <span class="caret"></span>
							</button>
							<ul class="dropdown-menu col-sm-2" id="country_label">
								<li><a>United States</a></li>
								<li><a>India</a></li>
								<li><a>China</a></li>
								<li><a>Canada</a></li>
							</ul>
						</div>
					</div>
				</div>

 -->


				<div class="form-group">
					<label for="zipCode" class="col-sm-2 control-label">Zip
						Code</label>
					<div class="col-sm-4 col-xs-4">
						<input type="number" class="form-control" id="zipCode"
							name="zipCode" placeholder="Zip Code" 
							value="${student.getZipcode()}" aria-describedby="basic-addon2"
							required>
					</div>
				</div>


				<div class="form-group">
					<label for="degreeEarned" class="col-sm-2 control-label">Degree
						Earned</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="degreeEarned"
							name="degreeEarned" placeholder="Degree Earned"
							value="${student.getDegreeEarned()}"
							aria-describedby="basic-addon2" required>
					</div>
				</div>

				<div class="form-group">
					<label for="major" class="col-sm-2 control-label">Major</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="major" name="major"
							value="${student.getMajor()}"
							placeholder="Degree of highest Major"
							aria-describedby="basic-addon2" required>

					</div>
				</div>

				<div class="form-group">
					<label for="gpa" class="col-sm-2 control-label">GPA</label>
					<div class="col-sm-4 col-xs-4">
						<input type="number" class="form-control" id="gpa" name="gpa"
							value="${student.getGpa()}" placeholder="GPA"
							aria-describedby="basic-addon2" required>
					</div>
				</div>
				
				
	<div class="form-group">
		<label for="enroll_term_label" class="col-sm-2 control-label department_label">Enrollment Term</label>
					<div class="col-sm-4 col-xs-4">
						<select class="form-control sel" id="enroll_term_label">
							<option>Spring 2016</option>
						</select>
					</div>
				</div>

<!-- 
				<div class="form-group ">
					<label for="country" class="col-sm-2 control-label">Enrollment
						Term</label>
					<div class="col-sm-4 col-xs-4">
						<div class="btn-group ">
							<button class="btn dropdown-toggle" name="recordinput"
								data-toggle="dropdown">
								Select a Term <span class="caret"></span>
							</button>
							<ul class="dropdown-menu col-sm-2" id="enroll_term_label">
								<li><a>Spring 2016</a></li>
							</ul>
						</div>
					</div>
				</div>
 -->
				<div class="form-group">

					<label for="department_label" class="col-sm-2 control-label department_label">Applying for</label>
					<div class="col-sm-4 col-xs-4">
						<select class="form-control sel" id="department_label">
							<option>ACCF</option>
							<option>ECGR</option>
							<option>GEOS</option>
							<option>ITCS</option>
							<option>ITIS</option>
						</select>

					</div>

				</div>
				<!--
				<div class="form-group ">
					<label for="country" class="col-sm-2 control-label">Applying
						for</label>
					<div class="col-sm-4 col-xs-4">
						<div class="btn-group ">
							<button class="btn dropdown-toggle" name="recordinput"
								data-toggle="dropdown">
								Select a Department <span class="caret"></span>
							</button>
							<ul class="dropdown-menu col-sm-2" id="department_label">
								<li><a>ACCF</a></li>
								<li><a>ECGR</a></li>
								<li><a>GEOS</a></li>
								<li><a>ITCS</a></li>
								<li><a>ITIS</a></li>
							</ul>
						</div>
					</div>
				</div>
-->

<div class="form-group">

					<label for="degree_label" class="col-sm-2 control-label department_label">Applying degree</label>
					<div class="col-sm-4 col-xs-4">
						<select class="form-control sel" id="degree_label">
							<option>BS</option>
							<option>MS</option>
							<option>PHD</option>
							<option>CERT</option>
						</select>

					</div>
					
				</div>
				
				<!-- 
				<div class="form-group ">
					<label for="country" class="col-sm-2 control-label">Applying
						degree</label>
					<div class="col-sm-4 col-xs-4">
						<div class="btn-group ">
							<button class="btn dropdown-toggle" name="recordinput"
								data-toggle="dropdown">
								Select a Degree <span class="caret"></span>
							</button>
							<ul class="dropdown-menu col-sm-2" id="degree_label">
								<li><a>BS</a></li>
								<li><a>MS</a></li>
								<li><a>PHD</a></li>
								<li><a>CERT</a></li>
							</ul>
						</div>
					</div>
				</div>

 -->


<div class="form-group">

					<label for="test_gre_gmat_label" class="col-sm-2 control-label department_label">Select a Test Type</label>
					<div class="col-sm-4 col-xs-4">
						<select class="form-control sel" id="test_gre_gmat_label">
							<option>None</option>
							<option>GRE</option>
							<option>GMAT</option>
						</select>

					</div>
					<div class="col-sm-2 col-xs-2">
				<input type="number" class="form-control" id="test_gre_gmat"
									name="test_gre_gmat" aria-describedby="basic-addon2" required>
									</div>
				</div>
				
				<!--
				<div class="form-group">
					<div class="col-sm-3 col-xs-3">
						<div class="row">
							<div class="col-sm-8 col-xs-8">
								<div class="btn-group">
									<button class="btn dropdown-toggle" name="recordinput"
										data-toggle="dropdown">
										Select a Test type <span class="caret"></span>
									</button>
									<ul class="dropdown-menu col-sm-2" id="test_gre_gmat_label">
										<li><a>GRE</a></li>
										<li><a>GMAT</a></li>
									</ul>
								</div>
							</div>
							<div class="col-sm-4 col-xs-4">
								<input type="text" class="form-control" id="test_gre_gmat"
									name="test_gre_gmat" aria-describedby="basic-addon2" required>
							</div>
						</div>

					</div>
				</div>
-->

<div class="form-group">

					<label for="test_toefl_ielts_label" class="col-sm-2 control-label department_label">Select a Test Type</label>
					<div class="col-sm-4 col-xs-4">
						<select class="form-control sel" id="test_toefl_ielts_label">
							<option>None</option>
							<option>TOEFL</option>
							<option>IELTS</option>
						</select>
					</div>
			<div class="col-sm-2 col-xs-2">
				<input type="number" class="form-control" id="test_toefl_ielts"
									name="test_gre_gmat" aria-describedby="basic-addon2" required>
									</div>
				</div>
	<!-- 			
			
				<div class="form-group ">
					<div class="col-sm-3 col-xs-3">
						<div class="row">
							<div class="col-sm-8 col-xs-8">
								<div class="btn-group ">
									<button class="btn dropdown-toggle" name="recordinput"
										data-toggle="dropdown">
										Select a Test type <span class="caret"></span>
									</button>
									<ul class="dropdown-menu col-sm-2" id="test_toefl_ielts_label">
										<li><a>TOEFL</a></li>
										<li><a>IELTS</a></li>
									</ul>
								</div>
							</div>
							<div class="col-sm-4 col-xs-4">
								<input type="text" class="form-control" id="test_toefl_ielts"
									name="test_toefl_ielts" aria-describedby="basic-addon2"
									required>

							</div>
						</div>

					</div>
				</div>
 
 -->

				<div class="form-group">
					<label for="workOrgName" class="col-sm-2 control-label">Work
						Organization Name</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="workOrgName"
							name="workOrgName" value="${student.getWorkOrgName()}"
							placeholder="Work Organisation Name"
							aria-describedby="basic-addon2" required>
					</div>
				</div>


				<div class="form-group">
					<label for="yearsWorked" class="col-sm-2 control-label">Years
						Worked</label>
					<div class="col-sm-4 col-xs-4">
						<input type="number" class="form-control" id="yearsWorked"
							name="yearsWorked" placeholder="Years Worked"
							value="${student.getYearsWorked()}"
							aria-describedby="basic-addon2" required>
					</div>
				</div>

				<div class="form-group">
					<label for="role" class="col-sm-2 control-label">Role</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="role" name="role"
							value="${student.getKeyRole()}" placeholder="Role" pattern="[A-Za-z0-9]+" title="Only alpha-numericals are allowed"
							aria-describedby="basic-addon2" required>
					</div>
				</div>

				<div class="form-group">
					<label for="sop" class="col-sm-2 control-label">Statement
						Of Purpose</label>
					<div class="col-sm-4 col-xs-4">
						<textarea class="form-control" rows="5" id="comment"
							name="sop_content"
							placeholder="Brief Statement of Purpose in 300 Words" pattern="[A-Za-z0-9]+" title="Only alpha-numericals are allowed"
							aria-describedby="basic-addon2"></textarea>
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-10">
						<button type="submit" class="btn btn-primary" id="action"
							name="action" value="Save">Save</button>
						<button type="submit" class="btn btn-primary" id="action"
							name="action" value="Submit">Submit Application</button>
					</div>
				</div>

				<input type="hidden" name="test_toefl_ielts_lb" value="" id="test_toefl_ielts_lb"></input>
				<input type="hidden" name="test_gre_gmat_lb" value="" id="test_gre_gmat_lb"></input> 
				<input type="hidden" name="country_lb" value="yo" id="country_lb"></input> 
				<input type="hidden" name="department_lb" value="" id="department_lb"></input> 
				<input type="hidden" name="degree_lb" value="" id="degree_lb"></input>
				<input type="hidden" name="enroll_term_lb" value="" id="enroll_term_lb"></input>
			</form>
		</div>


	</div>

	<script>
	
	$( document ).ready(function() {
		$(".sel").change();
	});
	
	$(".sel").change(
			function() {
				idComp = $(this).attr('id');
				var selText = $(this).find(":selected").text();
				if (idComp == "test_gre_gmat_label") {
					if(selText=="None"){
						selText = ""
					}
					$("#test_gre_gmat_lb").val(selText);
				} else if (idComp == "test_toefl_ielts_label") {
					if(selText=="None"){
						selText = ""
					}
					$("#test_toefl_ielts_lb").val(selText);
				} else if (idComp == "country_label") {
					$("#country_lb").val(selText);
				} else if (idComp == "department_label") {
					$("#department_lb").val(selText);
				} else if (idComp == "degree_label") {
					$("#degree_lb").val(selText);
				} else if (idComp == "enroll_term_label") {
					$("#enroll_term_lb").val(selText);
				}
			});
	
		$('.dropdown-toggle').dropdown()
		$(".dropdown-menu li a").click(
				function() {
					idComp = $(this).parent().parent().attr('id');
					var selText = $(this).text();
					if (idComp == "test_gre_gmat_label") {
						$("#test_gre_gmat_lb").val(selText);
					} else if (idComp == "test_toefl_ielts_label") {
						$("#test_toefl_ielts_lb").val(selText);
					} else if (idComp == "country_label") {
						$("#country_lb").val(selText);
					} else if (idComp == "department_label") {
						$("#department_lb").val(selText);
					} else if (idComp == "degree_label") {
						$("#degree_lb").val(selText);
					} else if (idComp == "enroll_term_label") {
						$("#enroll_term_lb").val(selText);
					}


					$(this).parents('.btn-group').find('.dropdown-toggle')
							.html(selText + ' <span class="caret"></span>');
				});
		
	</script>
	<div id="footer">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>