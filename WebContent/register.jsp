<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<%@ include file="header.jsp"%>
</head>
<body>
<div class="panel panel-primary ">

  <!-- Default panel contents -->
  <div class="panel-heading">** Registration **</div>
  <div class="panel-body">
    <p>Fill in the details to proceed with the registration</p>
  </div>
</div>
<form id="registerUser" action="TempServlet" method="POST">
<div class="col-xs-4 col-md-offset-4">
<h4> Username </h4>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="text" class="form-control" name="userName" placeholder="Username" aria-describedby="basic-addon1" required>
</div>
<h4> Email </h4>
<div class="input-group">
  <input type="email" class="form-control" name="userEmail" placeholder="Recipient's username" aria-describedby="basic-addon2" required >
  <span class="input-group-addon" id="basic-addon2">@example.com</span>
</div>

<h4> Password </h4>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">*</span>
  <input type="password" class="form-control" id="password" placeholder="Password" aria-describedby="basic-addon1" required>
</div>

<h4> Confirm Password </h4>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">*</span>
  <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm Password" aria-describedby="basic-addon1" required>
</div>

<br/>
<div class="form-group">
    <div class="col-sm-offset-4 col-sm-10">
      <button type="submit" class="btn btn-primary">Register</button>
    </div>
  </div>
 
</div>	
</form>

<script type="text/javascript">
$('#registerUser').validator()
</script>
<%@ include file="footer.jsp" %>
</body>
</html>