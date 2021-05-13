package servlet;

import dao.BlogDAO;
import model.Blog;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/blogDetail")
public class BlogDetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BlogDAO postDao = new BlogDAO();
        try {
            Integer blogid = 0;

            if (request.getParameter("blogid") != null) {
                blogid = Integer.parseInt(request.getParameter("blogid"));
            }
            Blog blog = postDao.getBlog(blogid);

            request.setAttribute("blog", blog);

           request.getRequestDispatcher("blogDetail.jsp")
            .forward(request,response);

        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }
}
