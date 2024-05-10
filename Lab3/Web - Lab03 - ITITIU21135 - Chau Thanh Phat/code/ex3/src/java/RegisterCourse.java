/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.util.Enumeration;


/**
 *
 * @author thanhphatchau
 */
@WebServlet(urlPatterns = {"/RegisterCourse"})
public class RegisterCourse extends HttpServlet {


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
        Enumeration paramNames = request.getParameterNames();
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterCourse</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1 align=center>Successfully Register to The Courses</h1>");
            out.println("<table border=1 align=center>\n"+"<tr>\n"+"<th>Titles<th>User Input");
            while(paramNames.hasMoreElements()){
                String paramName= (String)paramNames.nextElement();
                out.print("<tr><td>"+paramName+"\n<td>");
                String[] paramValues = request.getParameterValues(paramName);
                if (paramValues.length ==1 ){
                    String paramValue = paramValues[0];
                    if (paramValue.length() == 0)
                        out.println("<i>No Value</i>");
                    else
                        out.println(paramValue);
                }else {
                    out.println("<ul>");
                    for(int i = 0; i < paramValues.length;i++){
                        out.println("<li>"+paramValues[i]);
                    }
                    out.println("</ul>");
                }
            }
            out.println("</table>");
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
