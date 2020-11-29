package com.khauminhduy.controller.web;

import com.khauminhduy.dao.impl.CategoryDAO;
import com.khauminhduy.service.ICategoryService;
import com.khauminhduy.service.impl.CategoryService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/home"})
public class Home extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            CategoryDAO categoryDAO = new CategoryDAO();
            req.setAttribute("categories", categoryDAO.findAll());
            RequestDispatcher dispatcher = req.getRequestDispatcher("view/web/home.jsp");
            dispatcher.forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
