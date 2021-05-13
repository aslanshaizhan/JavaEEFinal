package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

class DBConnection {
    static Connection getConnection() throws SQLException, ClassNotFoundException {
        final String jdbcURL = "jdbc:postgresql://localhost:5432/edu";
        final String dbUser = "postgres";
        final String dbPassword = "123";

        Class.forName("org.postgresql.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

        return connection;
    }
}
