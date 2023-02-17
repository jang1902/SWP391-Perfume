/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

/**
 *
 * @author ASUS
 */
public class UserDAO extends DBContext {

    public User checkAccount(String username, String password) {
        String sql = "select * from Users where username=? and password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                return new User(rs.getInt("id"), rs.getInt("loginType"), rs.getInt("role_id"),
                        rs.getString("firstname"),
                        rs.getString("lastname"), username, password,
                        rs.getString("email"), rs.getString("phone_number"), rs.getString("address"),
                        rs.getDate("created_at"), rs.getDate("updated_at"), rs.getInt("deleted")
                );
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void addUser(User user) {
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
                + "           (1, 1, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user.getFirstname());
            st.setString(2, user.getLastname());
            st.setString(3, user.getUsername());
            st.setString(4, user.getPassword());
            st.setString(5, user.getEmail());
            st.setString(6, user.getPhone_number());
            st.setString(7, user.getAddress());
            st.setDate(8, user.getCreated_at());
            st.setDate(9, user.getUpdated_at());
            st.setInt(10, user.getDeleted());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public User getAccountByLoginName(String name) {
        String sql = "Select * from Users where username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User c = new User(rs.getInt("id"), rs.getInt("loginType"), rs.getInt("role_id"),
                        rs.getString("firstname"),
                        rs.getString("lastname"), name, rs.getString("password"),
                        rs.getString("email"), rs.getString("phone_number"), rs.getString("address"),
                        rs.getDate("created_at"), rs.getDate("updated_at"), rs.getInt("deleted")
                );
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateUser(User user) {
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET [firstname] = ?\n"
                + "      ,[lastname] = ?\n"
                + "      ,[phone_number] = <phone_number, nvarchar(15),>\n"
                + "      ,[address] = <address, nvarchar(200),>\n"
                + " WHERE username = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user.getFirstname());
            st.setString(2, user.getFirstname());
            st.setString(3, user.getPhone_number());
            st.setString(4, user.getAddress());
            st.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void updatePass(User user) {
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET [email] = ?\n"
                + " WHERE username = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user.getEmail());
            st.setString(2, user.getUsername());

            st.executeUpdate();
        } catch (Exception e) {

        }
    }

    public User getAccountByEmail(String email) {
        String sql = "Select * from Users where email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User c = new User(rs.getInt("id"), rs.getInt("loginType"), rs.getInt("role_id"),
                        rs.getString("firstname"),
                        rs.getString("lastname"), rs.getString("username"), rs.getString("password"),
                        email, rs.getString("phone_number"), rs.getString("address"),
                        rs.getDate("created_at"), rs.getDate("updated_at"), rs.getInt("deleted")
                );
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    //check cai username day da ton tai chua????
    // neu ton tai roi tra ve true
    //chua ton tai tra ve false
    public boolean existedUser(String username) {
        String sql = "SELECT [Username]\n"
                + "      ,[Password]\n"
                + "      ,[email]\n"
                + "  FROM [dbo].[Users]\n"
                + "  where Username=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    //check xem tài khoan co ton tai chua dua vao email
    //
    public boolean existedEmailUser(String email) {
        String sql = "SELECT [Username]\n"
                + "      ,[Password]\n"
                + "      ,[email]\n"
                + "  FROM [dbo].[Users]\n"
                + "  where email=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public void changePassUserByEmail(String newpass, String email) {
        String sql = "update [Users] set \n"
                + "password = ?\n"
                + "where email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, newpass);
            st.setString(2, email);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        UserDAO d = new UserDAO();

        User u = d.checkAccount("maigiang", "123");
        System.out.println(u);
    }
}
