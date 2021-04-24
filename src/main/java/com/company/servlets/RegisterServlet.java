package com.company.servlets;

import com.company.database.User;
import com.company.entities.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        name = "registerServlet",
        urlPatterns = "/register"
)
public class RegisterServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User userDao = new User();

        userDao.addUser( new UserEntity(
                req.getParameter("login"),
                req.getParameter("password"),
                req.getParameter("fname"),
                req.getParameter("lname")
                )
        );

        req.getRequestDispatcher("register.jsp").forward(req, resp);
    }
}
