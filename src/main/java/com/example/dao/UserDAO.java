package com.example.dao;

import java.sql.*;

public class UserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/login_db";
    private String jdbcUsername = "root"; // Ton utilisateur MySQL
    private String jdbcPassword = "Mulolo.00123"; // Ton mot de passe MySQL

    private static final String VALIDATE_USER_SQL =
            "SELECT * FROM users WHERE username=? AND password=?";

    public boolean validate(String username, String password) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

            PreparedStatement stmt = connection.prepareStatement(VALIDATE_USER_SQL);
            stmt.setString(1, username);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            boolean isValid = rs.next();
            connection.close();
            return isValid;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
