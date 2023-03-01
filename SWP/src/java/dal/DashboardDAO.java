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
                r.setName(rs.getString("name"));
                u.setRole(r);
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String[] args) {
        DashboardDAO d = new DashboardDAO();
        System.out.println(d.getAllUser());
    }
}
