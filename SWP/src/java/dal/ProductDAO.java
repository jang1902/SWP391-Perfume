/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.Category;
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
        String sql = "select * from Products\n"
                + "where category_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
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

//    public List<SizeProduct> getProductDetailByPid(int id){
//        List<SizeProduct> list=new ArrayList<>();
//        String sql = "select * from SizeProduct where pid=?";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setInt(1, id);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                SizeProduct p = new SizeProduct();
//                p.setPid(rs.getInt("pid"));
//                p.setSid(rs.getInt("sid"));
//                p.setQuantity(rs.getInt("quantity"));
//                p.setPrice_in(rs.getInt("price_in"));
//                p.setPrice_out(rs.getInt("price_out"));
//                list.add(p);
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//        return list;
//    }
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
    
    public Map<Product,List<SizeProduct>> getAllProductWithSizeProduct() {
        ProductDAO dao=new ProductDAO();
        Map<Product,List<SizeProduct>> map = new HashMap<Product,List<SizeProduct>>();
        List<Product> listP = dao.getAllProduct();
        List<SizeProduct> listSP = new ArrayList<>();
        
        
        String sql = "select * from SizeProduct";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                SizeProduct c = new SizeProduct();
                c.setPid(rs.getInt("pid"));
                c.setSid(rs.getInt("sid"));
                c.setQuantity(rs.getInt("quantity"));
                c.setPrice_in(rs.getInt("price_in"));
                c.setPrice_out(rs.getInt("price_out"));
                listSP.add(c);
            }
            
            
            
            for (Product product : listP) {
                for (SizeProduct sizeProduct : listSP) {
                    if(product.getId()==sizeProduct.getPid() && sizeProduct.getSid()==1){// muốn get hết size thì bỏ "&& sizeProduct.getSid()==1"
                        List<SizeProduct> listTemp = new ArrayList<>();
                        listTemp.add(sizeProduct);
                        map.put(product, listTemp);
                    }
                }
            }
            
         
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return map;
    }

    public Size getValue() {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[value]\n"
                + "  FROM [SWP].[dbo].[Sizes]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {

                Size s = new Size();
                s.setId(rs.getInt("sid"));
                s.setName(rs.getString("name"));
                s.setValue(rs.getInt("value"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Size> getAllSize() {
        List<Size> ls = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[value]\n"
                + "  FROM [SWP].[dbo].[Sizes]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
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

    //san pham lien quan
    public List<Product> randomRelative(int gid) throws SQLException {
        ArrayList<Product> ls = new ArrayList<>();

        String sql = "select top 4 * from Products \n"
                + "  where gender_id=? \n"
                + "  order by NEWID()";
        PreparedStatement st = connection.prepareStatement(sql);

        st.setInt(1, gid);

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
            ls.add(p);
        }
        return ls;
    }
}
