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
                + "  where role_id=2";
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
                u.setAddress(rs.getString("address"));
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
        String sql = "SELECT *\n"
                + "  FROM [SWP391].[dbo].[Users]\n"
                + "  where role_id!=2 and role_id !=1";
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
                u.setAddress(rs.getString("address"));
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

    public User getUserById(int id) {
        String sql = "select * from Users u \n"
                + "	join Roles r\n"
                + "	on u.role_id = r.id\n"
                + "	where u.id=?";
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
                u.setAddress(rs.getString("address"));
                u.setCreated_at(rs.getDate("created_at"));
                u.setUpdated_at(rs.getDate("updated_at"));
                u.setDeleted(rs.getByte("deleted"));
                Role r = new Role();
                r.setId(rs.getInt("role_id"));
                r.setName(rs.getString("name").toUpperCase());
                u.setRole(r);
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void addAccount(User u) {
        String sql = "INSERT INTO [dbo].[Users]\n"
                + "           ([loginType]\n"
                + "           ,[role_id]\n"
                + "           ,[firstname]\n"
                + "           ,[lastname]\n"
                + "           ,[username]\n"
                + "           ,[password]\n"
                + "           ,[email]\n"
                + "           ,[phone_number]\n"
                + "           ,[address]\n"
                + "           ,[created_at]\n"
                + "           ,[updated_at]\n"
                + "           ,[deleted])\n"
                + "     VALUES\n"
                + "           (1,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            
            st.setInt(1, u.getRole_id());
            st.setString(2, u.getFirstname());
            st.setString(3, u.getLastname());
            st.setString(4, u.getUsername());
            st.setString(5, u.getPassword());
            st.setString(6, u.getEmail());
            st.setString(7, u.getPhone_number());
            st.setString(8, u.getAddress());
            st.setDate(9, u.getCreated_at());
            st.setDate(10, u.getUpdated_at());
            st.setInt(11, u.getDeleted());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        DashboardDAO d = new DashboardDAO();
        User u = new User( 2, "hehe", "huhu", "abccc", "123123123", "asdasd@gmail.com", "123123123", "123123123", null, null,0 );
        d.addAccount(u);
    }
}
