package com.khauminhduy.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {

    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/webcourse";
    private static final String USER = "root";
    private static final String PASSWORD = "Aa123456!";
    private static Connection instance = null;

    private Connect() {
    }

    public static Connection getConnection() {
        if (instance == null) {
            synchronized (Connect.class) {
                if (instance == null) {
                    try {
                        Class.forName(JDBC_DRIVER);
                        instance = DriverManager.getConnection(URL, USER, PASSWORD);
                    } catch (SQLException | ClassNotFoundException throwables) {
                        throwables.printStackTrace();
                    }
                }
            }
        }
        return instance;
    }
}
