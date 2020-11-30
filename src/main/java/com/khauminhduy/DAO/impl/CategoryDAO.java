package com.khauminhduy.dao.impl;

import com.khauminhduy.dao.ICategoryDao;
import com.khauminhduy.model.Category;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import static com.khauminhduy.dao.Connect.getConnection;

public class CategoryDAO implements ICategoryDao {

    @Override
    public List<Category> findAll() {
        List<Category> categories = new ArrayList<>();
        try (PreparedStatement statement = getConnection().prepareStatement("select * from category;");){
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    String name = resultSet.getString("name");
                    String code = resultSet.getString("code");
                    categories.add(new Category(name, code));
                }
            }
            return categories;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Collections.emptyList();
    }
}
