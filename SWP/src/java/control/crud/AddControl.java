/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control.crud;

import dal.CrudDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import model.SizeProduct;

/**
 *
 * @author hp
 */
@WebServlet(name="AddControl", urlPatterns={"/add"})
public class AddControl extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddControl</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddControl at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        String title_raw = request.getParameter("title");
        String description_raw = request.getParameter("description");
        String gender_id_raw = request.getParameter("gender_id"); 
        String size_id_raw = request.getParameter("size_id");        
        String quantity_raw = request.getParameter("quantity");
        String price_in_raw = request.getParameter("price_in");
        String price_out_raw = request.getParameter("price_out");
        String discount_id_raw = request.getParameter("discount_id");
        String category_id_raw = request.getParameter("category_id");
        String thumbnail_raw = request.getParameter("thumbnail");
        
        int price_out ,price_in, quantity, discount_id, gender_id, category_id, size_id;
        price_out = Integer.parseInt(price_out_raw);
        price_in = Integer.parseInt(price_in_raw);
        quantity = Integer.parseInt(quantity_raw);
        discount_id = Integer.parseInt(discount_id_raw);
        gender_id = Integer.parseInt(gender_id_raw);
        category_id = Integer.parseInt(category_id_raw);
        size_id = Integer.parseInt(size_id_raw);
        
        try {
            CrudDAO d = new CrudDAO();
            d.insertProduct(category_id, title_raw, gender_id, discount_id, thumbnail_raw, description_raw);                 
            d.insertSizeProduct(d.getIdLastProduct().getId(), size_id, quantity, price_in, price_out);
            response.sendRedirect("addproduct");
        }catch(IOException e){
            System.out.println(e);
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        processRequest(request, response);
        
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
