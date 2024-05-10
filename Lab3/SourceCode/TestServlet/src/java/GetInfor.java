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
public class GetInfor extends HttpServlet {
   
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
            out.println("<title>Getting Information</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GetInfor at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
            
        String title = "Reading Personal Information";
        String docType = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
      "Transitional//EN\">\n";
       out.println(docType +
                "<HTML>\n" +
                "<HEAD><TITLE>" + title + "</TITLE></HEAD>\n" +
                "<BODY BGCOLOR=\"#FDF5E6\">\n" +
                "<H1 ALIGN=\"CENTER\">" + title + "</H1>\n" +
                "<center>" +
                "<table border = 1>" + 
                "<tr>" + "<td>ID</TD>" + "<td>" + request.getParameter("ID") + "</td>" + "</tr>" +
                "<tr>" + "<td>Name</TD>" + "<td>" + request.getParameter("name") + "</td>" + "</tr>" +
                "<tr>" + "<td>Email</TD>" + "<td>" + request.getParameter("email") + "</td>" + "</tr>" +
                "<tr>" + "<td>Gerder</TD>" + "<td>" + request.getParameter("gender") + "</td>" + "</tr>" +
                "<tr>" + "<td>Major</TD>" + "<td>" + request.getParameter("Type") + "</td>" + "</tr>" +
                "<tr>" + "<td>Interesting Field</TD>" + "<td>" + request.getParameter("inf") + "</td>" + "</tr>" + 
                "</table>" +
                "</center>" +
                "</BODY></HTML>");
            
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
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
