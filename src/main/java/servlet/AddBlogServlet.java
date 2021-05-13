package servlet;

import dao.BlogDAO;
import dao.UserDAO;
import model.Blog;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/addBlog")
public class AddBlogServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean status;
        PrintWriter out = response.getWriter();
        String title = request.getParameter("title");
        String body = request.getParameter("body");
        try {
            Integer userId = Integer.parseInt(request.getParameter("userid"));
            String post = request.getParameter("post");
            User user = new UserDAO().getById(userId);

            Blog newblog = new Blog();
            newblog.setTitle(title);
            newblog.setBody(body);
            newblog.setUserid(userId);
            status = new BlogDAO().newBlog(newblog);
            if(status){
                out.println("<script>alert('Model.Post successfully added!')</script>");
                request.setAttribute("post", post);
                RequestDispatcher dispatcher =request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request, response);
            }else{
                out.println("<script>alert('Error ! This kind of post already exists in the base')</script>");
                response.sendRedirect("index.jsp");
            }

        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }

}
