/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.Calendar;
import model.Cart;
import model.Item;
import model.Order;
import model.User;

/**
 *
 * @author ASUS
 */
public class OrderDAO extends DBContext {

    public void addOrder(User u, int address_id, Cart cart) {
        java.sql.Date curDate = new java.sql.Date(Calendar.getInstance().getTime().getTime());

        try {
            String sql = "insert into [orders] values(?,?,?,?,?,?,null,?,null,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, u.getId());
            st.setString(2, u.getFirstname());
            st.setString(3, u.getLastname());
            st.setString(4, u.getEmail());
            st.setString(5, u.getPhone_number());
            st.setInt(6, address_id);
            st.setDate(7, (Date) curDate);
            st.setDouble(8, cart.getTotalMoney());
            st.executeUpdate();

            String sql2 = "select top 1 id from orders order by id  desc";
            st = connection.prepareStatement(sql2);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int order_id = rs.getInt("id");
                for (Item i : cart.getItems()) {
                    String sql3 = "insert into Order_Details values(?,?,?,?,?,?,?)";
                    st = connection.prepareStatement(sql3);
                    st.setInt(1, order_id);
                    st.setInt(2, i.getProduct().getId());
                    st.setInt(3, i.getSizeproduct().getSid());
                    st.setInt(4, i.getSizeproduct().getPrice_out());
                    st.setInt(5, i.getQuantity());
                    st.setDouble(6, cart.getTotalMoney());
                    st.setDouble(7, cart.getTotalMoney());
                    st.executeUpdate();
                }
                String sql4 = "update SizeProduct set quantity=quantity-? where pid=? AND sid=?";
                st = connection.prepareStatement(sql4);
                for (Item i : cart.getItems()) {
                    st.setInt(1, i.getQuantity());
                    st.setInt(2, i.getProduct().getId());
                    st.setInt(3, i.getSizeproduct().getSid());
                    st.executeUpdate();
                }

            }
        } catch (Exception e) {
        }
    }
    
    public Order getLastOrder(){
        String sql="select top 1* from Orders order by id desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Order o=new Order(
                rs.getInt("id"),
                rs.getInt("user_id"),
                rs.getString("firstname"),
                rs.getString("lastname"),
                rs.getString("email"),
                rs.getString("phone_number"),
                rs.getInt("address_id"),
                rs.getString("note"),
                rs.getDate("order_date"),
                rs.getInt("status_id"),
                rs.getInt("total_money")
                );
                return o;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public int getSumTotalMoney(int userid) {
        int sum = 0;
        String sql = "select sum(total_money) from Orders\n"
                + "where user_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, userid);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                sum = rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return sum;
    }

}
