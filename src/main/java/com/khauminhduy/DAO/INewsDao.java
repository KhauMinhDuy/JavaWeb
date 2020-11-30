package com.khauminhduy.dao;

import com.khauminhduy.model.News;

import java.util.List;

public interface INewsDao {

    List<News> findByCategoryId(long categoryId);

    boolean save(News news);
}
