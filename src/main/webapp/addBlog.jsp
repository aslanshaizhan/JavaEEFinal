<html>
<head>
    <title>New Blog</title>
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
                    <li><a href="index-2.html">Home</a></li>
                    <li>Add Blog</li>
                </ul>
                <h1 class="white-text">New Blog</h1>
            </div>
        </div>
    </div>
</div>


<div id="contact" class="section">
    <div class="container">

        <div class="row">

            <div class="" style="padding-left: 250px; padding-right: 250px;">
                <div class="contact-form">
                    <form action="addBlog" method="post">
                        <input type="hidden" name="userid" value="<%=user.getId()%>">
                        <input class="input" type="text" name="title" placeholder="Title">
                        <input type="hidden" name="userid" value="<%=user.getId()%>">
                        <input class="input" type="text" name="body" placeholder="Text">
                        <button class="main-button icon-button pull-right" type="submit">Send</button>
                    </form>
                </div>
            </div>




        </div>

    </div>

</div>
<jsp:include page="layout/footer.jsp"/>
<jsp:include page="layout/navbar.jsp"/>
</body>
</html>
