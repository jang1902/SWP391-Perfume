/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Size;

/**
 *
 * @author dell
 */
public class SizeDAO extends DBContext {

    public List<Size> GetAllSize() {
        List<Size> list = new ArrayList<>();
        String sql = "select * from Sizes";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Size s = new Size();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setValue(rs.getInt("value"));
                list.add(s);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void addSize(Size size) {
        String sql = "INSERT INTO [dbo].[Sizes]\n"
                + "           ([name]\n"
                + "           ,[value])\n"
                + "     VALUES\n (?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, size.getName());
            st.setInt(2, size.getValue());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void deleteSize(int id) {
        String sql = "delete from Sizes where id = ?";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void editSize(Size size) {
        String sql = "UPDATE [dbo].[Sizes]\n"
                + "   SET [name] = ?\n"
                + "      ,[value] = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            st.setString(1, size.getName());
            st.setInt(2, size.getValue());
            st.setInt(3, size.getId());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public Size getSizeById(int id){
        Size s = new Size();
        String sql = "select * from Sizes where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setValue(rs.getInt("value"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return s;
    }
}
