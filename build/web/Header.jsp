<%-- 
    Document   : Header.jsp
    Created on : Jun 28, 2022, 2:58:15 PM
    Author     : NguyenVanHung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header">
    <div class="header_logo">
        <a href="">
            <img src="./asset/images/logo.png" alt="logo"/>
        </a>
    </div>
    <div class="header_input-box">
        <input type="text" name="name" placeholder="Nhập tên sản phẩm" />
        <button>
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
    </div>
    <div class="header_like-cart-account">
        <a href="">
            <div class="header_item">
                <i class="fa-solid fa-heart"></i>
                Yêu thích
            </div>
        </a>
        <a href="">
            <div class="header_item">
                <i class="fa-solid fa-cart-arrow-down"></i>
                0đ
            </div>
        </a>
        <a href="">
            <div class="header_item">
                <i class="fa-solid fa-user"></i>
                Tài khoản
            </div> 
        </a>
    </div>
</header>
<div class="navbar">
    <ul class="navbar_list">
        <li>
            <a href="">
                DANH MỤC SẢN PHẢM
            </a>
        </li>
        <li>
            <a href="">
                TRANG CHỦ
            </a>
        </li>
        <li>
            <a href="">
                GIỚI THIỆU
            </a>
        </li>
        <li>
            <a href="">
                SẢN PHẢM
            </a>
        </li>
        <li>
            <a href="">
                TIN TỨC
            </a>
        </li>
        <li>
            <a href="">
                LIÊN HỆ
            </a>
        </li>
    </ul>
</div>
