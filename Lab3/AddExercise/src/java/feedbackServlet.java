/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Luong
 */
@WebServlet(urlPatterns = {"/feedbackServlet"})
public class feedbackServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
          boolean found = false;
        Cookie ck[]=request.getCookies();  
        if(ck!=null){  
            for(int i=0; i<ck.length; i++) { 
                Cookie c = ck[i]; 
                if (c.getName().equals("name")&&(!c.getValue().equals("")||c.getValue()!=null)) { 
                    Cookie c2=new Cookie("feedback",request.getParameter("fb-content"));  
                    c.setMaxAge(3600);
                    response.addCookie(c2);
                    
                    FileWriter file1 = new FileWriter("feedback.txt",true);
                    BufferedWriter bw = new BufferedWriter(file1);
                    bw.write(c.getValue()+":"+request.getParameter("fb-content"));
                    bw.newLine();
                    bw.flush();
                    bw.close();
                    out.println("</br>Feedback is sent successfully.");  
                    found = true;
                    break; 
                }  
            }  
            
            if(!found)
            {
                request.getRequestDispatcher("feedback.jsp").include(request, response);
            out.println("</br>Please login first.");  
            }
            
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
