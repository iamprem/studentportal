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

<div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:304px;height:228px;">
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
      <img src="http://admissions.uncc.edu/sites/default/files/styles/modal_window_slider/public/15007246634_148eeb04bd_o.jpg?itok=hHy7xWNr" style="width:304px;height:228px;">
    </div>

    <div class="item">
      <img src="http://cres.uncc.edu/sites/cres.uncc.edu/files/images/Union-web.jpeg" style="width:304px;height:228px;">
    </div>

    <div class="item">
      <img src="http://analytics.uncc.edu/sites/analytics.uncc.edu/files/media/Woodward%2520Hall%2520Night.jpg" style="width:304px;height:228px;">
    </div>

    <div class="item">
      <img src="http://complexity.uncc.edu/sites/complexity.uncc.edu/files/imagecache/home_page_image/Woodward.jpg" style="width:304px;height:228px;">
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