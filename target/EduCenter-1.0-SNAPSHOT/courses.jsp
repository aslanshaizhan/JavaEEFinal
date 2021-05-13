<html>
<head>
    <title>Courses</title>
    <jsp:include page="layout/head.jsp"/>
</head>
<body>
<header id="header">
    <%@include file="layout/navbar.jsp"%>
</header>

<div class="hero-area section">

    <div class="bg-image bg-parallax overlay" style="background-image:url(assets/img/page-background.jpg)"></div>

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 text-center">
                <ul class="hero-area-tree">
                    <li><a href="index.jsp">Home</a></li>
                    <li>Courses</li>
                </ul>
                <h1 class="white-text">Courses</h1>
            </div>
        </div>
    </div>
</div>

<div id="courses" class="section">

    <div class="container">

        <div class="row">
            <div class="section-header text-center">
                <h2>Explore Courses</h2>
                <p class="lead">Libris vivendo eloquentiam ex ius, nec id splendide abhorreant.</p>
            </div>
        </div>


        <div id="courses-wrapper">

            <div class="row">

                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="course">
                        <a href="#" class="course-img">
                            <img src="assets/img/course01.jpg" alt="">
                            <i class="course-link-icon fa fa-link"></i>
                        </a>
                        <a class="course-title" href="#">Beginner to Pro in Excel: Financial Modeling and Valuation</a>
                        <div class="course-details">
                            <span class="course-category">Business</span>
                            <span class="course-price course-free">Free</span>
                        </div>
                    </div>
                </div>


                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="course">
                        <a href="#" class="course-img">
                            <img src="assets/img/course02.jpg" alt="">
                            <i class="course-link-icon fa fa-link"></i>
                        </a>
                        <a class="course-title" href="#">Introduction to CSS </a>
                        <div class="course-details">
                            <span class="course-category">Web Design</span>
                            <span class="course-price course-premium">Premium</span>
                        </div>
                    </div>
                </div>


                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="course">
                        <a href="#" class="course-img">
                            <img src="assets/img/course03.jpg" alt="">
                            <i class="course-link-icon fa fa-link"></i>
                        </a>
                        <a class="course-title" href="#">The Ultimate Drawing Course | From Beginner To Advanced</a>
                        <div class="course-details">
                            <span class="course-category">Drawing</span>
                            <span class="course-price course-premium">Premium</span>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="course">
                        <a href="#" class="course-img">
                            <img src="assets/img/course04.jpg" alt="">
                            <i class="course-link-icon fa fa-link"></i>
                        </a>
                        <a class="course-title" href="#">The Complete Web Development Course</a>
                        <div class="course-details">
                            <span class="course-category">Web Development</span>
                            <span class="course-price course-free">Free</span>
                        </div>
                    </div>
                </div>

            </div>


            <div class="row">

                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="course">
                        <a href="#" class="course-img">
                            <img src="assets/img/course05.jpg" alt="">
                            <i class="course-link-icon fa fa-link"></i>
                        </a>
                        <a class="course-title" href="#">PHP Tips, Tricks, and Techniques</a>
                        <div class="course-details">
                            <span class="course-category">Web Development</span>
                            <span class="course-price course-free">Free</span>
                        </div>
                    </div>
                </div>


                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="course">
                        <a href="#" class="course-img">
                            <img src="assets/img/course06.jpg" alt="">
                            <i class="course-link-icon fa fa-link"></i>
                        </a>
                        <a class="course-title" href="#">All You Need To Know About Web Design</a>
                        <div class="course-details">
                            <span class="course-category">Web Design</span>
                            <span class="course-price course-free">Free</span>
                        </div>
                    </div>
                </div>


                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="course">
                        <a href="#" class="course-img">
                            <img src="assets/img/course07.jpg" alt="">
                            <i class="course-link-icon fa fa-link"></i>
                        </a>
                        <a class="course-title" href="#">How to Get Started in Photography</a>
                        <div class="course-details">
                            <span class="course-category">Photography</span>
                            <span class="course-price course-free">Free</span>
                        </div>
                    </div>
                </div>


                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="course">
                        <a href="#" class="course-img">
                            <img src="assets/img/course08.jpg" alt="">
                            <i class="course-link-icon fa fa-link"></i>
                        </a>
                        <a class="course-title" href="#">Typography From A to Z</a>
                        <div class="course-details">
                            <span class="course-category">Typography</span>
                            <span class="course-price course-free">Free</span>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <div class="row">
            <div class="center-btn">
                <a class="main-button icon-button" href="#">More Courses</a>
            </div>
        </div>
    </div>

</div>

<jsp:include page="layout/footer.jsp"/>
<jsp:include page="layout/navbar.jsp"/>
</body>
</html>
