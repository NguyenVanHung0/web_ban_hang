/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import Entity.Account;
import Entity.Order;
import Entity.Product;
import com.dta.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NguyenVanHung
 */
@WebServlet(name = "OrderController", urlPatterns = {"/OrderController"})
public class OrderController extends HttpServlet {

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
        
        String login_logout = "Đăng nhập";
        int id_user = 0;
        Cookie[] arrCookie = request.getCookies();
        for(Cookie c : arrCookie){
            if(c.getName().equals("accountId")){
                id_user = Integer.parseInt(c.getValue());
                login_logout = "Đăng xuất";
            }
        }
        Account account = dao.getAccountById(id_user);
        
        HttpSession session = request.getSession();
        ArrayList<Product> list = null;
        Order order = null;
        if(session.getAttribute("order") != null){
            order = (Order) session.getAttribute("order");
            list = (ArrayList<Product>) order.getListPro();
        }
        if(list != null){
            double total_money = 0;
            for(Product p: list){
                total_money += p.getPrice_output()*p.getQuantity();
            }
            request.setAttribute("listProduct", list);
            request.setAttribute("total", total_money);
            request.setAttribute("acc", account);
            request.setAttribute("login_logout", login_logout);
            request.getRequestDispatcher("DetailOrder.jsp").forward(request, response);
        }
        else{
            request.getRequestDispatcher("CartController").forward(request, response);
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
