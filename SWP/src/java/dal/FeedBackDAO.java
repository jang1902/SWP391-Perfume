/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Feedback;
import model.Product;
import model.User;

/**
 *
 * @author canduykhanh
 */
public class FeedBackDAO extends DBContext {

    //getUserById
    public User getUserById(int id) {
        String sql = "select * from Users u where u.id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getDate(10), rs.getDate(11), rs.getInt(12), rs.getString(13));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    //get all feedback by pid
    public List<Feedback> getFeedbackByPid(int pid) {
        List<Feedback> listF = new ArrayList<>();
        String sql = "select f.id,f.user_id,f.product_id,f.note,f.rating,f.created_at from FeedBacks f \n"
                + "join Users u on f.user_id = u.id\n"
                + "join Products p on f.product_id = p.id\n"
                + "where p.id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Feedback f = new Feedback();
                f.setId(rs.getInt("id"));
                User u = getUserById(rs.getInt("user_id"));
                f.setUser(u);
                ProductDAO pd = new ProductDAO();
                Product p = pd.getProductByID(rs.getInt("product_id"));
                f.setNote(rs.getString("note"));
                f.setRating(rs.getInt("rating"));
                f.setCreated_at(rs.getDate("created_at"));
                listF.add(f);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listF;
    }

    //insert feedback 
    public void insertFeedback(User u, Product p, String note, int rating) {
        Date currentDate = Date.valueOf(LocalDate.now());
        String sql = "INSERT INTO [FeedBacks]\n"
                + "           ([user_id]\n"
                + "           ,[product_id]\n"
                + "           ,[note]\n"
                + "           ,[rating]\n"
                + "           ,[created_at]) values(?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, u.getId());
            st.setInt(2, p.getId());
            st.setString(3,note);
            st.setInt(4,rating);
            st.setDate(5, currentDate);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
