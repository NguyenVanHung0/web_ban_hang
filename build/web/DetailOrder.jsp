<%-- 
    Document   : DetailOrder
    Created on : Jul 1, 2022, 1:52:59 PM
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
        <link rel="stylesheet" href="./css/DetailOrder.css"/>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>

            <div class="detail_order">
                <div class="detail_order-box">
                    <div class="detail_order-list">
                    <c:forEach items="${listProduct}" var="o">
                        <div class="product_item">
                            <img src="./asset/images/product.jpg" alt="alt"/>
                            <div class="product_item-text">
                                <p class="product_item-header">${o.name}</p>
                                <p class="product_item-price">${o.price_output}đ</p>
                                <div class="product_item-quantity-box">
                                    <input class="product_item-quantity" value="${o.quantity}" type="number" readonly="" name="quantity" />
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="detail_order-info">
                    <form action="DetailOrderController" method="post">
                        <div class="detail_order-address">
                            Địa chỉ:
                            <textarea cols="40" rows="5" name="address"></textarea>
                        </div>
                        <div class="detail_order-phone">
                            Số điện thoại:
                            <input type="text" name="phone" value="${acc.std}" />
                        </div>
                        <div class="detail_order-money">
                            <div><p>Tổng tiền hàng: </p><span>${total}đ</span></div> <br/>
                            <div><p>Tổng tiền phí vẫn chuyển: </p><span>120000đ</span></div> <br/>
                            <div><p>Tổng thanh toán: </p><span>${total+12000}đ</span></div> <br/>
                        </div>
                        <button type="submit">Đặt hàng</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
