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
<div class="col-xs-4 col-md-offset-4">
<h4> Username </h4>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
  <span id="helpBlock" class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
</div>
<h4> Email </h4>
<div class="input-group">
  <input type="text" class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2">
  <span class="input-group-addon" id="basic-addon2">@example.com</span>
</div>

<h4> Password </h4>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">*</span>
  <input type="password" class="form-control" placeholder="Password" aria-describedby="basic-addon1">
</div>

<h4> Confirm Password </h4>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">*</span>
  <input type="password" class="form-control" placeholder="Confirm Password" aria-describedby="basic-addon1">
</div>
<br/>
<div class="form-group">
    <div class="col-sm-offset-4 col-sm-10">
      <button type="submit" class="btn btn-primary">Register</button>
    </div>
  </div>
 
</div>
<%@ include file="footer.jsp" %>
</body>
</html>