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
import model.Address_Detail;
import model.Role;
import model.User;

/**
 *
 * @author asus
 */
public class DashboardDAO extends DBContext {

    public List<User> getAllUser() {
        List<User> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "  FROM [SWP391].[dbo].[Users]\n"
                + "  where role_id=2  ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setLoginType(rs.getInt("loginType"));
                u.setRole_id(rs.getInt("role_id"));
                u.setFirstname(rs.getString("firstname"));
                u.setLastname(rs.getString("lastname"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setPhone_number(rs.getString("phone_number"));

                u.setCreated_at(rs.getDate("created_at"));
                u.setUpdated_at(rs.getDate("updated_at"));
                u.setDeleted(rs.getByte("deleted"));

                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<User> getAllStaff() {
        List<User> list = new ArrayList<>();
        String sql = "  select * from Users u \n"
                + "  join Roles r \n"
                + "  on u.role_id = r.id\n"
                + "  where u.role_id!=2 and u.role_id!=1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setLoginType(rs.getInt("loginType"));
                u.setRole_id(rs.getInt("role_id"));
                u.setFirstname(rs.getString("firstname"));
                u.setLastname(rs.getString("lastname"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setPhone_number(rs.getString("phone_number"));

                u.setCreated_at(rs.getDate("created_at"));
                u.setUpdated_at(rs.getDate("updated_at"));
                u.setDeleted(rs.getByte("deleted"));
                Role r = new Role();
                r.setId(rs.getInt("role_id"));
                r.setName(rs.getString("name").toUpperCase());
                u.setRole(r);

                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<User> getAllStockManager() {
        List<User> list = new ArrayList<>();
        String sql = "  select * from Users u \n"
                + "  join Roles r \n"
                + "  on u.role_id = r.id\n"
                + "  where u.role_id!=2 and u.role_id!=1 and u.role_id!=3";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setLoginType(rs.getInt("loginType"));
                u.setRole_id(rs.getInt("role_id"));
                u.setFirstname(rs.getString("firstname"));
                u.setLastname(rs.getString("lastname"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setPhone_number(rs.getString("phone_number"));

                u.setCreated_at(rs.getDate("created_at"));
                u.setUpdated_at(rs.getDate("updated_at"));
                u.setDeleted(rs.getByte("deleted"));
                Role r = new Role();
                r.setId(rs.getInt("role_id"));
                r.setName(rs.getString("name").toUpperCase());
                u.setRole(r);

                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<User> getAllOrderStaff() {
        List<User> list = new ArrayList<>();
        String sql = "  select * from Users u \n"
                + "  join Roles r \n"
                + "  on u.role_id = r.id\n"
                + "  where u.role_id!=2 and u.role_id!=1 and u.role_id!=4";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setLoginType(rs.getInt("loginType"));
                u.setRole_id(rs.getInt("role_id"));
                u.setFirstname(rs.getString("firstname"));
                u.setLastname(rs.getString("lastname"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setPhone_number(rs.getString("phone_number"));

                u.setCreated_at(rs.getDate("created_at"));
                u.setUpdated_at(rs.getDate("updated_at"));
                u.setDeleted(rs.getByte("deleted"));
                Role r = new Role();
                r.setId(rs.getInt("role_id"));
                r.setName(rs.getString("name").toUpperCase());
                u.setRole(r);

                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<User> getAllActiveUser() {
        List<User> list = new ArrayList<>();
        String sql = "  select * from Users u \n"
                + "  join Roles r \n"
                + "  on u.role_id = r.id\n"
                + "  where u.role_id=2 and deleted=0";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setLoginType(rs.getInt("loginType"));
                u.setRole_id(rs.getInt("role_id"));
                u.setFirstname(rs.getString("firstname"));
                u.setLastname(rs.getString("lastname"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setPhone_number(rs.getString("phone_number"));

                u.setCreated_at(rs.getDate("created_at"));
                u.setUpdated_at(rs.getDate("updated_at"));
                u.setDeleted(rs.getByte("deleted"));
                Role r = new Role();
                r.setId(rs.getInt("role_id"));
                r.setName(rs.getString("name").toUpperCase());
                u.setRole(r);

                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<User> getAllInactiveUser() {
        List<User> list = new ArrayList<>();
        String sql = "  select * from Users u \n"
                + "  join Roles r \n"
                + "  on u.role_id = r.id\n"
                + "  where u.role_id=2 and deleted = 1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setLoginType(rs.getInt("loginType"));
                u.setRole_id(rs.getInt("role_id"));
                u.setFirstname(rs.getString("firstname"));
                u.setLastname(rs.getString("lastname"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setPhone_number(rs.getString("phone_number"));

                u.setCreated_at(rs.getDate("created_at"));
                u.setUpdated_at(rs.getDate("updated_at"));
                u.setDeleted(rs.getByte("deleted"));
                Role r = new Role();
                r.setId(rs.getInt("role_id"));
                r.setName(rs.getString("name").toUpperCase());
                u.setRole(r);

                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public User getUserById(int id) {
        String sql = "select * from \n"
                + "  Users u join Roles r on u.role_id = r.id\n"
                + "  join Address_Detail ad on ad.uid = u.id\n"
                + "  where u.id = ? and is_default=1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setLoginType(rs.getInt("loginType"));
                u.setRole_id(rs.getInt("role_id"));
                u.setFirstname(rs.getString("firstname"));
                u.setLastname(rs.getString("lastname"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setPhone_number(rs.getString("phone_number"));

                u.setCreated_at(rs.getDate("created_at"));
                u.setUpdated_at(rs.getDate("updated_at"));
                u.setDeleted(rs.getByte("deleted"));
                Role r = new Role();
                r.setId(rs.getInt("role_id"));
                r.setName(rs.getString("name").toUpperCase());
                u.setRole(r);
                Address_Detail ad = new Address_Detail();
                ad.setCity(rs.getString("city"));
                ad.setDetail(rs.getString("detail"));
                ad.setDistrict(rs.getString("district"));
                ad.setWard(rs.getString("ward"));
                u.setAddress_detail(ad);
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public User getLastestUser() {
        String sql = " select top 1 * from \n"
                + "  Users u join Roles r on u.role_id=r.id\n"
                + " \n"
                + "  order by u.id desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setLoginType(rs.getInt("loginType"));
                u.setRole_id(rs.getInt("role_id"));
                u.setFirstname(rs.getString("firstname"));
                u.setLastname(rs.getString("lastname"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setPhone_number(rs.getString("phone_number"));
                u.setCreated_at(rs.getDate("created_at"));
                u.setUpdated_at(rs.getDate("updated_at"));
                u.setDeleted(rs.getByte("deleted"));
                Role r = new Role();
                r.setId(rs.getInt("role_id"));
                r.setName(rs.getString("name"));
                u.setRole(r);

                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void addAccount(User u) {
        DashboardDAO d = new DashboardDAO();

        String sql = "INSERT INTO [dbo].[Users]\n"
                + "           ([loginType]\n"
                + "           ,[role_id]\n"
                + "           ,[firstname]\n"
                + "           ,[lastname]\n"
                + "           ,[username]\n"
                + "           ,[password]\n"
                + "           ,[email]\n"
                + "           ,[phone_number]\n"
                + "           ,[created_at]\n"
                + "           ,[updated_at]\n"
                + "           ,[deleted])\n"
                + "     VALUES\n"
                + "           (1,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setInt(1, u.getRole_id());
            st.setString(2, u.getFirstname());
            st.setString(3, u.getLastname());
            st.setString(4, u.getUsername());
            st.setString(5, u.getPassword());
            st.setString(6, u.getEmail());
            st.setString(7, u.getPhone_number());
            st.setDate(8, u.getCreated_at());
            st.setDate(9, u.getUpdated_at());
            st.setInt(10, u.getDeleted());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void addAddress(Address_Detail ad) {

        String sql = "INSERT INTO [dbo].[Address_Detail]\n"
                + "           ([uid]\n"
                + "           ,[city]\n"
                + "           ,[district]\n"
                + "           ,[ward]\n"
                + "           ,[detail]\n"
                + "           ,[is_default])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setInt(1, ad.getUid());
            st.setString(2, ad.getCity());
            st.setString(3, ad.getDistrict());
            st.setString(4, ad.getWard());
            st.setString(5, ad.getDetail());
            st.setInt(6, ad.getIs_default());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public User delete(int id) {
        String sql = "update Users \n"
                + "set deleted = 1\n"
                + "where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setLoginType(rs.getInt("loginType"));
                u.setRole_id(rs.getInt("role_id"));
                u.setFirstname(rs.getString("firstname"));
                u.setLastname(rs.getString("lastname"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setPhone_number(rs.getString("phone_number"));

                u.setCreated_at(rs.getDate("created_at"));
                u.setUpdated_at(rs.getDate("updated_at"));
                u.setDeleted(rs.getByte("deleted"));
                
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String[] args) {
        DashboardDAO d = new DashboardDAO();
        System.out.println(d.getUserById(10));
        User lastest = d.getLastestUser();
        Address_Detail ad = new Address_Detail(lastest.getId(), "city", "district", "ward", "detail", 1);
        d.addAddress(ad);
        System.out.println(lastest.getId());
        
        System.out.println("====");
        System.out.println(d.getAllUser());
    }
}
