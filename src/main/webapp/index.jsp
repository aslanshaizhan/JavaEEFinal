<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EduCenter</title>
    <jsp:include page="layout/head.jsp"/>
</head>
<body>
<header id="header" class="transparent-nav">
<%@include file="layout/navbar.jsp"%>
</header>
<div id="home" class="hero-area">

    <div class="bg-image bg-parallax overlay" style="background-image:url(assets/img/home-background.jpg)"></div>

    <div class="home-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h1 class="white-text">Edusite Free Online Training Courses</h1>
                    <p class="lead white-text">Libris vivendo eloquentiam ex ius, nec id splendide abhorreant, eu pro alii error homero.</p>
                    <a class="main-button icon-button" href="#">Get Started!</a>
                </div>
            </div>
        </div>
    </div>
</div>


<div id="about" class="section">

    <div class="container">

        <div class="row">
            <div class="col-md-6">
                <div class="section-header">
                    <h2>Welcome to Edusite</h2>
                    <p class="lead">Libris vivendo eloquentiam ex ius, nec id splendide abhorreant.</p>
                </div>

                <div class="feature">
                    <i class="feature-icon fa fa-flask"></i>
                    <div class="feature-content">
                        <h4>Online Courses </h4>
                        <p>Ceteros fuisset mei no, soleat epicurei adipiscing ne vis. Et his suas veniam nominati.</p>
                    </div>
                </div>


                <div class="feature">
                    <i class="feature-icon fa fa-users"></i>
                    <div class="feature-content">
                        <h4>Expert Teachers</h4>
                        <p>Ceteros fuisset mei no, soleat epicurei adipiscing ne vis. Et his suas veniam nominati.</p>
                    </div>
                </div>


                <div class="feature">
                    <i class="feature-icon fa fa-comments"></i>
                    <div class="feature-content">
                        <h4>Community</h4>
                        <p>Ceteros fuisset mei no, soleat epicurei adipiscing ne vis. Et his suas veniam nominati.</p>
                    </div>
                </div>

            </div>
            <div class="col-md-6">
                <div class="about-img">
                    <img src="assets/img/about.png" alt="">
                </div>
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


<div id="cta" class="section">

    <div class="bg-image bg-parallax overlay" style="background-image:url(assets/img/cta1-background.jpg)"></div>


    <div class="container">

        <div class="row">
            <div class="col-md-6">
                <h2 class="white-text">Ceteros fuisset mei no, soleat epicurei adipiscing ne vis.</h2>
                <p class="lead white-text">Ceteros fuisset mei no, soleat epicurei adipiscing ne vis. Et his suas veniam nominati.</p>
                <a class="main-button icon-button" href="#">Get Started!</a>
            </div>
        </div>

    </div>

</div>

<jsp:include page="layout/footer.jsp"/>
<jsp:include page="layout/script.jsp"/>
</body>
</html>
