/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import Entity.Account;
import Entity.Category;
import Entity.Product;
import com.dta.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NguyenVanHung
 */
@WebServlet(name = "ShowSPController", urlPatterns = {"/ShowSPController"})
public class ShowSPController extends HttpServlet {

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
        
        DAO dao = new DAO();
        
        
        int id_user = 0;
        Cookie[] arrCookie = request.getCookies();
        for(Cookie c : arrCookie){
            if(c.getName().equals("accountId")){
                id_user = Integer.parseInt(c.getValue());
            }
        }
        Account account = dao.getAccountById(id_user);
        
        ArrayList<Product> listProduct = dao.getProduct();
        ArrayList<Category> listMale = dao.getListCategoryMale();
        ArrayList<Category> listFemale = dao.getListCategoryFemale();
        String page = request.getParameter("page");
        
        request.setAttribute("page", page);
        request.setAttribute("listProduct", listProduct);
        request.setAttribute("listCaMale", listMale);
        request.setAttribute("listCaFemale", listFemale);
        request.setAttribute("acc", account);
        request.getRequestDispatcher("ShowSP.jsp").forward(request, response);
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
