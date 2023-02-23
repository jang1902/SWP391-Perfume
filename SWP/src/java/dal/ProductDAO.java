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
import model.Gallery;
import model.Gender;
import model.Product;
import model.Size;
import model.SizeProduct;

/**
 *
 * @author asus
 */
public class ProductDAO extends DBContext {

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from products";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("id"));
                c.setCategory_id(rs.getInt("category_id"));
                c.setTitle(rs.getString("title"));
                c.setGender_id(rs.getInt("gender_id"));
                c.setDiscount_id(rs.getInt("discount_id"));
                c.setThumbnail(rs.getString("thumbnail"));
                c.setDescription(rs.getString("description"));
                c.setCreated_at(rs.getDate("created_at"));
                c.setCreated_at(rs.getDate("updated_at"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductByID(int id) {
        String sql = "select * from Products where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setCategory_id(rs.getInt("category_id"));
                p.setTitle(rs.getString("title"));
                p.setGender_id(rs.getInt("gender_id"));
                p.setDiscount_id(rs.getInt("discount_id"));
                p.setThumbnail(rs.getString("thumbnail"));
                p.setDescription(rs.getString("description"));
                p.setCreated_at(rs.getDate("created_at"));
                p.setUpdated_at(rs.getDate("updated_at"));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getProductsByCid(int cid) {
        List<Product> list = new ArrayList<>();
        String sql = "select  p.title, p.gender_id, p.id, p.thumbnail, p.updated_at, p.discount_id, d.value, min(sp.price_out) as price, min(sp.sid) as sid from Products p\n" +
"  join SizeProduct sp on p.id = sp.pid\n" +
"  join Sizes s on s.id = sp.sid\n" +
"  join Discounts d on d.id = p.discount_id\n" +
"  where p.category_id=?\n" +
"  group by p.title, p.id, p.thumbnail, p.updated_at , p.discount_id, d.value, p.gender_id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setTitle(rs.getString("title"));
                c.setThumbnail(rs.getString("thumbnail"));
                c.setUpdated_at(rs.getDate("updated_at"));
                c.setId(rs.getInt("id"));
                c.setGender_id(rs.getInt("gender_id"));
                SizeProduct sp = new SizeProduct();
                sp.setPid(rs.getInt("id"));
                sp.setSid(rs.getInt("sid"));
                sp.setPrice_out(rs.getInt("price"));
                c.setSizeproduct(sp);
                Discount d = new Discount();
                d.setId(rs.getInt("discount_id"));
                d.setValue(rs.getInt("value"));
                c.setDiscount(d);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Gallery> getGalleryByPid(int pid) {
        List<Gallery> list = new ArrayList<>();
        String sql = "select * from Galeries\n"
                + "  where product_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Gallery g = new Gallery();
                g.setId(rs.getInt("id"));
                g.setProduct_id(rs.getInt("product_id"));
                g.setThumbnail(rs.getString("thumbnail"));
                list.add(g);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    


    public List<Size> getSizeByPID(int pid) {
        ArrayList<Size> ls = new ArrayList<>();
        String sql = "select * from Sizes s join SizeProduct sp\n"
                + "  on s.id = sp.sid\n"
                + "  where sp.pid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Size s = new Size();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setValue(rs.getInt("value"));
                ls.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return ls;
    }

    public Gender getGenderByID(int id) {
        String sql = "select * from Genders g join Products p\n"
                + "  on g.id = p.gender_id\n"
                + "  where p.id =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Gender s = new Gender();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public SizeProduct getSizeProductByPidSid(int pid, int sid) {
        String sql = "select * from SizeProduct where pid=? and sid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            st.setInt(2, sid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                SizeProduct s = new SizeProduct();
                s.setPid(rs.getInt("pid"));
                s.setSid(rs.getInt("sid"));
                s.setQuantity(rs.getInt("quantity"));
                s.setPrice_in(rs.getInt("price_in"));
                s.setPrice_out(rs.getInt("price_out"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Category getCategoryNameById(int cid) {
        String sql = "select * from Categories where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category s = new Category();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //san pham lien quan
    public List<Product> randomRelative(int gid, int pid) throws SQLException {
        ArrayList<Product> ls = new ArrayList<>();

        String sql = "select top 4 p.title, p.gender_id, p.id, p.thumbnail, p.updated_at, p.discount_id, d.value, min(sp.price_out) as price, min(sp.sid) as sid from Products p\n"
                + "  join SizeProduct sp on p.id = sp.pid\n"
                + "  join Sizes s on s.id = sp.sid\n"
                + "  join Discounts d on d.id = p.discount_id\n"
                + "  where p.gender_id=? and p.id !=?\n"
                + "  group by p.title, p.id, p.thumbnail, p.updated_at , p.discount_id, d.value, p.gender_id\n"
                + "  order by NEWID()  ";
        PreparedStatement st = connection.prepareStatement(sql);

        st.setInt(1, gid);
        st.setInt(2, pid);

        ResultSet rs = st.executeQuery();

        while (rs.next()) {
            Product c = new Product();
                c.setTitle(rs.getString("title"));
                c.setThumbnail(rs.getString("thumbnail"));
                c.setUpdated_at(rs.getDate("updated_at"));
                c.setId(rs.getInt("id"));
                c.setGender_id(rs.getInt("gender_id"));
                SizeProduct sp = new SizeProduct();
                sp.setPid(rs.getInt("id"));
                sp.setSid(rs.getInt("sid"));
                sp.setPrice_out(rs.getInt("price"));
                c.setSizeproduct(sp);
                Discount d = new Discount();
                d.setId(rs.getInt("discount_id"));
                d.setValue(rs.getInt("value"));
                c.setDiscount(d);
                ls.add(c);
        }
        return ls;
    }

    public static void main(String[] args) throws SQLException {


        
    }

}
