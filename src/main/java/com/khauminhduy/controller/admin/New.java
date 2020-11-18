package com.khauminhduy.controller.admin;

import com.khauminhduy.DAO.NewsDAO;
import com.khauminhduy.constant.SystemConstant;
import com.khauminhduy.model.News;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin-new"})
public class New extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        News news = new News();
        NewsDAO newDAO = new NewsDAO();
        String startPage = req.getParameter("startPage");
        String visiblePages = req.getParameter("visiblePages");
        if (startPage != null) {
            news.setStartPage(Integer.parseInt(startPage));
        } else {
            news.setStartPage(1);
        }
        if (visiblePages != null) {
            news.setVisiblePages(Integer.parseInt(visiblePages));
        } else {
            news.setVisiblePages(5);
        }
        int offset = (news.getStartPage() - 1) * news.getVisiblePages();
        news.setListResult(newDAO.findAll(offset, news.getVisiblePages()));
        news.setTotalPages((int) Math.ceil((double) newDAO.totalItems() / news.getVisiblePages()));
        req.setAttribute(SystemConstant.MODEL, news);
        RequestDispatcher dispatcher = req.getRequestDispatcher("view/admin/new/List.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
