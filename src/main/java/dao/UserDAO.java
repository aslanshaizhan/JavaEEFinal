package dao;

import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    public User login(String email, String password) throws SQLException, ClassNotFoundException {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE email = ? and password = ?");
        statement.setString(1, email);
        statement.setString(2, password);

        ResultSet resultSet = statement.executeQuery();

        User user = null;

        if (resultSet.next()) {
            user = new User();
            user.setId(resultSet.getInt("id"));
            user.setName(resultSet.getString("name"));
            user.setEmail(resultSet.getString("email"));
            user.setRole(resultSet.getString("role"));
            user.setPassword(resultSet.getString("password"));
        }

        resultSet.close();
        statement.close();
        connection.close();

        return user;
    }

    public User getById(int id) throws SQLException, ClassNotFoundException {
        Connection connection = DBConnection.getConnection();
        User user = new User();
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE id = ?");
        statement.setInt(1, id);

        ResultSet resultSet = statement.executeQuery();
        resultSet.next();

        user.setId(resultSet.getInt("id"));
        user.setName(resultSet.getString("name"));
        user.setEmail(resultSet.getString("email"));
        user.setPassword(resultSet.getString("password"));
        user.setRole(resultSet.getString("role"));

        resultSet.close();
        statement.close();
        connection.close();

        return user;
    }

    public int register(User user) throws SQLException, ClassNotFoundException {
        int res = 0;
        Connection connection = DBConnection.getConnection();

        PreparedStatement statement = connection.prepareStatement("INSERT INTO users(name,email,role,password) values(?,?,?,?)");

        statement.setString(1, user.getName());
        statement.setString(2, user.getEmail());
        statement.setString(3, user.getRole());
        statement.setString(4, user.getPassword());

        res = statement.executeUpdate();

        statement.close();
        connection.close();

        return res;
    }


}
