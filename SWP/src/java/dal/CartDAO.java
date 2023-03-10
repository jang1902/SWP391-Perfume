/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Category;
import model.Discount;
import model.Gender;
import model.Product;
import model.Size;

/**
 *
 * @author ASUS
 */
public class CartDAO extends DBContext {

    public Product getProductsById(int id) {

        String sql = "select * from Products where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));// đọc từ bảng
                Category ca = new Category();
                ca.setId(rs.getInt("category_id"));
                p.setCategory(ca);
                p.setTitle(rs.getString("title"));
                Gender g = new Gender();
                g.setId(rs.getInt("gender_id"));
                p.setGender(g);
                Discount d = new Discount();
                d.setId(rs.getInt("discount_id"));
                p.setDiscount(d);
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

    public Size getSizeByID(int id) {
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
