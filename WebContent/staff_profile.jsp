<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Profile</title>
</head>
<%@ include file = 'faculty_header.jsp' %>
<body>
<div id="wrap">
	<div class="col-md-offset-3">
	
		<form class="form-horizontal" id="profile" method="POST"
			action="ProfileEdit">
			
			<div class="form-group">
					<label for="email" class="col-sm-2 control-label">Email
						</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" id="email" class="form-control"
							name="email" placeholder="Email"
							aria-describedby="basic-addon1" value="${STAFF.getEmail()}"
							disabled>
					</div>
				</div>
			
			
			<div class="form-group">
					<label for="firstName" class="col-sm-2 control-label">First
						Name</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" id="firstName" class="form-control"
							name="firstName" placeholder="First Name"
							aria-describedby="basic-addon1" value="${STAFF.getFirstName()}"
							required>
					</div>
				</div>
				<div class="form-group">
					<label for="lastName" class="col-sm-2 control-label">Last
						Name</label>
					<div class="col-sm-4 col-xs-4">
						<input type="text" class="form-control" id="lastName"
							name="lastName" placeholder="Last Name"
							aria-describedby="basic-addon2" value="${STAFF.getLastName()}"
							required>
					</div>
				</div>
			
			<div class="form-group">
				<label for="phoneNumber" class="col-sm-2 control-label">Phone
					Number</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="phoneNumber"
						name="phoneNumber" placeholder="Phone Number XXX-XXX-XXXX"
						value="${sessionScope.STAFF.getPhone()}" aria-describedby="basic-addon2"
						required>
				</div>
			</div>
			
			<div class="form-group">
				<label for="phoneNumber" class="col-sm-2 control-label">SSN</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="ssn"
						name="ssn" placeholder="SSN"
						value="${sessionScope.STAFF.getSsn()}" aria-describedby="basic-addon2"
						required>
				</div>
			</div>
			
			<div class="form-group">
				<label for="streetAddress" class="col-sm-2 control-label">Street
					Address</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="streetAddress"
						name="streetAddress" placeholder="Street Address"
						value="${sessionScope.STAFF.getStAddress()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>
			<div class="form-group">
				<label for="aptNumber" class="col-sm-2 control-label">Apt
					Number</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="aptNumber"
						name="aptNumber" placeholder="Apartment Number"
						value="${sessionScope.STAFF.getAptNo()}"
						aria-describedby="basic-addon2" required>
				</div>
			</div>
			<div class="form-group">
				<label for="city" class="col-sm-2 control-label">City</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="city" name="city"
						value="${sessionScope.STAFF.getCity()}"
						placeholder="City" aria-describedby="basic-addon2" required>
				</div>
			</div>
			<div class="form-group">
				<label for="state" class="col-sm-2 control-label">State</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="state" name="state"
						value="${sessionScope.STAFF.getStateOrUT()}"
						placeholder="State" aria-describedby="basic-addon2" required>
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
			<div class="form-group">
				<label for="zipCode" class="col-sm-2 control-label">Zip Code</label>
				<div class="col-sm-4 col-xs-4">
					<input type="text" class="form-control" id="zipCode" name="zipCode"
						value="${sessionScope.STAFF.getZipcode()}"
						placeholder="Zip Code" aria-describedby="basic-addon2" required>
				</div>
			</div>
			<div class="form-group">
			<div class="col-sm-offset-4 col-sm-2">
			<div class="row">
				<input type="submit"  onclick="return confirm('Are you sure?')" class="btn btn-primary" value="Register"><a href="faculty.jsp" class="btn btn-danger" role="button">Cancel</a>
				</div>
			</div>
		</div>
	</form>
	</div>
	</div>
	<div id="footer">
		<%@include file="footer.jsp"%>
	</div>
</body>



</html>