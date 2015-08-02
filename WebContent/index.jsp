<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>UNCC Web Portal</title>
<!-- Pahes Needed -->
<%@ include file="common_header.jsp"%>

    <!-- Custom CSS -->
    <link href="css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
</head>
<body>
<div id="wrap">
<div class="brand">UNC Charlotte</div>
    <div class="address-bar">9201 University City Blvd, Charlotte, NC 28223</div>


    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12 text-center">
                    <div id="carousel-example-generic" class="carousel slide">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img class="img-responsive img-full" src="images/slide-1.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="images/slide-2.jpg" alt="">
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="images/slide-3.jpg" alt="">
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="icon-next"></span>
                        </a>
                    </div>
                    <h2 class="brand-before">
                        <small>Welcome to</small>
                    </h2>
                    <h1 class="brand-name">UNC Charlotte Student Web Portal</h1>
                    <hr class="tagline-divider">
                    
                </div>
            </div>
        </div>

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Guide to become a
                        <strong>49er</strong>
                    </h2>
                    <hr>
                    <img class="img-responsive img-border img-left" src="images/intro-pic.jpg" alt="">
                    <hr class="visible-xs">
                    <p>UNC Charlotte is North Carolina's urban research university. Located in the state's largest metropolitan area, UNC Charlotte is among the fastest growing universities in the UNC System.</p>
                    <p>We are continually making headlines. Stories about our programs, research, students, and faculty expertise are available. For more of the latest and greatest news featuring UNC Charlotte, check out UNC Charlotte Magazine and our news feed.</p>
                    <p>In just 60 years, UNC Charlotte has emerged from being a two-year college to a large urban research university. The University’s story is one of perseverance and strong leadership, and its brief history parallels the rise of the Charlotte region as a major metropolitan area. Do you know why we’re the 49ers? Find out here.</p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>Mission Statement</strong>
                    </h2>
                    <hr>
                    <p>UNC Charlotte is North Carolina’s urban research university. It leverages its location in the state’s largest city to offer internationally competitive programs of research and creative activity, exemplary undergraduate, graduate, and professional programs, and a focused set of community engagement initiatives. UNC Charlotte maintains a particular commitment to addressing the cultural, economic, educational, environmental, health, and social needs of the greater Charlotte region.</p>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
    </div>
<div id = "footer">
<%@ include file="footer.jsp"%>
</div>

</body>
</html>