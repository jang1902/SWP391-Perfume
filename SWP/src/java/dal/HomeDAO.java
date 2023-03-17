/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Discount;
import model.Gender;
import model.OrderDetail;
import model.Product;
import model.Size;
import model.SizeProduct;

/**
 *
 * @author hp
 */
public class HomeDAO extends DBContext {

    public List<Product> getProductNew() { // lay 12 san pham khac nhau cua moi loai
        List<Product> list = new ArrayList<>();
        String sql = "select top 12 p.gender_id, p.title, p.id, p.thumbnail, p.updated_at, p.discount_id, d.value, min(sp.price_out) as price, min(sp.sid) as sid from Products p\n"
                + "join SizeProduct sp on p.id = sp.pid\n"
                + "join Sizes s on s.id = sp.sid\n"
                + "join Discounts d on d.id = p.discount_id\n"
                + "group by p.title, p.id, p.thumbnail, p.updated_at, p.gender_id, p.discount_id, d.value\n"
                + "order by p.updated_at desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setGender_id(rs.getInt("gender_id"));
                c.setTitle(rs.getString("title"));
                c.setThumbnail(rs.getString("thumbnail"));
                c.setUpdated_at(rs.getDate("updated_at"));
                c.setId(rs.getInt("id"));
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

    public List<Product> getProductDiscount() { // lay san pham giam gia
        List<Product> list = new ArrayList<>();
        String sql = "select top 4 p.gender_id, p.title, p.id, p.thumbnail, min(sp.price_out) as price, p.discount_id, d.value , min(sp.sid) as sid from Products p\n"
                + "join SizeProduct sp on p.id = sp.pid\n"
                + "join Sizes s on s.id = sp.sid\n"
                + "join Discounts d on p.discount_id = d.id\n"
                + "where p.discount_id != 0\n"
                + "group by p.title, p.id, p.thumbnail, d.value, p.gender_id, p.discount_id\n"
                + "order by p.discount_id desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setGender_id(rs.getInt("gender_id"));
                c.setTitle(rs.getString("title"));
                c.setThumbnail(rs.getString("thumbnail"));
                c.setId(rs.getInt("id"));
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
    
    public Product getAllProduct(int pid, int sid) {
        
        String sql = " select * from products p join SizeProduct sp \n" +
"               on p.id = sp.pid where pid = ? and sid = ? and quantity > 0";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            st.setInt(2, sid);
            ResultSet rs = st.executeQuery();
           if (rs.next()) {
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
                return c;
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

    public static void main(String[] args) {
        HomeDAO d = new HomeDAO();
        System.out.println(d.getProductBestSeller().get(1).getThumbnail());
    }
 
     
    public List<Product> getProductBestSeller() { // lay 6 san pham ban chay nhat
        List<Product> list = new ArrayList<>();
        String sql = "SELECT top 6 \n"
                + "     \n"
                + "      [product_id]\n"
                + "      ,[size_id]\n"
                + "    \n"
                + "      ,sum(num) as num\n"
                + "      \n"
                + "  FROM [SWP391_1].[dbo].[Order_Details]\n"
                + "  group by [product_id]\n"
                + "      ,[size_id]\n"
                + "    order by num desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            
            while (rs.next()) {
                Product c = getAllProduct(rs.getInt("product_id"), rs.getInt("size_id"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

}
