package model;

import java.io.Serializable;
import java.util.List;

public class Blog implements Serializable {
    private int id;
    private String title;
    private String body;
    private int userid;
    private User user;
    private List<Comment> comments;

    public Blog(){}

    public Blog(int id, String title, String body, int userid, User user) {
        this.id = id;
        this.title = title;
        this.body = body;
        this.userid = userid;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
}
