/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author thanhphatchau
 */
@WebServlet(urlPatterns = {"/ShowSession"})
public class ShowSession extends HttpServlet {

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
        HttpSession session = request.getSession();
        String heading;
        Integer accessCount = (Integer)session.getAttribute("accessCount");
        if (accessCount == null){
            accessCount = new Integer(0);
            heading = "Welcome, Newcomer";
        } else {
            heading = "Welcome back";
            accessCount = new Integer(accessCount.intValue()+1);
        }
        session.setAttribute("accessCount",accessCount);
        String title ="Session Tracking Example";
        String doctype= "<!DOCTYPE HTML PUBLIC \\\"-//W3C//DTD HTML 4.0" + "Transitional//EN\\\">";
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println(doctype+
                    "<html>"+
                    "<HEAD><TITLE>" + title + "</TITLE></HEAD>\n" +
                    "<BODY BGCOLOR=\"#FDF5E6\">\n" +
                    "<CENTER>\n" +
                    "<H1>" + heading + "</H1>\n" +
                    "<H2>Information on Your Session:</H2>\n" + 
                    "<TABLE BORDER=1>\n" +
                    "<TR BGCOLOR=\"#FFAD00\">\n" +
                    "  <TH>Info Type<TH>Value\n" +
                    "<TR>\n" +
                    "  <TD>ID\n" +
                    "  <TD>" + session.getId() + "\n" +
                    "<TR>\n" +
                    "  <TD>Creation Time\n" +
                    "  <TD>" +
                    session.getCreationTime() + "\n" +
                    "<TR>\n" +                 
                    "  <TD>Time of Last Access\n" +                 
                    "  <TD>" +                 
                    session.getLastAccessedTime() + "\n" +                 
                    "<TR>\n" +                 
                    "  <TD>Number of Previous Accesses\n" +                 
                    "  <TD>" + accessCount + "\n" +                 
                    "</TABLE>\n" +                 
                    "</CENTER></BODY></HTML>"
            );
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
