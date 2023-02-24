/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Discount;
import model.Gender;
import model.Product;
import model.Size;
import model.SizeProduct;

/**
 *
 * @author hp
 */
public class CrudDAO extends DBContext {

    public List<Product> getAllProduct() { // lay het san pham 
        List<Product> list = new ArrayList<>();
        String sql = "select * from products p join SizeProduct sp \n"
                + "on p.id = sp.pid";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("id"));
                Category cate = getCategoryByCid(rs.getInt("category_id"));
                c.setCategory(cate);
                Gender g = getGenderByCid(rs.getInt("gender_id"));
                c.setGender(g);
                Discount d = getDiscountByCid(rs.getInt("discount_id"));
                c.setDiscount(d);
                c.setTitle(rs.getString("title"));
                c.setThumbnail(rs.getString("thumbnail"));
                c.setDescription(rs.getString("description"));
                SizeProduct ps = new SizeProduct();
                ps.setPid(rs.getInt("id"));
                ps.setQuantity(rs.getInt("quantity"));
                ps.setSid(rs.getInt("sid"));
                ps.setPrice_in(rs.getInt("price_in"));
                ps.setPrice_out(rs.getInt("price_out"));
                c.setSizeproduct(ps);
                Size s = getSizeByCid(rs.getInt("sid"));
                c.setSize(s);
                c.setUpdated_at(rs.getDate("updated_at"));
                c.setCreated_at(rs.getDate("created_at"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getListByPage(List<Product> list, int start, int end) { // phan trang
        List<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public Category getCategoryByCid(int cid) { // lay cac loai san pham bang category_id

        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "  FROM [dbo].[Categories]\n"
                + "  where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Category c = new Category();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Gender getGenderByCid(int gid) { // lay gioi tinh bang gender_id

        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "  FROM [dbo].[Genders]\n"
                + "  where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, gid);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Gender g = new Gender();
                g.setId(rs.getInt("id"));
                g.setName(rs.getString("name"));
                return g;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Discount getDiscountByCid(int did) { // lay gioi tinh bang gender_id

        String sql = "SELECT [id]\n"
                + "      ,[value]\n"
                + "  FROM [dbo].[Discounts]"
                + "  where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, did);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Discount d = new Discount();
                d.setId(rs.getInt("id"));
                d.setValue(rs.getInt("value"));
                return d;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Size getSizeByCid(int sid) { // lay gioi tinh bang size_id

        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[value]\n"
                + "  FROM [dbo].[Sizes]"
                + "  where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, sid);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Size d = new Size();
                d.setId(rs.getInt("id"));
                d.setValue(rs.getInt("value"));
                return d;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

}
