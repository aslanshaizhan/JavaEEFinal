package model;

public class Comment {
    private int id;
    private String comment;
    private int userid;
    private int blogid;
    private User user;

    public Comment(){}
    public Comment(int id, String comment, int userid, int blogid, User user) {
        this.id = id;
        this.comment = comment;
        this.userid = userid;
        this.blogid = blogid;
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getBlogid() {
        return blogid;
    }

    public void setBlogid(int blogid) {
        this.blogid = blogid;
    }
}
