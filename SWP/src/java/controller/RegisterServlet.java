/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;


import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Calendar;
import model.User;


/**
 *
 * @author ASUS
 */
@WebServlet(name="RegisterServlet", urlPatterns={"/register"})
public class RegisterServlet extends HttpServlet {
   
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
            out.println("<title>Servlet SignupServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignupServlet at " + request.getContextPath () + "</h1>");
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
        processRequest(request, response);
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
        
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String re_pass=request.getParameter("repassword");
        String email=request.getParameter("email");
        if(!password.equals(re_pass)){
            response.sendRedirect("register");
        }else if(username.equals("")||password.equals("")||re_pass.equals("")||email.equals("")){
            
        }
        else{
            UserDAO dao = new  UserDAO();
            User u=dao.getAccountByEmail(email);
            java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
            if(u==null ){
                dao.addUser(username, password,email,date);
                String mess="register successfully!";
                request.setAttribute("ms", mess);
                 request.getRequestDispatcher("login").forward(request, response);
            }
            else if(u.getEmail().equals(email.toLowerCase())){
                String mess="This email is already registered, please enter another email";
                request.setAttribute("msMail", mess);   
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }else if(u.getUsername().equals(username)){
                String mess="This Username is already taken";
                request.setAttribute("msUsername", mess);   
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        }
        
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
