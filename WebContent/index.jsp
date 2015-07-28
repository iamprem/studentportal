<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/application.css">
  
<title>Welcome Page</title>
<!-- Pahes Needed -->
<%@ include file="header.jsp"%>
</head>
<body>
<div id="wrap">
<div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:940;height:300;">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="http://www.uncc.edu/sites/default/files/styles/front-page-banner/public/spotlight/flickr-2014.jpg?itok=y3WTasR6" style="width:940;height:300;">
    </div>

    <div class="item">
      <img src="http://cres.uncc.edu/sites/cres.uncc.edu/files/images/Union-web.jpeg" style="width:940;height:300;">
    </div>

    <div class="item">
      <img src="http://analytics.uncc.edu/sites/analytics.uncc.edu/files/media/Woodward%2520Hall%2520Night.jpg" style="width:940;height:300;">
    </div>

    <div class="item">
      <img src="http://complexity.uncc.edu/sites/complexity.uncc.edu/files/imagecache/home_page_image/Woodward.jpg" style="width:940;height:300;">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

This is a test!

</div>
<div id = "footer">
<%@ include file="footer.jsp"%>
</div>

</body>
</html>