package com.khauminhduy.service;


import com.khauminhduy.model.News;

import java.util.List;

public interface INewService {

    List<News> findByCategoryId(long categoryId);

    boolean save(News news);

    News findOne(News news);

    boolean update(News news);

    boolean delete(News news);
}
