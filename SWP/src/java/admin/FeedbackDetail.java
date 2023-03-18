/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package admin;

<<<<<<<< HEAD:SWP/src/java/control/crud/SortDateServlet.java
package control.crud;

import dal.CrudDAO;

========
import dal.DashboardDAO;
>>>>>>>> TruongBQ:SWP/src/java/admin/FeedbackDetail.java
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


/**
 *
 * @author hp
 */

@WebServlet(name = "SortDateServlet", urlPatterns = {"/sortdate"})
public class SortDateServlet extends HttpServlet {

========

/**
 *
 * @author asus
 */
@WebServlet(name = "FeedbackDetail", urlPatterns = {"/feedbackdetail"})
public class FeedbackDetail extends HttpServlet {
>>>>>>>> TruongBQ:SWP/src/java/admin/FeedbackDetail.java

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
            out.println("<title>Servlet FeedbackDetail</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FeedbackDetail at " + request.getContextPath() + "</h1>");
>>>>>>>> TruongBQ:SWP/src/java/admin/FeedbackDetail.java
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
        String fid_raw = request.getParameter("fid");
        DashboardDAO dd = new DashboardDAO();
        
        request.setAttribute("feedback", dd.getFeedbackbyID(Integer.parseInt(fid_raw)));
        
        request.getRequestDispatcher("dashboard/feedbackdetail.jsp").forward(request, response);
>>>>>>>> TruongBQ:SWP/src/java/admin/FeedbackDetail.java
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
        String note = request.getParameter("note");
        
        DashboardDAO d = new DashboardDAO();
        model.Feedback f = d.getFeedbackbyID(Integer.parseInt(request.getParameter("fid")));
        
        try {
            // role, firstname, lastname, username, password, email, phonenum, create, update, isDelete
//            response.sendRedirect("addaccount");

            //uid, city, district, ward, detail, status
            model.Feedback nf = new model.Feedback();
            nf.setNote(note);
            d.updateFeedback(nf);
            response.sendRedirect("feedback");

        } catch (NumberFormatException e) {
            System.out.println(e);
        }
>>>>>>>> TruongBQ:SWP/src/java/admin/FeedbackDetail.java
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
