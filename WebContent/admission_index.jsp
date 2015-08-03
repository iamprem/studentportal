<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/application.css">

<title>Admissions Page</title>
<!-- Pahes Needed -->
<%@ include file="common_header.jsp"%>
</head>
<body>
	<div id="wrap">
		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			style="width: 940; height: 300;">
			<!-- Indicators -->
			<!-- <ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>

			</ol> -->

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img
						src="https://old.northcarolina.edu/campus_profiles/img/profiles/uncc/uncc-3.jpg"
						style="width: 1040px; height: 540px;">
				</div>
				<div class="item">
					<img
						src="http://english.uncc.edu/sites/english.uncc.edu/files/media/Charlotte_Skyline_2011-R_W.png"
						style="width: 1040px; height: 540px;">
				</div>
				<div class="item">
					<img src="http://www.timbuchman.com/data/photos/89_1_MG_6007.jpg"
						style="width: 1040px; height: 540px;">
				</div>
				<div class="item">
					<img src="http://cdn.c.photoshelter.com/img-get/I00002DReeEXua9k/s/750/750/UNC-Charlotte-010.jpg"
						style="width: 1040px; height: 540px;">
				</div>
				<div class="item">
					<img src="http://cri.uncc.edu/sites/cri.uncc.edu/files/media/Virtual%20Tour%20(CRI%20shot).png"
						style="width: 1040px; height: 540px;">
				</div>
				<div class="item">
					<img src="http://facilities.uncc.edu/sites/facilities.uncc.edu/files/media/Sustainability/Water."
						style="width: 1040px; height: 540px;">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>



	</div>
	<div id="footer">
		<%@ include file="footer.jsp"%>
	</div>

</body>
</html>