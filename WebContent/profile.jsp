<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile Edit Page</title>
<%@include file="student_header.jsp"%>
</head>
<body>
	<div id="wrap"></div>
	<div class="col-md-offset-3">
		<form class="form-horizontal" id="profile" method="POST"
			action="ProfileEdit">
			<div class="form-group">
					<label for="firstName" class="col-sm-2 control-label">First
						Name</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" id="firstName" class="form-control"
							name="firstName" placeholder="First Name"
							aria-describedby="basic-addon1" value="${student.getFirstName()}"
							required>
					</div>
				</div>
				<div class="form-group">
					<label for="lastName" class="col-sm-2 control-label">Last
						Name</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="lastName"
							name="lastName" placeholder="Last Name"
							aria-describedby="basic-addon2" value="${student.getLastName()}"
							required>
					</div>
				</div>
			
			<div class="form-group">
				<label for="phoneNumber" class="col-sm-2 control-label">Phone
					Number</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="phoneNumber"
						name="phoneNumber" placeholder="Phone Number XXX-XXX-XXXX"
						value="${sessionScope.student.getPhone()}" aria-describedby="basic-addon2"
						required>
				</div>
			</div>
			<div class="form-group">
				<label for="streetAddress" class="col-sm-2 control-label">Street
					Address</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="streetAddress"
						name="streetAddress" placeholder="Street Address"
						value="${sessionScope.student.getStAddress()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>
			<div class="form-group">
				<label for="aptNumber" class="col-sm-2 control-label">Apt
					Number</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="aptNumber"
						name="aptNumber" placeholder="Apartment Number"
						value="${sessionScope.student.getApartmentNo()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>
			<div class="form-group">
				<label for="city" class="col-sm-2 control-label">City</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="city" name="city"
						value="${sessionScope.student.getCity()}"
						placeholder="City" aria-describedby="basic-addon2" required>
				</div>
			</div>
			<div class="form-group">
				<label for="state" class="col-sm-2 control-label">State</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="state" name="state"
						value="${sessionScope.student.getStateOrTeritory()}"
						placeholder="State" aria-describedby="basic-addon2" required>
				</div>
			</div>
			<!-- ***********************COUNTRY********************************* -->
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
			<div class="form-group">
				<label for="zipCode" class="col-sm-2 control-label">Zip Code</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="zipCode" name="zipCode"
						value="${sessionScope.student.getZipcode()}"
						placeholder="Zip Code" aria-describedby="basic-addon2" required>
				</div>
			</div>
			
	</form>
	<div id="footer">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>