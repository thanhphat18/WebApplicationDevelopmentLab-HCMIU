/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.Enumeration;

/**
 *
 * @author thanhphatchau
 */
@WebServlet(urlPatterns = {"/formsubmit"})
public class formsubmit extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        response.setContentType("text/html;charset=UTF-8");
        try {
            //Check empty fields
            if(username==null||password==null||username.length()==0||password.length()==0)
            {                
                RequestDispatcher rd = request.getRequestDispatcher("form.jsp");
                rd.include(request, response);
                out.println("</br>Please fill in all fields.</br>");
                
            }
            else {
                //Check if username exists
                FileReader file = new FileReader("account.txt");
                BufferedReader br= new BufferedReader(file);
                String line;
                while ((line=br.readLine())!=null) {
                    if(line.startsWith(username+"/")) {
                       
                        RequestDispatcher rd = request.getRequestDispatcher("form.jsp");
                        rd.include(request, response);
                        out.println("</br>This username exists.</br>");
                        br.close();
                        return;
                    }
                }
            
                //Store accounts in file
                FileWriter file1 = new FileWriter("account.txt",true);
                BufferedWriter bw = new BufferedWriter(file1);
                bw.write(username+"/"+password);
                bw.newLine();
                bw.flush();
                bw.close();
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.include(request, response);
            }
        }catch (Exception e) {
                out.println(e.getMessage()); // prints "hu?"
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
