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
@WebServlet(urlPatterns = {"/RepeatVisitor"})
public class RepeatVisitor extends HttpServlet {

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
        boolean newbie = true;
        Cookie[] cookies = request.getCookies();
        if(cookies != null){
            for(int i = 0; i< cookies.length; i++){
                Cookie c = cookies[i];
                if((c.getName().equals("repeatVisitor"))&&(c.getValue().equals("yes"))){
                    newbie = false;
                    break;
                }
            }
        } /* end of if*/
        int counter = 0;
        String title;
        if (newbie){
            Cookie returnVisitorCookie = new Cookie("repeatVisitor", "yes");
            returnVisitorCookie.setMaxAge(60*60*24*365);
            response.addCookie(returnVisitorCookie);
            title = "Welcome Abroad";
        } else {
            title = "Welcome Back";
            counter+=1;
        }
        response.setContentType("text/html;charset=UTF-8");
        String docType="<<!DOCTYPE HTML PUBLIC \\\"-//W3C//DTD HTML 4.0"+"Transitional//EN\\\">\\n";
        
        try (PrintWriter out = response.getWriter()) {
            out.println(docType +                 
"<HTML>\n" +                 
"<HEAD><TITLE>" + title + "</TITLE></HEAD>\n" +                 
"<BODY BGCOLOR=\"#FDF5E6\">" +                 
"<H1 ALIGN=\"CENTER\">" + title + "</H1>\n<p ALIGN=\"CENTER\"> Counter:"+counter +                 
"</BODY></HTML>");
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RepeatVisitor</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RepeatVisitor at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
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
