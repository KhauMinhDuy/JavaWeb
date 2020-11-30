package com.khauminhduy.controller.web;

import com.khauminhduy.service.ICategoryService;
import com.khauminhduy.service.INewService;
import com.khauminhduy.service.impl.CategoryService;
import com.khauminhduy.service.impl.NewService;

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
        ICategoryService categoryService = new CategoryService();
        INewService newService = new NewService();

        req.setAttribute("categoryList", categoryService.findAll());
        req.setAttribute("newService", newService.findByCategoryId(1));

        RequestDispatcher dispatcher = req.getRequestDispatcher("view/web/home.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
