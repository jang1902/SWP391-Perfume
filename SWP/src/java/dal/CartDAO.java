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
import java.util.Calendar;
import model.Cart;
import model.Category;
import model.Item;
import model.Product;
import model.Size;
import model.User;

/**
 *
 * @author ASUS
 */
public class CartDAO extends DBContext{
    public Product getProductsById(int id) {

        String sql = "select * from Products where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));// đọc từ bảng
                p.setCategory_id(rs.getInt("category_id"));
                p.setTitle(rs.getString("title"));
                p.setGender_id(rs.getInt("gender_id"));
      
                p.setDiscount_id(rs.getInt("discount_id"));
                p.setThumbnail(rs.getString("thumbnail"));
                p.setDescription(rs.getString("description"));
                p.setCreated_at(rs.getDate("created_at"));
                p.setCreated_at(rs.getDate("updated_at"));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public Size getSizeByID(int id){
        String sql = "select * from Sizes where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Size(rs.getInt("id"), rs.getString("name"), rs.getInt("value"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

}