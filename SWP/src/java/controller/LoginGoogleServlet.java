                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.UserDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import accessgoogle.common.GooglePojo;
import accessgoogle.common.GoogleUtils;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.sql.Date;

/**
 *
 * @author ASUS
 */
@WebServlet(name="LoginGoogleServlet", urlPatterns={"/login-google"})
public class LoginGoogleServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  public LoginGoogleServlet() {
    super();
  }
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String code = request.getParameter("code");
    if (code == null || code.isEmpty()) {
      RequestDispatcher dis = request.getRequestDispatcher("login");
      dis.forward(request, response);
    } else {
      String accessToken = GoogleUtils.getToken(code);
      GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
      String email=googlePojo.getEmail();
      request.setAttribute("id", googlePojo.getId());
      request.setAttribute("email", email);
      request.setAttribute("picture", googlePojo.getPicture());
      UserDAO d = new UserDAO();
      

        User user = d.getAccountByEmail(email);
        if(user==null){
            
       
              java.sql.Timestamp dateTime = new java.sql.Timestamp(System.currentTimeMillis());
              Date date=new Date(dateTime.getTime());
             
             d.addUserGoogle(email,(Date)date);
             
             HttpSession session = request.getSession();
             user=d.getAccountByEmail(email);
             session.setAttribute("userNow", user);
             response.sendRedirect("home");
        }else{
            HttpSession session = request.getSession();
             user=d.getAccountByEmail(email);
             session.setAttribute("userNow", user);
            response.sendRedirect("home");
        }
    }
  }
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    doGet(request, response);
  }
}