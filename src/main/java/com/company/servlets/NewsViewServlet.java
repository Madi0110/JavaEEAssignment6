package com.company.servlets;

import com.company.database.News;
import com.company.database.User;
import com.company.entities.NewsEntity;
import com.company.entities.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        name = "newsViewServlet",
        urlPatterns = "/view"
)
public class NewsViewServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        News newsDao = new News();
        User userDao = new User();

        NewsEntity news = newsDao.getNews(Integer.parseInt(req.getParameter("v")));
        UserEntity user = userDao.getUser(news.getAuthorId());

        req.setAttribute("title", news.getTitle());
        req.setAttribute("body", news.getBody());
        req.setAttribute("author", user.getLogin());

        req.getRequestDispatcher("view.jsp").forward(req, resp);
    }
}
