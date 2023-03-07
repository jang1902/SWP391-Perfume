/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package admin;

import dal.DashboardDAO;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import model.User;


/**
 *
 * @author hp
 */

@WebServlet(name = "UpdateAccount", urlPatterns = {"/updateaccount"})
public class UpdateAccount extends HttpServlet {


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

            out.println("<title>Servlet UpdateAccount</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateAccount at " + request.getContextPath() + "</h1>");

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

        DashboardDAO d = new DashboardDAO();
        String id_raw = request.getParameter("id");
        int id = Integer.parseInt(id_raw);
        request.setAttribute("userInfo", d.getUserById(id));
        
        request.getRequestDispatcher("dashboard/updateaccount.jsp").forward(request, response);

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
            
      //      User a = new User(role_id, firstname, lastname, username, password, email, phonenum, null, null, 0);
      //      d.updateAccount(a);
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
         response.sendRedirect("dashboard");

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
