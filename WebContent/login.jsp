<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login into Portal</title>
<%@ include file="common_header.jsp"%>
</head>
<body>
	<div id= "wrap">
	<br />
	<br />
	<br />
	<br />
	<br />
	<div class="col-md-offset-3">
	<form class="form-horizontal" id="loginform" method="POST"
		action="LoginController">
		
		
		<div class="form-group">
			<label for="userName" class="col-sm-2 control-label">Email</label>
			<div class="col-sm-4 col-xs-4">
				<input type="email" class="form-control" id="userName" 
					name="userName" placeholder="Registered Email"
					aria-describedby="basic-addon2" required>
					<label id ="vaildateUser" class="error"  style="color: #F00000;"></label>
			</div>
		</div>
		
		<div class="form-group">
			<label for="password" class="col-sm-2 control-label">Password</label>
			<div class="col-sm-4 col-xs-4">
				<input type="password" class="form-control" id="password"
					name="password" placeholder="Enter your password"
					aria-describedby="basic-addon2" required>
			</div>
		</div>

		<div class="form-group">
			<label for="userEmail" class="col-sm-2 control-label">User
				Type</label>
			<div class="col-sm-4 col-xs-4">
				<label class="radio-inline"> <input checked type="radio"
					name="userType" value="student">Student
				</label> 
				<label class="radio-inline"> <input type="radio"
					name="userType" value="faculty">Faculty
				</label>

			</div>
		</div>
		
		<%
String s = "";
String login_msg=(String)request.getAttribute("error");  
if(login_msg!=null){
s = login_msg.toString();
}

%>


<input id="error_message" type="hidden" name="error_msg" value="<%=s %>" />

<script>

$('document').ready(function() {
	$('#loginform').validator()
	value = $("#error_message").val(); 
	if (value == "Invaid Username and Password"){
		alert(value);
		window.location = "login.jsp";
	}
	});
</script>

		<div class="form-group">
			<div class="col-sm-offset-3 col-sm-10">
				<button type="Login" class="btn btn-primary" id="login">Login</button>
			</div>
		</div>
		<div class="form-group">
		<a href="forgotPwd.jsp" class="col-sm-3 col-md-offset-2">Forgot Password</a>
		<a href="register.jsp">Register</a><br>
		</div>
		

	</form>
	</div>
</div>
<div id = "footer">
<%@ include file="footer.jsp"%>
</div>
	
</body>
</html>