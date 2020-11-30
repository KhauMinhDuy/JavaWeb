package com.khauminhduy.controller.admin.api;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.khauminhduy.model.News;
import com.khauminhduy.service.INewService;
import com.khauminhduy.service.impl.NewService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

@WebServlet(urlPatterns = {"/api-admin-new"})
public class NewAPI extends HttpServlet {

    public static final String APPLICATION_JSON = "application/json";
    public static final String UTF_8 = "UTF-8";
    private INewService newService;

    @Override
    public void init() throws ServletException {
        newService = new NewService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding(UTF_8);
            resp.setContentType(APPLICATION_JSON);
            BufferedReader reader = req.getReader();
            StringBuilder builder = new StringBuilder();
            String line = "";
            while ((line = reader.readLine()) != null) {
                builder.append(line);
            }
            System.out.println(builder.toString());
            News mapper = new ObjectMapper().readValue(builder.toString(), News.class);
            mapper = newService.findOne(mapper);
            String news = new ObjectMapper().writeValueAsString(mapper);
            System.out.println(news);
        } catch (JsonProcessingException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding(UTF_8);
            resp.setContentType(APPLICATION_JSON);
            BufferedReader reader = req.getReader();
            StringBuilder builder = new StringBuilder();
            String line = "";
            while ((line = reader.readLine()) != null) {
                builder.append(line);
            }
            News mapper = new ObjectMapper().readValue(builder.toString(), News.class);
            newService.save(mapper);
        } catch (JsonProcessingException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding(UTF_8);
            resp.setContentType(APPLICATION_JSON);
            BufferedReader reader = req.getReader();
            StringBuilder builder = new StringBuilder();
            String line = "";
            while ((line = reader.readLine()) != null) {
                builder.append(line);
            }
            News news = new ObjectMapper().readValue(builder.toString(), News.class);
            boolean update = newService.update(news);
            System.out.println(update);
        } catch (JsonProcessingException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding(UTF_8);
            resp.setContentType(APPLICATION_JSON);
            BufferedReader reader = req.getReader();
            StringBuilder builder = new StringBuilder();
            String line = "";
            while ((line = reader.readLine()) != null) {
                builder.append(line);
            }
            News news = new ObjectMapper().readValue(builder.toString(), News.class);
            boolean delete = newService.delete(news);
            System.out.println(delete);
        } catch (JsonProcessingException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }
}
