<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="common_header.jsp"%>
</head>
<body>
	<div class="wrap">
		<div class="container-fluid">
			<div class="faculty-bg">
				<div class="jumbotron">
					<div class="row">
						<br> <br> <br>
						<div class="col-sm-2 col-md-2"></div>
						<div class="col-sm-4 col-md-4">
							<h2>Review Application</h2>
							<p>
								<a class="btn btn-primary btn-lg" href="filter.jsp"
									role="button">Application</a>
							</p>
						</div>

						<div class="col-sm-4 col-md-4">
							<h2>Manage Courses</h2>
							<p>
								<a class="btn btn-primary btn-lg"
									href="DegreeController?deptID=${sessionScope.STAFF.getdeptId()}"
									role="button">${sessionScope.STAFF.getdeptId()} Courses</a>
							</p>
						</div>
						<div class="col-sm-3 col-md-3"></div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div class="footer">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>