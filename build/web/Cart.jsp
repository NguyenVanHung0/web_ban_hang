<%-- 
    Document   : Cart
    Created on : Jun 30, 2022, 10:16:10 PM
    Author     : NguyenVanHung
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HungPage</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
        <link rel="stylesheet" href="./css/Base.css"/>
        <link rel="stylesheet" href="./css/Header.css"/>
        <link rel="stylesheet" href="./css/Footer.css"/>
        <link rel="stylesheet" href="./css/Cart.css"/>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
        <div class="cart">
            <div class="cart_box">
                <div class="cart_header">
                    <p>Giỏ hàng</p>
                </div>
                <div class="cart_content">
                    <div class="product_list">
                    <c:forEach items="${listProduct}" var="o">
                        <div class="product_item">
                            <img src="./asset/images/product.jpg" alt="alt"/>
                            <div class="product_item-text">
                                <p class="product_item-header">${o.name}</p>
                                <p class="product_item-price">${o.price_output}d</p>
                                <div class="product_item-quantity-box">
                                    <a href="HandleQuantity?id=${o.id}&action=minus"><i class="fa-solid fa-minus minusBtn"></i></a>
                                    <input class="product_item-quantity" value="${o.quantity}" type="number" name="quantity" />
                                    <a href="HandleQuantity?id=${o.id}&action=plus"><i  class="fa-solid fa-plus plusBtn"></i></a>
                                </div>
                            </div>
                                <button><a href="DeleteSPCartController?id=${o.id}">Xóa</a></button>
                        </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="cart_buy-btn">
                    <button><a href="OrderController">Mua hàng</a></button>
                </div>
            </div>
        </div>
         <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
