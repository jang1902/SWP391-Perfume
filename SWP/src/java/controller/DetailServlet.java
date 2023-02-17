/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CartDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;
import model.Size;
import model.SizeProduct;

/**
 *
 * @author asus
 */
@WebServlet(name = "DetailServlet", urlPatterns = {"/pdetail"})
public class DetailServlet extends HttpServlet {

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
            out.println("<title>Servlet DetailServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DetailServlet at " + request.getContextPath() + "</h1>");
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
         String id_raw = request.getParameter("id");
        String sid_raw = request.getParameter("sid");
       
  
       int id = Integer.parseInt(id_raw);
 
        int sid= Integer.parseInt(sid_raw);
       ProductDAO dao = new ProductDAO();
       Product p=dao.getProductByID(id);
       
        List<Size> listS=new ArrayList<Size>();
        List<SizeProduct> listSP=dao.getSizeProductByPID(id);
        
        if(!listSP.isEmpty()){
        for (SizeProduct sizeProduct : listSP) {
            if(sizeProduct.getQuantity()>0){
                listS.add(dao.getSizeByID(sizeProduct.getSid()));
            }
        }
        }
        
        SizeProduct sp=dao.getSizeProductByPidSid(id, sid);
        
        Category cate = dao.getCategoryNameById(p.getCategory_id());
        
        
        
        
        if(sid>0){
            request.setAttribute("size",sid);
        }
        request.setAttribute("cate", cate);
        request.setAttribute("sp", sp);
        request.setAttribute("listS", listS);
        request.setAttribute("listSP", listSP);
        request.setAttribute("detail", p);
        request.getRequestDispatcher("productdetail.jsp").forward(request, response);
    }
    public static void main(String[] args) {
            
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
