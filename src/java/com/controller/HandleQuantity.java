/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import Entity.Order;
import Entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NguyenVanHung
 */
@WebServlet(name = "HandleQuantity", urlPatterns = {"/HandleQuantity"})
public class HandleQuantity extends HttpServlet {

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

        String id = request.getParameter("id");
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("order");
        ArrayList<Product> list = (ArrayList<Product>) order.getListPro();
        if (action.equals("minus")) {
            for (int i = 0; i < list.size(); i++) {
                if (list.get(i).getId() == Integer.parseInt(id)) {
                    if (list.get(i).getQuantity() > 1) {
                        list.get(i).setQuantity(list.get(i).getQuantity() - 1);
                    } else {
                        list.remove(list.get(i));
                    }
                }
            }
        } else {
            for (int i = 0; i < list.size(); i++) {
                if (list.get(i).getId() == Integer.parseInt(id)) {
                    list.get(i).setQuantity(list.get(i).getQuantity() + 1);
                }
            }
        }
        order.setListPro(list);
        session.setAttribute("order", order);
        request.getRequestDispatcher("CartController").forward(request, response);
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
