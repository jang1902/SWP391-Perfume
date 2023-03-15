/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import model.Address_Detail;
import model.Discount;
import model.Gender;
import model.Order;
import model.OrderDetail;
import model.Product;
import model.QuanHuyen;
import model.Role;
import model.Size;
import model.Status;
import model.TinhThanhPho;
import model.User;
import model.XaPhuong;

/**
 *
 * @author asus
 */
public class DashboardDAO extends DBContext {

    java.sql.Date curDate = new java.sql.Date(Calendar.getInstance().getTime().getTime());

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
                u.setAvatar(rs.getString("avatar"));

                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<User> getNewestUser() {
        List<User> list = new ArrayList<>();
        String sql = "select top 4 * from Users \n"
                + "where role_id = 2\n"
                + "order by id desc";
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
                u.setAvatar(rs.getString("avatar"));

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
                u.setAvatar(rs.getString("avatar"));
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
                u.setAvatar(rs.getString("avatar"));
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
                u.setAvatar(rs.getString("avatar"));
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
                u.setAvatar(rs.getString("avatar"));
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
                u.setAvatar(rs.getString("avatar"));
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
                u.setAvatar(rs.getString("avatar"));
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
                u.setAvatar(rs.getString("avatar"));
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
                + "           ,[deleted], [avatar])\n"
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
            st.setDate(8, curDate);
            st.setDate(9, u.getUpdated_at());
            st.setInt(10, u.getDeleted());
            st.setString(11, u.getAvatar());
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

    public void updateAccount(User a) {

        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET \n"
                + "      [role_id] = ?\n"
                + "      ,[firstname] = ?\n"
                + "      ,[lastname] = ?\n"
                + "      ,[username] = ?\n"
                + "      ,[password] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[phone_number] = ?\n"
                + "      ,[created_at] = ?\n"
                + "      ,[updated_at] = ?\n"
                + "      ,[deleted] = ?\n"
                + " WHERE id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, a.getRole_id());
            st.setString(1, a.getFirstname());
            st.setString(2, a.getLastname());
            st.setDate(3, a.getUpdated_at());
            st.setInt(4, a.getDeleted());
            st.setInt(5, a.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Order> getOrderByID(int id) {
        List<Order> list = new ArrayList<>();
        String sql = "select * from Orders o join Status s \n"
                + "  on o.status_id = s.id\n"
                + "  where o.status_id = ?\n"
                + "  order by o.id desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                o.setId(rs.getInt("id"));
                o.setUser_id(rs.getInt("user_id"));
                o.setFirstname(rs.getString("firstname"));
                o.setLastname(rs.getString("lastname"));
                o.setEmail(rs.getString("email"));
                o.setPhone_number(rs.getString("phone_number"));
                o.setAddress_id(rs.getInt("address_id"));
                o.setNote(rs.getString("note"));
                o.setOrder_date(rs.getDate("order_date"));
                o.setStatus_id(rs.getInt("status_id"));
                o.setTotal_money(rs.getInt("total_money"));
                Status s = new Status();
                s.setName(rs.getString("name"));
                o.setStatus(s);
                list.add(o);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Order> getAllOrder() {
        List<Order> list = new ArrayList<>();
        String sql = "select * from Orders o join Status s \n"
                + "  on o.status_id = s.id\n"
                + "  \n"
                + "  order by o.id desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order o = new Order();
                o.setId(rs.getInt("id"));
                o.setUser_id(rs.getInt("user_id"));
                o.setFirstname(rs.getString("firstname"));
                o.setLastname(rs.getString("lastname"));
                o.setEmail(rs.getString("email"));
                o.setPhone_number(rs.getString("phone_number"));
                o.setAddress_id(rs.getInt("address_id"));
                o.setNote(rs.getString("note"));
                o.setOrder_date(rs.getDate("order_date"));
                o.setStatus_id(rs.getInt("status_id"));
                o.setTotal_money(rs.getInt("total_money"));
                Status s = new Status();
                s.setName(rs.getString("name"));
                o.setStatus(s);
                list.add(o);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<TinhThanhPho> getAllCity() {
        List<TinhThanhPho> list = new ArrayList<>();
        String sql = "select * from TinhThanhPho";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                TinhThanhPho t = new TinhThanhPho();
                t.setId(rs.getInt("ID"));
                t.setName(rs.getString("tenTinhThanhPho"));
                list.add(t);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public TinhThanhPho getCity(int id) {

        String sql = "select * from TinhThanhPho where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                TinhThanhPho t = new TinhThanhPho();
                t.setId(rs.getInt("ID"));
                t.setName(rs.getString("tenTinhThanhPho"));
                return t;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<QuanHuyen> getAllDistrict(int id) {
        List<QuanHuyen> list = new ArrayList<>();
        String sql = "select * from [QuanHuyen] where tinhThanhPhoId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                QuanHuyen q = new QuanHuyen();
                q.setId(rs.getInt("ID"));
                q.setName(rs.getString("tenQuanHuyen"));
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public QuanHuyen getDistrict(int id) {

        String sql = "select * from QuanHuyen where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                QuanHuyen q = new QuanHuyen();
                q.setId(rs.getInt("ID"));
                q.setName(rs.getString("tenQuanHuyen"));
                return q;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<XaPhuong> getAllWard(int id) {
        List<XaPhuong> list = new ArrayList<>();
        String sql = "select * from XaPhuong where quanHuyenId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                XaPhuong x = new XaPhuong();
                x.setId(rs.getInt("ID"));
                x.setName(rs.getString("tenXaPhuong"));
                list.add(x);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public XaPhuong getWard(int id) {

        String sql = "select * from XaPhuong where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                XaPhuong x = new XaPhuong();
                x.setId(rs.getInt("ID"));
                x.setName(rs.getString("tenXaPhuong"));
                return x;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public OrderDetail getOrderDetailById(int id) {

        String sql = "  select u.id as 'userid', u.firstname, u.lastname, u.email, u.phone_number, \n"
                + "  o.id as'orderid', o.note, o.order_date, o.status_id, o.total_money, \n"
                + "  od.price, od.num,\n"
                + "  p.id as'productid', p.title, p.gender_id, p.discount_id, p.thumbnail, \n"
                + "  s.id as 'sizeid', s.name, ad.city, ad.district, ad.ward, ad.detail,\n"
                + "  st.name as 'statusname', st.id as'statusid'\n"
                + "from Users u join Orders o\n"
                + "  on u.id= o.user_id\n"
                + "  join Order_Details od\n"
                + "  on od.order_id = o.id\n"
                + "  join Products p \n"
                + "  on p.id = od.product_id\n"
                + "  join SizeProduct sp \n"
                + "  on sp.pid = p.id\n"
                + "  join Sizes s \n"
                + "  on s.id= sp.sid\n"
                + "  join Address_Detail ad\n"
                + "  on ad.uid = u.id\n"
                + "  join [Status] st \n"
                + "  on st.id = o.status_id\n"
                + "  where o.id=? and ad.is_default=1 and s.id=od.size_id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                OrderDetail od = new OrderDetail();
                Status sta = new Status();
                sta.setId(rs.getInt("statusid"));
                sta.setName(rs.getString("statusname"));

                User u = new User();
                u.setId(rs.getInt("userid"));
                u.setFirstname(rs.getString("firstname"));
                u.setLastname(rs.getString("lastname"));
                u.setEmail(rs.getString("email"));
                u.setPhone_number(rs.getString("phone_number"));
                od.setUser(u);

                Order o = new Order();
                o.setId(rs.getInt("orderid"));
                o.setNote(rs.getString("note"));
                o.setOrder_date(rs.getDate("order_date"));
                o.setStatus_id(rs.getInt("status_id"));
                o.setTotal_money(rs.getInt("total_money"));
                o.setStatus(sta);
                od.setOrder(o);

                od.setPrice(rs.getInt("price"));
                od.setNum(rs.getInt("num"));

                Product p = new Product();
                p.setId(rs.getInt("productid"));
                p.setTitle(rs.getString("title"));
                Gender g = new Gender();
                g.setId(rs.getInt("gender_id"));
                p.setGender(g);
                p.setThumbnail(rs.getString("thumbnail"));

                Size s = new Size();
                s.setId(rs.getInt("sizeid"));
                s.setName(rs.getString("name"));
                od.setSize(s);

                Address_Detail ad = new Address_Detail();
                ad.setCity(rs.getString("city"));
                ad.setDistrict(rs.getString("district"));
                ad.setWard(rs.getString("ward"));
                ad.setDetail(rs.getString("detail"));
                od.setAddress_detail(ad);

                return od;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<OrderDetail> getODbyID(int id) {
        List<OrderDetail> list = new ArrayList<>();
        String sql = "select p.thumbnail, p.title, p.id as 'productid',\n"
                + "  od.price, od.num,\n"
                + "  o.total_money,\n"
                + "   s.name\n"
                + "  from Order_Details od join Products p\n"
                + "  on od.product_id = p.id\n"
                + "  join SizeProduct sp \n"
                + "  on sp.pid = p.id\n"
                + "  join Sizes s \n"
                + "  on s.id = sp.sid\n"
                + "  join Orders o \n"
                + "  on o.id = od.order_id\n"
                + "where od.order_id=?  and s.id=od.size_id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                OrderDetail od = new OrderDetail();
                Product p = new Product();
                p.setThumbnail(rs.getString("thumbnail"));
                p.setTitle(rs.getString("title"));
                od.setProduct(p);

                od.setPrice(rs.getInt("price"));
                od.setNum(rs.getInt("num"));

                Order o = new Order();
                o.setTotal_money(rs.getInt("total_money"));
                od.setOrder(o);

                Size s = new Size();
                s.setName(rs.getString("name"));
                od.setSize(s);
                list.add(od);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void updateStatus(OrderDetail od) {
        String sql = "UPDATE [dbo].[Orders]\n"
                + "   SET \n"
                + "      [status_id] = ?\n"
                + "\n"
                + " WHERE id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, od.getOrder().getStatus_id());
            st.setInt(2, od.getOrder().getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        
    }

    public static void main(String[] args) {
        DashboardDAO d = new DashboardDAO();
//        System.out.println(d.getUserById(10));
//        User lastest = d.getLastestUser();
//        Address_Detail ad = new Address_Detail(lastest.getId(), "city", "district", "ward", "detail", 1);
//        d.addAddress(ad);
//        System.out.println(lastest.getId());
//
//        System.out.println("====");
//        System.out.println(d.getAllUser());
        System.out.println(d.getODbyID(1));
    }
}
