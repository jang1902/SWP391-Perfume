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
import model.Product;

/**
 *
 * @author hp
 */
public class HomeDAO extends DBContext {

    public List<Product> getAllProduct() { // lay tat ca san pham 
        List<Product> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[category_id]\n"
                + "      ,[title]\n"
                + "      ,[gender_id]\n"
                + "      ,[price_in]\n"
                + "      ,[price_out]\n"
                + "      ,[discount_id]\n"
                + "      ,[thumbnail]\n"
                + "      ,[description]\n"
                + "      ,[size_id]\n"
                + "      ,[quantity]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "  FROM [SWP].[dbo].[Products]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setCategory_id(rs.getInt("category_id"));
                c.setTitle(rs.getString("title"));
                c.setGender_id(rs.getInt("gender_id"));
                c.setPrice_in(rs.getInt("price_in"));
                c.setPrice_out(rs.getInt("price_out"));
                c.setDiscount_id(rs.getInt("discount_id"));
                c.setThumbnail(rs.getString("thumbnail"));
                c.setDescription(rs.getString("description"));
                c.setSize_id(rs.getInt("size_id"));
                c.setQuantity(rs.getInt("quantity"));
                c.setCreated_at(rs.getDate("created_at"));
                c.setCreated_at(rs.getDate("updated_at"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductNew() { // lay 12 san pham khac nhau cua moi loai
        List<Product> list = new ArrayList<>();
        String sql = "  SELECT top 12		\n"
                + "                     [title], [gender_id]\n"
                + "                     ,min(price_out) as price\n"
                + "                    ,[thumbnail]\n"
                + "                    ,discount_id\n"
                + "                FROM [SWP].[dbo].[Products]\n"
                + "                group by \n"
                + "                      [title]\n"
                + "                    ,discount_id\n"
                + "                    ,[thumbnail], gender_id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setGender_id(rs.getInt("gender_id"));
                c.setSize_id(1);
                Discount d = getDiscountById(rs.getInt("discount_id"));
                c.setDiscount(d);
                c.setTitle(rs.getString("title"));
                c.setPrice_out(rs.getInt("price"));
                c.setThumbnail(rs.getString("thumbnail"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductDiscount() { // lay san pham giam gia
        List<Product> list = new ArrayList<>();
        String sql = "SELECT top 4    \n"
                + "      [title]\n"
                + "      ,[gender_id]     \n"
                + "      ,min(price_out) as price\n"
                + "      ,[discount_id]\n"
                + "      ,[thumbnail]    \n"
                + "  FROM [SWP].[dbo].[Products]\n"
                + "  where discount_id != 1\n"
                + "  group by  [title]\n"
                + "      ,[gender_id]     \n"
                + "      ,[discount_id]\n"
                + "      ,[thumbnail] ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setGender_id(rs.getInt("gender_id"));
                c.setSize_id(1);
                Discount d = getDiscountById(rs.getInt("discount_id"));
                c.setDiscount(d);
                c.setTitle(rs.getString("title"));
                c.setPrice_out(rs.getInt("price"));
                c.setThumbnail(rs.getString("thumbnail"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductBestSeller() { // lay 12 san pham khac nhau cua moi loai
        List<Product> list = new ArrayList<>();
        String sql = "  SELECT top 6		\n"
                + "                     [title], [gender_id]\n"
                + "                     ,min(price_out) as price\n"
                + "                    ,[thumbnail]\n"
                + "                    ,discount_id\n"
                + "                FROM [SWP].[dbo].[Products]\n"
                + "                group by \n"
                + "                      [title]\n"
                + "                    ,discount_id\n"
                + "                    ,[thumbnail], gender_id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setGender_id(rs.getInt("gender_id"));
                c.setSize_id(1);
                Discount d = getDiscountById(rs.getInt("discount_id"));
                c.setDiscount(d);
                c.setTitle(rs.getString("title"));
                c.setPrice_out(rs.getInt("price"));
                c.setThumbnail(rs.getString("thumbnail"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Discount getDiscountById(int id) { // lay value discount bang id 

        String sql = "SELECT [id]\n"
                + "      ,[value]\n"
                + "  FROM [dbo].[Discounts]\n"
                + "  where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
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

    public List<Category> getAllCategory() { // lay tat ca cac category
        List<Category> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "  FROM [SWP].[dbo].[Categories]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

}
