package com.khauminhduy.service.impl;

import com.khauminhduy.dao.INewsDao;
import com.khauminhduy.dao.impl.NewsDAO;
import com.khauminhduy.model.News;
import com.khauminhduy.service.INewService;

import java.util.List;

public class NewService implements INewService {

    private INewsDao newsDao;

    public NewService() {
        this.newsDao = new NewsDAO();
    }

    @Override
    public List<News> findByCategoryId(long categoryId) {
        return newsDao.findByCategoryId(categoryId);
    }

    @Override
    public boolean save(News news) {
        return false;
    }
}
