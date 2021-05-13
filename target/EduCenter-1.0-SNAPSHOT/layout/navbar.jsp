
    <div class="container">
        <div class="navbar-header">

            <div class="navbar-brand">
                <a class="logo" href="index.jsp">
                    <img src="assets/img/logo-alt.png" alt="logo">
                </a>
            </div>


            <button class="navbar-toggle">
                <span></span>
            </button>

        </div>
<jsp:useBean id="user" class="model.User" scope="session"/>
        <nav id="nav">
            <ul class="main-menu nav navbar-nav navbar-right">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="courses.jsp">Courses</a></li>
                <li><a href="allBlogs">Blog</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <%if (user.getName() == null) {%>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="register.jsp">Register</a></li>
                <%} else if (user.getName() != null) {%>
                <li><a href="#"><jsp:getProperty name="user" property="name"/></a></li>
                <li><a href="logout">Logout</a></li>
                <%}%>
            </ul>
        </nav>

    </div>
