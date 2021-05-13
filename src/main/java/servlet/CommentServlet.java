package servlet;

import dao.BlogDAO;
import dao.UserDAO;
import model.Blog;
import model.Comment;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/CommentServlet")
public class CommentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserDAO userDao = new UserDAO();
        BlogDAO postDao = new BlogDAO();

        try {
            Integer blogid = Integer.parseInt(request.getParameter("blogid"));
            Integer userid = Integer.parseInt(request.getParameter("userid"));
            String com = request.getParameter("comment");
            User user = userDao.getById(userid);

            Comment comment = new Comment();
            comment.setComment(com);
            comment.setUserid(userid);
            comment.setBlogid(blogid);
            comment.setUser(user);

            int res = 0;
            if (com != null) {
                res = postDao.newComment(comment);
            }

            Blog blog = postDao.getBlog(blogid);

            request.setAttribute("blog", blog);

            System.out.println(res);
            RequestDispatcher dispatcher =request.getRequestDispatcher("blogDetail.jsp");
            dispatcher.forward(request, response);


        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }

}
