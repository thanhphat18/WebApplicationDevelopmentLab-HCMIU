/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author thanhphatchau
 */
@WebServlet(urlPatterns = {"/readInfo"})
public class readInfo extends HttpServlet {
    String username;
    String password;

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
        Cookie[] cookies = request.getCookies();
        
        for(int i =0; i < cookies.length; i++){
            Cookie c = cookies[i];
            String name = c.getName();
            String value = c.getValue();
            if(name.equals("password")&&value.equals("admin")){
                username = value;
                password = name;
            }
        }
        String name = request.getParameter("fname") + request.getParameter("lname");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String major = request.getParameter("major");
        String living = request.getParameter("address");
        String email = request.getParameter("mail");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet readInfo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Reading Personal Information</h1>");
            out.println("<table border=1 align=\"center\"><tr><td>Your name:</td><td>"
                    +name+"</td></tr>"+
                    "<tr><td>Gender:</td><td>" + gender +"</td></tr>"+
                    "<tr><td>Birthday:</td><td>" + dob +"</td></tr>"+
                    "<tr><td>Major:</td><td>" + major +"</td></tr>"+
                    "<tr><td>I live in:</td><td>" + living +"</td></tr>"+
                    "<tr><td>Email adress:</td><td>" + email +"</td></tr>" +
                    "<tr><td>Username:</td><td>" + username +"</td></tr>" +
                    "<tr><td>Password:</td><td>" + password +"</td></tr>" 
            );
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
        processRequest(request, response);
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
