/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

//import dal.CartDAO;
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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Gallery;
import model.Gender;
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
        String gid_raw = request.getParameter("gid");

        int id = Integer.parseInt(id_raw);
        int sid = Integer.parseInt(sid_raw);
        int gid = Integer.parseInt(gid_raw);
        request.setAttribute("sizeid",sid);
        
        ProductDAO dao = new ProductDAO();
        Product p = dao.getProductByID(id);
        
        SizeProduct getP = dao.getSizeProductByPidSid(id, sid);

        List<Size> ls = dao.getSizeByPID(id);
        
        List<Gallery> listg = dao.getGalleryByPid(id) ;

        Category getC = dao.getCategoryNameById(p.getCategory_id());

        Gender g = dao.getGenderByID(id);
        List<Product> lg;
        try {
            lg = dao.randomRelative(gid);
            request.setAttribute("relativeproducts", lg);
        } catch (SQLException ex) {

        }
        request.setAttribute("cate", getC);
        request.setAttribute("detail", getP);
        request.setAttribute("product", p);
        request.setAttribute("size", ls);
        request.setAttribute("gender", g);
        request.setAttribute("listgallery", listg);
        int i=1;
        
        request.setAttribute("count", ++i);
        
  

        request.getRequestDispatcher("productdetail.jsp").forward(request, response);
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
        String id_raw = request.getParameter("id");
        String sid_raw = request.getParameter("sid");
        String gid_raw = request.getParameter("gid");

        int id = Integer.parseInt(id_raw);
        int sid = Integer.parseInt(sid_raw);
        int gid = Integer.parseInt(gid_raw);
        request.setAttribute("sizeid",sid);
        ProductDAO dao = new ProductDAO();
        Product p = dao.getProductByID(id);
        SizeProduct getP = dao.getSizeProductByPidSid(id, sid);

        List<Size> ls = dao.getSizeByPID(id);

        Category getC = dao.getCategoryNameById(p.getCategory_id());

        Gender g = dao.getGenderByID(id);
        List<Product> lg = null;
        try {
            lg = dao.randomRelative(gid);
            request.setAttribute("relativeproducts", lg);
        } catch (SQLException ex) {

        }
        request.setAttribute("cate", getC);
        request.setAttribute("detail", getP);
        request.setAttribute("product", p);
        request.setAttribute("size", ls);
        request.setAttribute("gender", g);

        request.getRequestDispatcher("productdetail.jsp").forward(request, response);
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
