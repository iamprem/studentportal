<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Continue Application</title>
<%@include file="header.jsp"%>
</head>
<body>
	<div id="personel"></div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<div class="col-md-offset-3">
		<form class="form-horizontal" id="enrollform" method="POST"
			action="ApplicationController">
			<div class="form-group">

				<label for="firstName" class="col-sm-2 control-label">First
					Name</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" id="firstName" class="form-control"
						name="firstName" placeholder="First Name" value="${requestScope.application.getStudent().getFirstName()}"
						aria-describedby="basic-addon1" required>
				</div>
			</div>
			<div class="form-group">
				<label for="lastName" class="col-sm-2 control-label">Last
					Name</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="lastName"
						name="lastName" placeholder="Last Name" value="${requestScope.application.getStudent().getLastName()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>

			<div class="form-group">
				<label for="gender" class="col-sm-2 control-label">Gender</label>
				<div class="col-sm-4 col-xs-4">
					<label class="radio-inline"> <input type="radio" value="1" 
						name="userType">Male
					</label> <label class="radio-inline"> <input type="radio" value="0"
						name="userType">Female
					</label>
				</div>
			</div>


			<div class="form-group">
				<label for="gender" class="col-sm-2 control-label">Date Of
					Birth</label>
				<div class="col-sm-4 col-xs-4">
					<div class='input-group date' id='datetimepicker10'>
						<input type='text' class="form-control" value="${requestScope.application.getStudent().getDob()}"/> <span
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
						name="phoneNumber" placeholder="Phone Number XXX-XXX-XXXX"
						value="${requestScope.application.getStudent().getPhone()}"
						aria-describedby="basic-addon2">
				</div>
			</div>




			<div class="form-group">
				<label for="ssn" class="col-sm-2 control-label">SSN</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="ssn" name="ssn"
						value="${requestScope.application.getStudent().getSsn()}"
						placeholder="SSN" aria-describedby="basic-addon2">
				</div>
			</div>

			<div class="form-group">
				<label for="streetAddress" class="col-sm-2 control-label">Street
					Address</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="streetAddress"
						name="streetAddress" placeholder="Street Address"
						value="${requestScope.application.getStudent().getStAddress()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>


			<div class="form-group">
				<label for="aptNumber" class="col-sm-2 control-label">Apt
					Number</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="aptNumber"
						name="aptNumber" placeholder="Apartment Number"
						value="${requestScope.application.getStudent().getApartmentNo()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>


			<div class="form-group">
				<label for="city" class="col-sm-2 control-label">City</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="city" name="city"
						value="${requestScope.application.getStudent().getCity()}"
						placeholder="City" aria-describedby="basic-addon2" required>
				</div>
			</div>


			<div class="form-group">
				<label for="state" class="col-sm-2 control-label">State</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="state" name="state"
						value="${requestScope.application.getStudent().getStateOrTeritory()}"
						placeholder="State" aria-describedby="basic-addon2" required>
				</div>
			</div>
			<!-- ***********************COUNTRY********************************* -->

			<div class="form-group">
				<label for="zipCode" class="col-sm-2 control-label">Zip Code</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="zipCode" name="zipCode"
						value="${requestScope.application.getStudent().getZipcode()}"
						placeholder="Zip Code" aria-describedby="basic-addon2" required>
				</div>
			</div>


			<div class="form-group">
				<label for="degreeEarned" class="col-sm-2 control-label">Degree
					Earned</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="degreeEarned"
						name="degreeEarned" placeholder="Degree Earned"
						value="${requestScope.application.getStudent().getDegreeEarned()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>

			<div class="form-group">
				<label for="major" class="col-sm-2 control-label">Major</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="major" name="major"
						value="${requestScope.application.getStudent().getMajor()}"
						placeholder="City" aria-describedby="basic-addon2" required>
				</div>
			</div>

			<div class="form-group">
				<label for="gpa" class="col-sm-2 control-label">GPA</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="gpa" name="gpa"
						value="${requestScope.application.getStudent().getGpa()}"
						placeholder="GPA" aria-describedby="basic-addon2" required>
				</div>
			</div>


			<div class="form-group">
				<label for="workOrgName" class="col-sm-2 control-label">Work
					Organisation Name</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="workOrgName"
						name="workOrgName" value="${requestScope.application.getStudent().getWorkOrgName()}"
						placeholder="Work Organisation Name<"
					aria-describedby="
						basic-addon2" required>
				</div>
			</div>


			<div class="form-group">
				<label for="yearsWorked" class="col-sm-2 control-label">Years
					Worked</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="yearsWorked"
						name="yearsWorked" placeholder="Years Worked"
						value="${requestScope.application.getStudent().getYearsWorked()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>

			<div class="form-group">
				<label for="role" class="col-sm-2 control-label">Role</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="role" name="role"
						value="${requestScope.application.getStudent().getKeyRole()}"
						placeholder="Role" aria-describedby="basic-addon2" required>
				</div>
			</div>

			<div class="form-group">
				<label for="sop" class="col-sm-2 control-label">Statement Of
					Purpose</label>
				<div class="col-sm-4 col-xs-4">
					<textarea class="form-control" rows="5" id="comment" name="sop"
						placeholder="Brief Statement of Purpose in 300 Words"
						aria-describedby="basic-addon2">${requestScope.application.getSop_content()}</textarea>
				</div>
			</div>


			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-10">
					<button type="Login" class="btn btn-primary">Create
						Application</button>
				</div>
			</div>


		</form>
	</div>




	<%@include file="footer.jsp"%>
</body>
</html>