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
@WebServlet(name = "AddCartController", urlPatterns = {"/AddCartController"})
public class AddCartController extends HttpServlet {

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
        String id = request.getParameter("id");
        String currenPage = request.getParameter("curpage");
        DAO dao = new DAO();
        Cookie[] arrCookie = request.getCookies();
        int id_user = 0;
        for(Cookie c : arrCookie){
            if(c.getName().equals("accountId")){
                id_user = Integer.parseInt(c.getValue());
            }
        }
        HttpSession  session = request.getSession();
        if(session.getAttribute("order") == null){
            ArrayList<Product> list = new ArrayList<>();
            Product p = dao.getProductById(id);
            p.setQuantity(1);
            list.add(p);
            Order order = new Order(id_user, list, 1); 
            session.setAttribute("order", order);
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Th??m s???n ph???m th??nh c??ng.');");
            out.println("location='" + currenPage + "?id=" + id +"';");
            out.println("</script>");
        }
        else{
            Order order = (Order) session.getAttribute("order");
            ArrayList<Product> list =(ArrayList<Product>) order.getListPro();
            boolean check = false;
            for(Product p : list){
                if(p.getId() == Integer.parseInt(id)){
                    p.setQuantity(p.getQuantity() + 1);
                    check = true;
                }
            }
            if(!check){
                Product p = dao.getProductById(id);
                p.setQuantity(1);
                list.add(p);
            }
            order.setListPro(list);
            session.setAttribute("order", order);
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Th??m s???n ph???m th??nh c??ng.');");
            out.println("location='" + currenPage + "?id=" + id +"';");
            out.println("</script>");
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
