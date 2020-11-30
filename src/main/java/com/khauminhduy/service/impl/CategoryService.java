package com.khauminhduy.service.impl;

import com.khauminhduy.dao.ICategoryDao;
import com.khauminhduy.dao.impl.CategoryDAO;
import com.khauminhduy.model.Category;
import com.khauminhduy.service.ICategoryService;

import java.util.List;

public class CategoryService implements ICategoryService {

    private ICategoryDao categoryDao;

    public CategoryService() {
        this.categoryDao = new CategoryDAO();
    }

    @Override
    public List<Category> findAll() {
        return categoryDao.findAll();
    }
}
