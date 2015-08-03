<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>Registration</title>
<%@ include file="common_header.jsp"%>
</head>
<body>
<div id = "wrap" class = "container">
<p>To reset your password, submit your email address.</p>
<p class="text-primary">${requestScope.Message }</p>
<form class="form-inline" role="form" id="emailForm" action="EmailController" method="post">
  <div class="form-group centered">
    <label for="email">Email address:</label>
    <input type="text" class="form-control" id="email" name="email" required placeholder="Enter your email address">
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>

	
	</div>
</div>

</div>
<div id = "footer">
<%@ include file="footer.jsp" %>
</div>
</body>
</html>