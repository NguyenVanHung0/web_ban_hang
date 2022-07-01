<%-- 
    Document   : Header.jsp
    Created on : Jun 28, 2022, 2:58:15 PM
    Author     : NguyenVanHung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header">
    <div class="header_box">
        <div class="header_logo">
            <a href="">
                <img src="./asset/images/logo.png" alt="logo"/>
            </a>
        </div>
        <div class="header_input-box">
            <form action="SearchController" method="get">
                <input type="text" name="name" placeholder="Nhập tên sản phẩm" />
                <button type="submit">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </form>
        </div>
        <div class="header_like-cart-account">
            <a href="">
                <div class="header_item">
                    <i class="fa-solid fa-heart"></i>
                    Yêu thích
                </div>
            </a>
            <a href="CartController">
                <div class="header_item header_cart">
                    <i class="fa-solid fa-cart-arrow-down"></i>
                    0đ
                </div>
            </a>
            <div class="header_item logout">
                <i class="fa-solid fa-user"></i>
                ${acc.name}
                <div class="account_list">
                    <a href="Login.jsp">Đăng xuất</a>
                </div>
            </div> 
        </div>
    </div>
</header>
<div class="navbar">
    <ul class="navbar_list">
        <li class="active1">
            <a href="">
                DANH MỤC SẢN PHẢM
            </a>
        </li>
        <li class="${page == "home" ? "active1" : ""}">
            <a href="HomeController?page=home">
                TRANG CHỦ
            </a>
        </li>
        <li class="${page == "introduce" ? "active1" : ""}">
            <a href="IntroduceController?page=introduce">
                GIỚI THIỆU
            </a>
        </li>
        <li class="${page == "product" ? "active1" : ""}">
            <a href="ShowSPController?page=product">
                SẢN PHẨM
            </a>
        </li>
        <li>
            <a href="">
                TIN TỨC
            </a>
        </li>
        <li class="${page == "contact" ? "active1" : ""}">
            <a href="ContactController?page=contact">
                LIÊN HỆ
            </a>
        </li>
    </ul>
</div>

<!--<script>
    var menuItems = document.querySelectorAll(".navbar_list li");
    menuItems.forEach(function(item){
//        item.classList.remove("active");
        item.addEventListener("click", function(e) {
            item.classList.add("active");
        });
    });
</script>-->
