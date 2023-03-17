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
import java.util.HashSet;
import model.SizeProduct;

/**
 *
 * @author hp
 */
@WebServlet(name="AddControl1", urlPatterns={"/add1"})
public class AddControl1 extends HttpServlet {
   
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
            out.println("<title>Servlet AddControl2</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddControl2 at " + request.getContextPath () + "</h1>");
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
        String discount_id_raw = request.getParameter("discount_id");
        String category_id_raw = request.getParameter("category_id");
        String thumbnail_raw = request.getParameter("thumbnail");
        
        int discount_id, gender_id, category_id, size_id;
        discount_id = Integer.parseInt(discount_id_raw);
        gender_id = Integer.parseInt(gender_id_raw);
        category_id = Integer.parseInt(category_id_raw);
        size_id = Integer.parseInt(size_id_raw);
        
        boolean check = true;
        
        try {
            CrudDAO d = new CrudDAO();
            
            if(!d.checkTitle(title_raw))// neu khong ton tai ten thi add vao bang product
            {
                d.insertProduct(category_id, title_raw, gender_id, discount_id, thumbnail_raw, description_raw);  
                check = false;
            }
            else // San pham ton tai thi khong add vao product
            {
                SizeProduct sp = d.getSizeProduct(size_id, d.getProductByTitle(title_raw).getId());// lay size product co id san pham ton tai de check gia
                request.setAttribute("sp" , sp);
            }
            
                request.setAttribute("sid", size_id);
                request.setAttribute("pid", d.getProductByTitle(title_raw).getId());             
                request.setAttribute("check", check);
            
            request.getRequestDispatcher("addproduct2.jsp").forward(request, response);
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
