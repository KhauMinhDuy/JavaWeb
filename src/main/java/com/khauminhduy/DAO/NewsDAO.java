package com.khauminhduy.DAO;

import com.khauminhduy.model.News;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import static com.khauminhduy.DAO.Connect.getConnection;

public class NewsDAO {

    public News findOne(long id) {
        try {
            PreparedStatement statement = getConnection().prepareStatement(
                    "SELECT id,title, thumbnail, shortdescription, content, createdate, modifieddate, createby, modifiedby, categoryid FROM news WHERE id = ?");
            statement.setLong(1, id);
            News news = new News();
            try (ResultSet resultSet = statement.executeQuery();) {
                while (resultSet.next()) {
                    news.setId(resultSet.getInt(1));
                    news.setTitle(resultSet.getString(2));
                    news.setThumbnail(resultSet.getString(3));
                    news.setShortDescription(resultSet.getString(4));
                    news.setContent(resultSet.getString(5));
                    news.setCreatedDate(resultSet.getTimestamp(6));
                    news.setModifiedDate(resultSet.getTimestamp(7));
                    news.setCreatedBy(resultSet.getTimestamp(8));
                    news.setModifiedBy(resultSet.getTimestamp(9));
                    news.setCategoryId(resultSet.getInt(10));
                }
                return news;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }
    }

    public List<News> findCategoryById(long categoryId) {
        try {
            PreparedStatement statement = getConnection().prepareStatement(
                    "SELECT id,title, thumbnail, shortdescription, content, createdate, modifieddate, createby, modifiedby, categoryid FROM news WHERE categoryid = ?;");
            statement.setLong(1, categoryId);
            ResultSet resultSet = statement.executeQuery();
            List<News> lists = new ArrayList<>();
            while (resultSet.next()) {
                News news = new News();
                news.setId(resultSet.getInt(1));
                news.setTitle(resultSet.getString(2));
                news.setThumbnail(resultSet.getString(3));
                news.setShortDescription(resultSet.getString(4));
                news.setContent(resultSet.getString(5));
                news.setCreatedDate(resultSet.getTimestamp(6));
                news.setModifiedDate(resultSet.getTimestamp(7));
                news.setCreatedBy(resultSet.getTimestamp(8));
                news.setModifiedBy(resultSet.getTimestamp(9));
                news.setCategoryId(resultSet.getInt(10));
                lists.add(news);
            }
            return lists;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return Collections.emptyList();
        }
    }

    public long save(News news) {
        try {
            PreparedStatement statement = getConnection().prepareStatement("INSERT INTO news(title, thumbnail, shortdescription, content, createdate, modifieddate, createby, modifiedby, categoryid " +
                    "VALUES (?,?,?,?,?,?,?,?,?));");
            statement.setString(1, news.getTitle());
            statement.setString(2, news.getThumbnail());
            statement.setString(3, news.getShortDescription());
            statement.setString(4, news.getContent());
            statement.setTimestamp(5, news.getCreatedDate());
            statement.setTimestamp(6, news.getModifiedDate());
            statement.setTimestamp(7, news.getCreatedBy());
            statement.setTimestamp(8, news.getModifiedBy());
            statement.setLong(9, news.getCategoryId());
            return statement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return 0;
        }
    }

    public void update(News news) {

    }

    public void delete(News news) {

    }

    public List<News> findAll() {
        try {
            PreparedStatement statement = getConnection().prepareStatement(
                    "SELECT id,title, thumbnail, shortdescription, content, createdate, modifieddate, createby, modifiedby, categoryid FROM news;");
            ResultSet resultSet = statement.executeQuery();
            List<News> lists = new ArrayList<>();
            while (resultSet.next()) {
                News news = new News();
                news.setId(resultSet.getInt(1));
                news.setTitle(resultSet.getString(2));
                news.setThumbnail(resultSet.getString(3));
                news.setShortDescription(resultSet.getString(4));
                news.setContent(resultSet.getString(5));
                news.setCreatedDate(resultSet.getTimestamp(6));
                news.setModifiedDate(resultSet.getTimestamp(7));
                news.setCreatedBy(resultSet.getTimestamp(8));
                news.setModifiedBy(resultSet.getTimestamp(9));
                news.setCategoryId(resultSet.getInt(10));
                lists.add(news);
            }
            return lists;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return Collections.emptyList();
        }
    }

    public List<News> findAll(int offset, int limit) {
        try {
            PreparedStatement statement = getConnection().prepareStatement(
                    "SELECT * FROM news limit ?, ?;");
            statement.setInt(1, offset);
            statement.setInt(2, limit);
            ResultSet resultSet = statement.executeQuery();
            List<News> lists = new ArrayList<>();
            while (resultSet.next()) {
                News news = new News();
                news.setId(resultSet.getInt(1));
                news.setTitle(resultSet.getString(2));
                news.setThumbnail(resultSet.getString(3));
                news.setShortDescription(resultSet.getString(4));
                news.setContent(resultSet.getString(5));
                news.setCreatedDate(resultSet.getTimestamp(6));
                news.setModifiedDate(resultSet.getTimestamp(7));
                news.setCreatedBy(resultSet.getTimestamp(8));
                news.setModifiedBy(resultSet.getTimestamp(9));
                news.setCategoryId(resultSet.getInt(10));
                lists.add(news);
            }
            return lists;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return Collections.emptyList();
        }
    }

    public int totalItems() {
        try {
            PreparedStatement statement = getConnection().prepareStatement("select count(*) from news;");
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            } else {
                return 0;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return 0;
        }
    }
}
