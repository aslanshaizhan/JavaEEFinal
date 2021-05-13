<%@ page import="model.Comment" %>
<html>
<head>
    <title>Contact us</title>
    <jsp:include page="layout/head.jsp"/>
</head>
<body>
<header id="header">
    <%@include file="layout/navbar.jsp"%>
</header>
<jsp:useBean id="blog" class="model.Blog" scope="request"/>
<jsp:setProperty name="blog" property="*"/>

<div class="hero-area section">

    <div class="bg-image bg-parallax overlay" style="background-image:url(assets/img/blog-post-background.jpg)"></div>

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 text-center">
                <ul class="hero-area-tree">
                    <li><a href="index-2.html">Home</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li>Blog Detail</li>
                </ul>
                <h1 class="white-text"><jsp:getProperty name="blog" property="title"/></h1>
                <ul class="blog-post-meta">
                    <li class="blog-meta-author">By : <a href="#"><%=blog.getUser().getName()%></a></li>
                    <li>14 May, 2021</li>
                    <li class="blog-meta-comments"><a href="#"><i class="fa fa-comments"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>


<div id="blog" class="section">

    <div class="container">

        <div class="row">

            <div id="main" class="col-md-9">

                <div class="blog-post">
                    <p><%=blog.getBody()%></p>
                    <blockquote>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                    </blockquote>
                    <p>Te option apeirian corrumpit nec, has et tollit minimum molestie. Nam et justo everti, tale repudiandae cu nec. Aliquip legendos evertitur ne sit, mazim sadipscing sea ei. Sea no facete probatus vulputate, ex pri reque tempor. Odio adolescens ius te, docendi suscipit indoctum at qui.</p>
                </div>


                <div class="blog-share">
                    <h4>Share This Post:</h4>
                    <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                </div>


                <div class="blog-comments">
                    <h3>Comments</h3>

                    <%for (Comment comment: blog.getComments()){%>
                    <div class="media">
                        <div class="media-left">
                            <img src="assets/img/avatar.png" alt="">
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading"><%=comment.getUser().getName()%></h4>
                            <p><%=comment.getComment()%></p>
                        </div>

                    </div>
                    <%}%>

                    <%if (user.getName()==null){%>
                    <div class="blog-reply-form">
                        <h3>Leave Comment</h3>

                            <textarea class="input" placeholder="Enter your Message"></textarea>

                            <a href="login.jsp"><button class="main-button icon-button">Submit</button></a>

                    </div>
                    <%}%>
                    <%if (user.getName()!=null){%>
                    <div class="blog-reply-form">
                        <h3>Leave Comment</h3>
                        <form action="CommentServlet" method="post">
                            <input type="hidden" name="blogid" value="<%=blog.getId()%>">
                            <input type="hidden" name="userid" value="<%=user.getId()%>">
                            <textarea class="input" name="comment" placeholder="Enter your Message"></textarea>
                            <button class="main-button icon-button" type="submit">Submit</button>
                        </form>
                    </div>
                    <%}%>

                </div>

            </div>


            <div id="aside" class="col-md-3">

                <div class="widget search-widget">
                    <form>
                        <input class="input" type="text" name="search">
                        <button><i class="fa fa-search"></i></button>
                    </form>
                </div>


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
                        <p><small>By : John Doe .18 Oct, 2020</small></p>
                    </div>


                    <div class="single-post">
                        <a class="single-post-img" href="blog-post.html">
                            <img src="assets/img/post02.jpg" alt="">
                        </a>
                        <a href="blog-post.html">Pro eu error molestie deserunt.</a>
                        <p><small>By : NNN .18 Oct, 2021</small></p>
                    </div>


                    <div class="single-post">
                        <a class="single-post-img" href="blog-post.html">
                            <img src="assets/img/post03.jpg" alt="">
                        </a>
                        <a href="blog-post.html">Pro eu error molestie deserunt.</a>
                        <p><small>By : John Doe .18 Oct, 2020</small></p>
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
