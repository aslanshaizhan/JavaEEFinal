package dao;

import model.Course;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CourseDAO {

    public static Course getCourse(int id){
        Course course = new Course();

        try{
            Connection connection=DBConnection.getConnection();
            PreparedStatement ps=connection.prepareStatement("select * from courses where id=?");
            ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                course.setId(rs.getInt(1));
                course.setName(rs.getString(2));
                course.setType(rs.getString(3));
                course.setPrice(rs.getInt(4));
            }
            connection.close();
        }catch(Exception ex){ex.printStackTrace();}

        return course;
    }

    public static List<Course> getAllCourses(){

        List<Course> list=new ArrayList<>();

        try{
            Connection con=DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from courses");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Course course = new Course();
                course.setId(rs.getInt(1));
                course.setName(rs.getString(2));
                course.setType(rs.getString(3));
                course.setPrice(rs.getInt(4));
                list.add(course);
            }
            con.close();
        }catch(Exception e){e.printStackTrace();}
        return list;
    }
}
