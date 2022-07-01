/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dta.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NguyenVanHung
 */
@WebServlet(name = "SignInController", urlPatterns = {"/SignUpController"})
public class SignUpController extends HttpServlet {

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
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        String sdt = request.getParameter("sdt");
        String name = request.getParameter("username");
        String pass = request.getParameter("password");
        String repass = request.getParameter("repassword");

        String reg = "^(0|\\+84)(\\s|\\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\\d)(\\s|\\.)?(\\d{3})(\\s|\\.)?(\\d{3})$";
        boolean kt = sdt.matches(reg);
        String regexPass = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{8,20}$";
        Pattern pattern = Pattern.compile(regexPass, Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher(pass);
        boolean matchFound = matcher.find();

        if (sdt.equals("") || name.equals("") || pass.equals("") || repass.equals("")) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Các trường không được để trống');");
            out.println("location='SignUp.jsp';");
            out.println("</script>");
        } else {
            if (!kt) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Định dạng số điện thoại không đúng.');");
                out.println("location='SignUp.jsp';");
                out.println("</script>");
            } else {
                if (!matchFound) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Mật khẩu phải chứa chữ, số, ký tự đặc biệt và lớn hơn 8 ký tự.');");
                    out.println("location='SignUp.jsp';");
                    out.println("</script>");
                } else {
                    if (!pass.equals(repass)) {
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Password và repassword phải giống nhau.');");
                        out.println("location='SignUp.jsp';");
                        out.println("</script>");
                    } else {
                        DAO dao = new DAO();
                        if (dao.checkAccount(sdt)) {
                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Tài khoản đã tồn tại.');");
                            out.println("location='SignUp.jsp';");
                            out.println("</script>");
                        } else {
                            dao.insertAccount(name, pass, sdt);
                            out.println("<script type=\"text/javascript\">");
                            out.println("alert('Tạo tài khoản thành công.');");
                            out.println("location='Login.jsp';");
                            out.println("</script>");
                        }
                    }
                }
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
