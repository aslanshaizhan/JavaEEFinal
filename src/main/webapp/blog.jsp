<html>
<head>
    <title>Sign in</title>
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
                    <li>Blog</li>
                </ul>
                <h1 class="white-text">Blog Page</h1>
            </div>
        </div>
    </div>
</div>

<jsp:useBean id="blogs" type="java.util.List<model.Blog>" scope="request"/>
<jsp:setProperty name="blogs" property="*"/>
<div id="blog" class="section">

    <div class="container">

        <div class="row">

            <div id="main" class="col-md-9">

                <div class="row">
                <%for (int i = 0; i < blogs.size(); i++) {%>
                    <div class="col-md-6">
                        <div class="single-blog">
                            <div class="blog-img">
                                <a href="blogDetail?blogid=<%=blogs.get(i).getId()%>">
                                    <img src="assets/img/blog01.jpg" alt="">
                                </a>
                            </div>
                            <h4><a href="blog-post.html"><%out.print(blogs.get(i).getTitle());%></a></h4>
                            <div class="blog-meta">
                                <span class="blog-meta-author">By: <a href="#"><%out.print(blogs.get(i).getUser().getName());%></a></span>
                                <div class="pull-right">
                                    <span>14 May, 2021</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%}%>


                    <div class="col-md-6">
                        <div class="single-blog">
                            <div class="blog-img">
                                <a href="blog-post.html">
                                    <img src="assets/img/blog02.jpg" alt="">
                                </a>
                            </div>
                            <h4><a href="blog-post.html">Pro eu error molestie deserunt. At per viderer bonorum persecuti.</a></h4>
                            <div class="blog-meta">
                                <span class="blog-meta-author">By: <a href="#">John Doe</a></span>
                                <div class="pull-right">
                                    <span>18 Oct, 2017</span>
                                    <span class="blog-meta-comments"><a href="#"><i class="fa fa-comments"></i> 35</a></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                </div>

            </div>


            <div id="aside" class="col-md-3">

                <%  if (user.getName()!=null){
                    if (user.getRole().equals("teacher")){%>
                <div class="widget search-widget">
                    <form>
                        <a href="addBlog.jsp">New Post</a>
                    </form>
                </div>
                <%}}%>

                <div class="widget category-widget">
                    <h3>Categories</h3>
                    <a class="category" href="#">Web <span>12</span></a>
                    <a class="category" href="#">Css <span>5</span></a>
                    <a class="category" href="#">Wordpress <span>24</span></a>
                    <a class="category" href="#">Html <span>78</span></a>
                    <a class="category" href="#">Business <span>36</span></a>
                </div>


                <div class="widget posts-widget">
                    <h3>Recents Posts</h3>

                    <div class="single-post">
                        <a class="single-post-img" href="blog-post.html">
                            <img src="assets/img/post01.jpg" alt="">
                        </a>
                        <a href="blog-post.html">Pro eu error molestie deserunt.</a>
                        <p><small>By : John Doe .18 Oct, 2017</small></p>
                    </div>


                    <div class="single-post">
                        <a class="single-post-img" href="blog-post.html">
                            <img src="assets/img/post02.jpg" alt="">
                        </a>
                        <a href="blog-post.html">Pro eu error molestie deserunt.</a>
                        <p><small>By : John Doe .18 Oct, 2017</small></p>
                    </div>


                    <div class="single-post">
                        <a class="single-post-img" href="blog-post.html">
                            <img src="assets/img/post03.jpg" alt="">
                        </a>
                        <a href="blog-post.html">Pro eu error molestie deserunt.</a>
                        <p><small>By : John Doe .18 Oct, 2017</small></p>
                    </div>

                </div>


                <div class="widget tags-widget">
                    <h3>Tags</h3>
                    <a class="tag" href="#">Web</a>
                    <a class="tag" href="#">Photography</a>
                    <a class="tag" href="#">Css</a>
                    <a class="tag" href="#">Responsive</a>
                    <a class="tag" href="#">Wordpress</a>
                    <a class="tag" href="#">Html</a>
                    <a class="tag" href="#">Website</a>
                    <a class="tag" href="#">Business</a>
                </div>

            </div>

        </div>

    </div>

</div>


<jsp:include page="layout/footer.jsp"/>
<jsp:include page="layout/navbar.jsp"/>
</body>
</html>
