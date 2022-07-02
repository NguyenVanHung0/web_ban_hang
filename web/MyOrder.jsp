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
        <link rel="stylesheet" href="./css/MyOrder.css"/>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
        <div class="cart">
            <div class="cart_box">
                <div class="cart_header">
                    <p>Đơn hàng</p>
                </div>
                <div class="cart_content">
                    <div class="product_list">
                    <c:forEach items="${listOrder}" var="o">
                        <div class="order_item">
                            <h3>Mã đơn hàng: </h3> <span>${o.id_order}</span>
                            <p>Trạng thái: </p> <span style="${o.status == 1 ? "color: green;" : o.status == 2 ? "color: blue;" : "color: red;"}">${o.status == 1 ? "Chờ xác nhận" : o.status == 2 ? "Đơn đã được xác nhận" : "Đơn đã bị hủy"}</span> <br/>
                            <p>Số lượng sản phẩm: </p> <span>${o.listPro.size()}</span> <br/>
                            <p>Tổng tiền: </p> <span>${o.totalMoney}đ</span>
                            <p>Số điện thoại: </p> <span>${o.phone}</span> <br/>
                            <div><p>Địa chỉ: </p> <span>${o.address}</span></div> <br/>
                            <button style="${o.status == 1 ? "" : "opacity: 0.4; cursor: context-menu;"}"><a href="CancelOrder?id=${o.id_order}">Hủy đơn</a></button>
                        </div>
                    </c:forEach>
                    </div>
                </div>
            </div>
        </div>
         <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
