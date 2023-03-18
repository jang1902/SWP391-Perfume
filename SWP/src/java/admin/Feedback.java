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
import java.util.List;

/**
 *
 * @author asus
 */
@WebServlet(name = "Feedback", urlPatterns = {"/feedback"})
public class Feedback extends HttpServlet {

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
            out.println("<title>Servlet Feedback</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Feedback at " + request.getContextPath() + "</h1>");
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
        DashboardDAO dd = new DashboardDAO();
        
        
        List<model.Feedback> f = dd.listFeedback();
        
        if(f.size()==0){
            request.setAttribute("msg", "Chưa có đánh giá nào!");
        }
        else{
            int page = 0;
        String pageStr = request.getParameter("page");

        final int PAGE_SIZE = 8;
        List<model.Feedback> list = dd.listFeedback();
        int maxPage = list.size() / 8;
        if (pageStr != null && !pageStr.equals("0")) {
            page = Integer.parseInt(pageStr);
        }
        

        double max = (double) list.size() / (double) 8;
        if (list.size() % 8 != 0) {
            maxPage += 1;
        }
        int numOfPro = page * PAGE_SIZE;
        String str = String.valueOf(max - (maxPage - 1));
        String[] split = str.split("\\.");
        if (page == maxPage) {
            if (split[1].equals("125")) {
                numOfPro = numOfPro - 7;
            }
            if (split[1].equals("25")) {
                numOfPro = numOfPro - 6;
            }
            if (split[1].equals("375")) {
                numOfPro = numOfPro - 5;
            }
            if (split[1].equals("5")) {
                numOfPro = numOfPro - 4;
            }
            if (split[1].equals("625")) {
                numOfPro = numOfPro - 3;
            }
            if (split[1].equals("75")) {
                numOfPro = numOfPro - 2;
            }
            if (split[1].equals("875")) {
                numOfPro = numOfPro - 1;
            }
 
        }
        int from = (page - 1) * PAGE_SIZE;
        if (!(pageStr != null && !pageStr.equals("0"))) {
            maxPage = 0;
            from = 0;
            numOfPro = 0;
        }

        request.setAttribute("maxPage", maxPage);

        request.setAttribute("numPrd", list.size());
    
        request.setAttribute("listFeedback", list.subList(from, numOfPro));
        }
        
        
        
        request.getRequestDispatcher("dashboard/feedback.jsp").forward(request, response);
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
        processRequest(request, response);
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
