<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>Registration</title>
<%@ include file="header.jsp"%>
</head>
<body>
<form id="emailForm" action="EmailController" method="post">
<table><tr><td><label for="email">Email Address:</label></td><td>  </td>
						<td>
						<input type="text" id="email" name="email" required placeholder="Please Enter Email Address"  size="51"/></td></tr></table><br/>
						<input
							type="submit" value="SUBMIT" class="button" />
						</form>
						
						${requestScope.Message }
<%@ include file="footer.jsp" %>
</body>
</html>