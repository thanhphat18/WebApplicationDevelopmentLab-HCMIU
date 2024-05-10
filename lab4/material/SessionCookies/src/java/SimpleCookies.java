/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import java.net.*;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Sinh Nguyen Van
 */
public class SimpleCookies extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SimpleCookies</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SimpleCookies at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
             */
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out;
        response.setContentType("text/html");
        out = response.getWriter();
        Cookie cookie = new Cookie("Cookies_Name", "123456");
        cookie.setMaxAge(100);
        response.addCookie(cookie);
        out.println("<HTML><HEAD><TITLE>");
        out.println(" Use of cookie in servlet");
        out.println("</TITLE></HEAD><BODY BGCOLOR='cyan'>");
        out.println(" <b>This is a Cookie example</b><br>");
        out.print("Name: " + cookie.getName() + "<br>");
        out.print("Value: " + cookie.getValue() + "<br>");
        out.print("Path: " + request.getContextPath() + "<br>");
        out.print("Domain: " + request.getRequestURL() + "<br>");
        out.println("</BODY></HTML>");
        out.close();
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
