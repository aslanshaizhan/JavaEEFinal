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
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        PrintWriter out = response.getWriter();
        UserDAO userDAO = new UserDAO();
        try {
            User user = userDAO.login(email,password);
            if (user != null){
            if(user.getRole().equals("admin")){
                HttpSession session = request.getSession();
                session.setAttribute("user",user);
                request.getRequestDispatcher("about.jsp").forward(request,response);
            }

                HttpSession session = request.getSession();
                session.setAttribute("user",user);
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }

            else {
            out.print("Error! Try again");
            request.getRequestDispatcher("login.jsp").forward(request,response);
            }

    }catch (SQLException | ClassNotFoundException e){
            System.out.println(e);
        }
}}
