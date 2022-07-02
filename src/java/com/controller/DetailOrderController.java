/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

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
@WebServlet(name = "DetailOrderController", urlPatterns = {"/DetailOrderController"})
public class DetailOrderController extends HttpServlet {

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

        DAO dao = new DAO();
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("order");
        ArrayList<Product> list = (ArrayList<Product>) order.getListPro();
        Date date = new Date();
        String address = request.getParameter("address");
        String sdt = request.getParameter("phone");
        
        if (address.equals("") || sdt.equals("")) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Địa chỉ và số điện thoại không được để trống');");
            out.println("location='OrderController';");
            out.println("</script>");
        } else {
            String reg = "^(0|\\+84)(\\s|\\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\\d)(\\s|\\.)?(\\d{3})(\\s|\\.)?(\\d{3})$";
            boolean kt = sdt.matches(reg);
            if (!kt) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Số điện thoại không đúng');");
                out.println("location='OrderController';");
                out.println("</script>");
            } else {
                int id_user = 0;
                Cookie[] arrCookie = request.getCookies();
                for (Cookie c : arrCookie) {
                    if (c.getName().equals("accountId")) {
                        id_user = Integer.parseInt(c.getValue());
                    }
                }
                double total_money = 0;
                for (Product p : list) {
                    total_money += p.getPrice_output() * p.getQuantity();
                    dao.insertOrderDetail(dao.countOrder() + 1, p.getId(), p.getQuantity(), p.getPrice_output());
                }
                dao.insertOrder(id_user, date.toString(), 1, total_money+12000, sdt, address);
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Đặt hàng thành công.');");
                out.println("location='CartController';");
                out.println("</script>");
                session.invalidate();
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
