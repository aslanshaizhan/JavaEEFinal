package servlet;

import dao.UserDAO;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        String role = request.getParameter("role");

        UserDAO userDAO = new UserDAO();

        User user = new User(name,email,role,password);

        if (password.equals(password2)){
            try {
                userDAO.register(user);
                HttpSession session = request.getSession();
                session.setAttribute("user",user);
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }
            catch (SQLException | ClassNotFoundException e){
                System.out.println(e);
            }

        }
        else {
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
    }
}
