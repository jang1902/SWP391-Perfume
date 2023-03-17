/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
<<<<<<<< HEAD:SWP/src/java/control/crud/SortDateServlet.java
package control.crud;

import dal.CrudDAO;
========

package admin;

import dal.DashboardDAO;

>>>>>>>> Jang:SWP/src/java/admin/UpdateAccount.java
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
<<<<<<<< HEAD:SWP/src/java/control/crud/SortDateServlet.java
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Gender;
import model.Product;
========

import model.User;

>>>>>>>> Jang:SWP/src/java/admin/UpdateAccount.java

/**
 *
 * @author hp
 */
<<<<<<<< HEAD:SWP/src/java/control/crud/SortDateServlet.java
@WebServlet(name = "SortDateServlet", urlPatterns = {"/sortdate"})
public class SortDateServlet extends HttpServlet {
========

@WebServlet(name = "UpdateAccount", urlPatterns = {"/updateaccount"})
public class UpdateAccount extends HttpServlet {

>>>>>>>> Jang:SWP/src/java/admin/UpdateAccount.java

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
<<<<<<<< HEAD:SWP/src/java/control/crud/SortDateServlet.java
            out.println("<title>Servlet SortDateServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SortDateServlet at " + request.getContextPath() + "</h1>");
========

            out.println("<title>Servlet UpdateAccount</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateAccount at " + request.getContextPath() + "</h1>");

>>>>>>>> Jang:SWP/src/java/admin/UpdateAccount.java
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
<<<<<<<< HEAD:SWP/src/java/control/crud/SortDateServlet.java
        String date_raw = request.getParameter("date");
        String date = date_raw.trim().replaceAll("/", "-");
        request.setAttribute("date", date_raw);
        
        CrudDAO crud = new CrudDAO();
 
        List<Product> allp = crud.getProductByDate(date);
        request.setAttribute("allp", allp);
        
        List<Category> allc = crud.getAllCategory();
        request.setAttribute("allc", allc);

        List<Gender> allg = crud.getAllGender();
        request.setAttribute("allg", allg);

        request.getRequestDispatcher("dashboardproduct.jsp").forward(request, response);
========

        DashboardDAO d = new DashboardDAO();
        String id_raw = request.getParameter("id");
        int id = Integer.parseInt(id_raw);
        request.setAttribute("userInfo", d.getUserById(id));
        
        request.getRequestDispatcher("dashboard/updateaccount.jsp").forward(request, response);

>>>>>>>> Jang:SWP/src/java/admin/UpdateAccount.java
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
<<<<<<<< HEAD:SWP/src/java/control/crud/SortDateServlet.java
        processRequest(request, response);
========

                String email = request.getParameter("email");
        String phonenum = request.getParameter("phonenum");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
//        String role_id_raw = request.getParameter("role");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        int role_id = Integer.parseInt(request.getParameter("roleid"));
        String id_raw = request.getParameter("id");
//        int id = Integer.parseInt(id_raw);
       
        DashboardDAO d = new DashboardDAO();
        try {
            
            User a = new User(role_id, firstname, lastname, username, password, email, phonenum, null, null, 0);
            d.updateAccount(a);
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
         response.sendRedirect("dashboard");

>>>>>>>> Jang:SWP/src/java/admin/UpdateAccount.java
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
