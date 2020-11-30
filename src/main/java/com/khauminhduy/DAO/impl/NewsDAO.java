package com.khauminhduy.dao.impl;

import com.khauminhduy.dao.INewsDao;
import com.khauminhduy.model.News;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import static com.khauminhduy.dao.Connect.getConnection;

public class NewsDAO implements INewsDao {

    @Override
    public List<News> findByCategoryId(long categoryId) {
        List<News> newsList = new ArrayList<>();
        try (PreparedStatement statement = getConnection().prepareStatement("SELECT title FROM news WHERE categoryid = ?")) {
            statement.setLong(1, categoryId);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    String title = resultSet.getString("title");
                    News news = new News();
                    news.setTitle(title);
                    newsList.add(news);
                }
                return newsList;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return Collections.emptyList();
    }

    @Override
    public boolean save(News news) {
        try (PreparedStatement statement = getConnection().prepareStatement("INSERT INTO news(title, thumbnail, shortdescription, content, categoryid) values (?,?,?,?,?)");){
            statement.setString(1, news.getTitle());
            statement.setString(2, news.getThumbnail());
            statement.setString(3, news.getShortDescription());
            statement.setString(4, news.getContent());
            statement.setLong(5,news.getCategoryId());
            int i = statement.executeUpdate();
            if (i != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public News findOne(News news) {
        try (PreparedStatement statement = getConnection().prepareStatement("SELECT * FROM news WHERE categoryid = ? AND title = ?");){
            statement.setLong(1, news.getCategoryId());
            statement.setString(2, news.getTitle());
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    News newsTemp = new News();
                    newsTemp.setId(resultSet.getLong("id"));
                    newsTemp.setTitle(resultSet.getString("title"));
                    newsTemp.setThumbnail(resultSet.getString("thumbnail"));
                    newsTemp.setShortDescription(resultSet.getString("shortdescription"));
                    newsTemp.setContent(resultSet.getString("content"));
                    return newsTemp;
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean update(News news) {
        try (PreparedStatement statement = getConnection().prepareStatement("UPDATE news SET title = ?, content = ? WHERE id = ?")){
            statement.setString(1, news.getTitle());
            statement.setString(2, news.getContent());
            statement.setLong(3, news.getId());
            int i = statement.executeUpdate();
            if(i != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(News news) {
        try (PreparedStatement statement = getConnection().prepareStatement("DELETE FROM news WHERE id = ?")){
            statement.setLong(1, news.getId());
            int i = statement.executeUpdate();
            if(i != 0) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }
}
