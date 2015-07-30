<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<script type="text/javascript" src="js/register.js"></script>
<%@ include file="header.jsp"%>
</head>
<body>

	<div id="home">
		<div class="jumbotron">
			<h1>Registration</h1>
			<p>
				Enter the below details to register<br /> and get updates
			</p>
			<p>
				<a class="btn btn-primary btn-lg" href="#registerUser" role="button">Learn
					more</a>
			</p>
		</div>
	</div>

	<form class="form-horizontal" id="registerUser" action="RegisterController"
		method="POST">


		<h4>Enter the Below Details</h4>

		
		<div class="form-group">
			<label for="userEmail" class="col-sm-2 control-label">Email</label>
			<div class="col-sm-6">
				<input type="email" class="form-control" id="userEmail focusout="validateEmail()"
					name="userEmail" placeholder="Recipient's username"
					aria-describedby="basic-addon2" required>
			</div>
		</div>
		<br /> <br /> <br />

		<div class="form-group">
			<label for="password" class="col-sm-2 control-label">Password</label>
			<div class="col-sm-6">
				<input type="password" class="form-control" id="password" name="password"
					placeholder="Password" aria-describedby="basic-addon1" required>
					<span class="help-block">Minimum of 6 characters</span>
			</div>
		</div>
		<br />

		<div class="form-group">
			<label for="confirmPassword" class="col-sm-2 control-label">Confirm
				Password</label>
			<div class="col-sm-6">
				<input type="password" class="form-control" id="confirmPassword" name="confirmPassword"
					data-match="#password"  data-match-error="Whoops, these don't match" placeholder="Confirm Password" aria-describedby="basic-addon1"
					required>
					<div class="help-block with-errors"></div>
			</div>
		</div>
		<br />
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-2">
				<input type="submit"  onclick="return confirm('Are you sure?')" class="btn btn-primary" value="Register">
			</div>
		</div>

	</form>
	<script type="text/javascript">
		$('#registerUser').validator()
	</script>
	<%@ include file="footer.jsp"%>
</body>
</html>