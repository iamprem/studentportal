<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Continue Application</title>
<%@include file="common_header.jsp"%>
</head>
<body>
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
						name="firstName" placeholder="First Name"
						value="${sessionScope.application.getStudent().getFirstName()}"
						aria-describedby="basic-addon1" required>
				</div>
			</div>
			<div class="form-group">
				<label for="lastName" class="col-sm-2 control-label">Last
					Name</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="lastName"
						name="lastName" placeholder="Last Name"
						value="${sessionScope.application.getStudent().getLastName()}" 
						aria-describedby="basic-addon2" required>
				</div>
			</div>

			<div class="form-group">
				<label for="gender" class="col-sm-2 control-label">Gender</label>
				<div class="col-sm-4 col-xs-4">

					<c:choose>
						<c:when
							test="${sessionScope.application.getStudent().getGender()=='1'}">
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
						<input type="text" name="dateOfBirth" id="dateOfBirth"
							class="form-control"
							value="${sessionScope.application.getStudent().getDob()}"
							required /> <span class="input-group-addon"> <span
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
					<input type="text" class="form-control" id="phoneNumber" maxlength="11"
						name="phoneNumber" placeholder="Phone Number XXX-XXX-XXXX" 
						value="${sessionScope.application.getStudent().getPhone()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>




			<div class="form-group">
				<label for="ssn" class="col-sm-2 control-label">SSN</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="ssn" name="ssn" maxlength="11"
						value="${sessionScope.application.getStudent().getSsn()}"
						placeholder="SSN" aria-describedby="basic-addon2">
				</div>
			</div>

			<div class="form-group">
				<label for="streetAddress" class="col-sm-2 control-label">Street
					Address</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="streetAddress"
						name="streetAddress" placeholder="Street Address"
						value="${sessionScope.application.getStudent().getStAddress()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>


			<div class="form-group">
				<label for="aptNumber" class="col-sm-2 control-label">Apt
					Number</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="aptNumber"
						name="aptNumber" placeholder="Apartment Number"
						value="${sessionScope.application.getStudent().getApartmentNo()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>


			<div class="form-group">
				<label for="city" class="col-sm-2 control-label">City</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="city" name="city"
						value="${sessionScope.application.getStudent().getCity()}"
						placeholder="City" aria-describedby="basic-addon2" required>
				</div>
			</div>


			<div class="form-group">
				<label for="state" class="col-sm-2 control-label">State</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="state" name="state"
						value="${sessionScope.application.getStudent().getStateOrTeritory()}"
						placeholder="State" aria-describedby="basic-addon2" required>
				</div>
			</div>
			<!-- ***********************COUNTRY********************************* -->
			
			<div class="form-group">
				<label for="country_label" class="col-sm-2 control-label">Country</label>
				<div class="col-sm-4 col-xs-4">
					<select class="form-control sel" id="country_label">
						<option value="United States">United States</option>
						<option value="India">India</option>
						<option value="China">China</option>
						<option value="Canada">Canada</option>
					</select>
				</div>
			</div>
