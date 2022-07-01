<%-- 
    Document   : Banner4
    Created on : Jun 28, 2022, 10:41:14 PM
    Author     : NguyenVanHung
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="banner2">
    <div class="banner2_box">
        <div class="banner2_left">
            <div class="banner2_list">
                <a href="">THỜI TRANG NỮ</a>
                <ul>
                    <c:forEach items="${listCaFemale}" var="o">
                    <li class="banner2_item">
                        <a href="category?id=${o.id}">
                            ${o.name}
                        </a>
                    </li>
                    </c:forEach>
                    
                </ul>
            </div>
            <div class="banner2_img">
                <a href="">
                    <img src="./asset/images/fashion2.png" />
                </a>
            </div>
        </div>
        <div class="banner2_right">
            
            <div class="banner2_product">
                <c:forEach items="${listProduct}" var="o">
                <div class="banner2_pro-item">
                    <a href="DetailProductController?id=${o.id}">
                        <img src="./asset/images/${o.image}" alt="alt"/>
                        <p class="product_title">${o.name}</p>
                        <p class="product_price">${o.price_output}</p><span>đ</span>
                        <div class="banner2_pro-item-icon">
                            <a class="heart-icon" href=""><i class="fa-solid fa-heart"></i></a>
                            <a class="cart-icon" href="AddCartController?id=${o.id}&curpage=HomeController"><i class="fa-solid fa-cart-plus"></i></a>
                        </div>
                    </a>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
