package dao;

import model.Blog;
import model.Comment;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BlogDAO {

    public List<Blog> getAllBlogs() throws SQLException, ClassNotFoundException {
        List<Blog> blogs = new ArrayList<>();
        UserDAO userDao = new UserDAO();
        Connection connection = DBConnection.getConnection();

        PreparedStatement statement = connection.prepareStatement("SELECT * FROM blogs");

        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String title = resultSet.getString("title");
            String body = resultSet.getString("body");
            int userid = resultSet.getInt("userid");
            User user = userDao.getById(userid);

            Blog post = new Blog(id,title,body,userid,user);

            blogs.add(post);
        }

        resultSet.close();
        statement.close();
        connection.close();

        return blogs;
    }

    public boolean newBlog(Blog blog) {
        try {
            Connection connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement("INSERT INTO blogs (title, body, userid) " +
                    "VALUES (?, ?, ?)");

            statement.setString(1, blog.getTitle());
            statement.setString(2, blog.getBody());
            statement.setInt(3,blog.getUserid());

            statement.executeUpdate();
            connection.close();
            return true;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }

    public Blog getBlog(Integer id) throws SQLException, ClassNotFoundException {
        UserDAO userDao = new UserDAO();
        Connection connection = DBConnection.getConnection();

        Blog blog = new Blog();

        PreparedStatement statement = connection.prepareStatement("SELECT * FROM blogs WHERE id = ? LIMIT 1");
        statement.setInt(1, id);
        ResultSet resultSet = statement.executeQuery();
        resultSet.next();

        blog.setId(resultSet.getInt("id"));
        blog.setTitle(resultSet.getString("title"));
        blog.setBody(resultSet.getString("body"));
        blog.setUserid(resultSet.getInt("userid"));
        blog.setUser(userDao.getById(resultSet.getInt("userid")));
        blog.setComments(getComment(id));

        return blog;
    }
    public List<Comment> getComment(Integer bid) throws SQLException, ClassNotFoundException {
        List<Comment> comments = new ArrayList<>();
        UserDAO userDao = new UserDAO();

        Connection con = DBConnection.getConnection();

        PreparedStatement ps = con.prepareStatement("SELECT * FROM comments WHERE blogid = ?");
        ps.setInt(1, bid);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            Integer id = rs.getInt("id");
            String comment = rs.getString("comment");
            Integer userid = rs.getInt("userid");
            Integer blogid = rs.getInt("blogid");

            User user = userDao.getById(userid);

            Comment com = new Comment(id,comment,userid,blogid,user);
            comments.add(com);
        }
        return comments;
    }

    public int newComment(Comment comment) {
        int res = 0;

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO comments (comment, userid, blogid) " +
                    "VALUES (?, ?, ?)");

            ps.setString(1, comment.getComment());
            ps.setInt(2, comment.getUserid());
            ps.setInt(3, comment.getBlogid());

            res = ps.executeUpdate();

            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return res;
    }
}