<!-- 

			<div class="form-group ">
				<label for="country" class="col-sm-2 control-label">Country</label>
				<div class="col-sm-4 col-xs-4">
					<div class="btn-group ">
						<button class="btn dropdown-toggle" name="recordinput"
							data-toggle="dropdown">
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
				<label for="zipCode" class="col-sm-2 control-label">Zip Code</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="zipCode" name="zipCode"
						value="${sessionScope.application.getStudent().getZipcode()}"
						placeholder="Zip Code" aria-describedby="basic-addon2" required>
				</div>
			</div>


			<div class="form-group">
				<label for="degreeEarned" class="col-sm-2 control-label">Degree
					Earned</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="degreeEarned"
						name="degreeEarned" placeholder="Degree Earned"
						value="${sessionScope.application.getStudent().getDegreeEarned()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>

			<div class="form-group">
				<label for="major" class="col-sm-2 control-label">Major</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="major" name="major"
						value="${sessionScope.application.getStudent().getMajor()}"
						placeholder="Major" aria-describedby="basic-addon2" required>
				</div>
			</div>

			<div class="form-group">
				<label for="gpa" class="col-sm-2 control-label">GPA</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="gpa" name="gpa"
						value="${sessionScope.application.getStudent().getGpa()}"
						placeholder="GPA" aria-describedby="basic-addon2" required>
				</div>
			</div>


			<div class="form-group">
			<label for="enroll_term_label" class="col-sm-2 control-label department_label">Enrollment Term</label>
				<div class="col-sm-4 col-xs-4">
					<select class="form-control sel" id="enroll_term_label">
						<option value="Spring 2016">Spring 2016</option>
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
							<option value="ACCF">ACCF</option>
							<option value="ECGR">ECGR</option>
							<option value="GEOS">GEOS</option>
							<option value="ITCS">ITCS</option>
							<option value="ITIS">ITIS</option>
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
						<option value="BS">BS</option>
						<option value="MS">MS</option>
						<option value="PHD">PHD</option>
						<option value="CERT">CERT</option>
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
						<option value="">None</option>
						<option value="GRE">GRE</option>
						<option value="GMAT">GMAT</option>
					</select>
				</div>
				<div class="col-sm-2 col-xs-2">
					<input type="text" class="form-control" id="test_gre_gmat"
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
						<option value="">None</option>
						<option value="TOEFL">TOEFL</option>
						<option value="IELTS">IELTS</option>
					</select>
				</div>
				<div class="col-sm-2 col-xs-2">
					<input type="text" class="form-control" id="test_toefl_ielts"
									name="test_toefl_ielts" aria-describedby="basic-addon2" required>
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
								name="test_toefl_ielts" aria-describedby="basic-addon2" required>

						</div>
					</div>

				</div>
			</div>
 -->

			<div class="form-group">
				<label for="workOrgName" class="col-sm-2 control-label">Work
					Organisation Name</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="workOrgName"
						name="workOrgName"
						value="${sessionScope.application.getStudent().getWorkOrgName()}"
						placeholder="Work Organisation Name"
						aria-describedby="basic-addon2" required>
				</div>
			</div>


			<div class="form-group">
				<label for="yearsWorked" class="col-sm-2 control-label">Years
					Worked</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="yearsWorked"
						name="yearsWorked" placeholder="Years Worked"
						value="${sessionScope.application.getStudent().getYearsWorked()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>

			<div class="form-group">
				<label for="role" class="col-sm-2 ApplicationControllercontrol-label">Role</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="role" name="role"
						value="${sessionScope.application.getStudent().getKeyRole()}"
						placeholder="Role" aria-describedby="basic-addon2" required>
				</div>
			</div>

			<div class="form-group">
				<label for="sop" class="col-sm-2 control-label">Statement Of
					Purpose</label>
				<div class="col-sm-4 col-xs-4">
					<textarea class="form-control" rows="5" id="sop_content"
						name="sop_content"
						placeholder="Brief Statement of Purpose in 300 Words"
						aria-describedby="basic-addon2">${sessionScope.application.getSop_content()}</textarea>
				</div>
			</div>


			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-10">
					<input type="hidden" id="appID" name="appID"
						value="${sessionScope.application.getApp_id()}">
					<button type="submit" class="btn btn-primary" id="action"
						name="action" value="Save">Save</button>
					<button type="submit" class="btn btn-primary" id="action"
						name="action" value="Submit">Submit Application</button>
				</div>
			</div>
			<input type="hidden" name="test_toefl_ielts_lb" value=""
				id="test_toefl_ielts_lb"></input> 
			<input type="hidden"
				name="test_gre_gmat_lb" value="" id="test_gre_gmat_lb"></input> 
			<input
				type="hidden" name="country_lb" value="" id="country_lb"></input> 
			<input
				type="hidden" name="department_lb" value="something"
				id="department_lb"></input> 
			<input type="hidden" name="degree_lb"
				value="" id="degree_lb"></input> 
			<input type="hidden"
				name="enroll_term_lb" value="" id="enroll_term_lb"></input>
		</form>
	</div>

	<script>
	$( document ).ready($(function(){
		$("#country_label").val("${sessionScope.student.getCountry()}");
		})
	);
	$( document ).ready($(function(){
		$("#enroll_term_label").val("Spring 2016");
		})
	);
	$( document ).ready($(function(){
		$("#degree_label").val("${sessionScope.application.getDegree().getDegID()}");
		})
	);
	$( document ).ready($(function(){
		$("#department_label").val("${sessionScope.application.getDepartment().getDeptID()}");
		})
	);
	
	//TODO: Have to fetch the correct test code and its value from backend
	$( document ).ready($(function(){
		$("#test_toefl_ielts_label").val("${sessionScope.application.getDepartment().getDeptID()}");
		})
	);
	$( document ).ready($(function(){
		$("#test_gre_gmat_label").val("${sessionScope.application.getDepartment().getDeptID()}");
		})
	);
	</script>
</div>

	<script>
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
	
	<%@include file="footer.jsp"%>
</body>
</html>