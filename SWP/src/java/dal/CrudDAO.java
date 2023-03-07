/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
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

    public Product getEditProduct(int pid, int sid) {

        String sql = "select * from products p join SizeProduct sp   \n"
                + "                   on p.id = sp.pid \n"
                + "                   where sid = ? and pid = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, sid);
            st.setInt(2, pid);
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

    public void updateProduct(int category_id, String title, int gender_id,
            int discount_id, String thumbnail, String description, int id) {
        String sql = "UPDATE [dbo].[Products]\n"
                + "   SET [category_id] = ?\n"
                + "      ,[title] = ?\n"
                + "      ,[gender_id] = ?\n"
                + "      ,[discount_id] = ?\n"
                + "      ,[thumbnail] = ?\n"
                + "      ,[updated_at] = getdate()"
                + "      ,[description] = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, category_id);
            st.setString(2, title);
            st.setInt(3, gender_id);
            st.setInt(4, discount_id);
            st.setString(5, thumbnail);
            st.setString(6, description);
            st.setInt(7, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateSizeProduct(int pid, int sid_old, int sid_new, int quantity,
            int price_in, int price_out) {
        String sql = "UPDATE [dbo].[SizeProduct]\n"
                + "   SET [quantity] = ?\n"
                + "      ,[sid] = ?\n"
                + "      ,[price_in] = ?\n"
                + "      ,[price_out] = ?\n"
                + " WHERE pid = ? and sid = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, quantity);
            st.setInt(2, sid_new);
            st.setInt(3, price_in);
            st.setInt(4, price_out);
            st.setInt(5, pid);
            st.setInt(6, sid_old);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteProduct(int pid) {
        String sql = "DELETE FROM [dbo].[Products]\n"
                + "      WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteSizeProduct(int pid, int sid) {
        String sql = "DELETE FROM [dbo].[SizeProduct]\n"
                + "      WHERE pid = ? and sid = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            st.setInt(2, sid);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertSizeProduct(int pid, int sid, int quantity, int price_in,
            int price_out) {
        String sql = "INSERT INTO [dbo].[SizeProduct]\n"
                + "           ([pid]\n"
                + "           ,[sid]\n"
                + "           ,[quantity]\n"
                + "           ,[price_in]\n"
                + "           ,[price_out])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            st.setInt(2, sid);
            st.setInt(3, quantity);
            st.setInt(4, price_in);
            st.setInt(5, price_out);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Product getIdLastProduct() {

        String sql = "SELECT top 1 id\n"
                + "\n"
                + "  FROM [dbo].[Products]\n"
                + "\n"
                + "  order by id desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("id"));
                return c;
            }

        } catch (SQLException e) {
            System.out.println(e);

        }
        return null;
    }

    public void insertProduct(int category_id, String title, int gender_id, int discount_id,
            String thumbnail, String description) {
        String sql = "INSERT INTO [dbo].[Products]\n"
                + "           ([category_id]\n"
                + "           ,[title]\n"
                + "           ,[gender_id]\n"
                + "           ,[discount_id]\n"
                + "           ,[thumbnail]\n"
                + "           ,[description]\n"
                + "           ,[created_at]\n"
                + "           ,[updated_at])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,getdate()\n"
                + "           ,getdate())";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, category_id);
            st.setString(2, title);
            st.setInt(3, gender_id);
            st.setInt(4, discount_id);
            st.setString(5, thumbnail);
            st.setString(6, description);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Size> getAllSize() {
        List<Size> list = new ArrayList<>();
        String sql = "select * from Sizes";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Size c = new Size();
                c.setId(rs.getInt("id"));
                c.setValue(rs.getInt("value"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Discount> getAllDiscount() {
        List<Discount> list = new ArrayList<>();
        String sql = "select * from Discounts";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Discount c = new Discount();
                c.setId(rs.getInt("id"));
                c.setValue(rs.getInt("value"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Gender> getAllGender() {
        List<Gender> list = new ArrayList<>();
        String sql = "select * from Genders";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Gender c = new Gender();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Categories";

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

    public List<Product> getAllProduct() {
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
