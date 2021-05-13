package servlet;

import dao.BlogDAO;
import model.Blog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/allBlogs")
public class AllBlogsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BlogDAO blogDAO = new BlogDAO();
        try {
            List<Blog> blogs = blogDAO.getAllBlogs();
            request.setAttribute("blogs", blogs);

            request.getRequestDispatcher("blog.jsp").forward(request,response);
        }catch (ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
    }
}
