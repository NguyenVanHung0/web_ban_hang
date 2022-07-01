<%-- 
    Document   : ShowSP
    Created on : Jun 30, 2022, 8:46:32 AM
    Author     : NguyenVanHung
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
        <link rel="stylesheet" href="./css/Base.css"/>
        <link rel="stylesheet" href="./css/Header.css"/>
        <link rel="stylesheet" href="./css/Footer.css"/>
        <link rel="stylesheet" href="./css/Banner2.css"/>
        <link rel="stylesheet" href="./css/ShowSP.css"/>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>

            <div class="showsp">
                <div class="showsp_box">
                    <div class="showsp_listdm">
                        <p>Danh mục sản phẩm</p>
                        <ul class="showsp_list-parent">
                            <li class="showsp_parent-item">
                                <a href="">Thời trang nam</a>
                                <i class="fa-solid fa-plus"></i>
                                <ul class="showsp_list-child">
                                <c:forEach items="${listCaMale}" var="o">
                                    <li class="showsp_child-item">
                                        <a href="">${o.name}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                        <li class="showsp_parent-item">
                            <a href="">Giày dép</a>
                        </li>
                        <li class="showsp_parent-item">
                            <a href="">Phụ kiện</a>
                        </li>
                        <li class="showsp_parent-item">
                            <a href="">Thời trang nữ</a>
                            <i class="fa-solid fa-plus"></i>
                            <ul class="showsp_list-child">
                                <c:forEach items="${listCaFemale}" var="o">
                                    <li class="showsp_child-item">
                                        <a href="">${o.name}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="showsp_content">
                    <p class="showsp_header">
                        ${category != null ? category.name : "Sản phẩm"}
                    </p>
                    <div class="showsp_sort">
                        <b>Xếp theo: </b>
                        <select>
                            <option>Thứ tự mặc định</option>
                            <option>Thứ tự theo mức độ phổ biến</option>
                            <option>Thứ tự theo điểm đánh giá</option>
                            <option>Mới nhất</option>
                            <option>Thứ tự theo giá: thấp đến cao</option>
                            <option>Thứ tự theo giá: cao đến thấp</option>
                        </select>
                    </div>
                    <div class="show_list-product">
                        <c:forEach items="${listProduct}" var="o">
                            <div class="banner2_pro-item">
                                <a href="DetailProductController?id=${o.id}">
                                    <img src="./asset/images/${o.image}" alt="alt"/>
                                    <p class="product_title">${o.name}</p>
                                    <p class="product_price">${o.price_output}</p><span>đ</span>
                                    <div class="banner2_pro-item-icon">
                                        <a class="heart-icon" href=""><i class="fa-solid fa-heart"></i></a>
                                        <a class="cart-icon" href="AddCartController?id=${o.id}&curpage=ShowSPController"><i class="fa-solid fa-cart-plus"></i></a>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="Footer.jsp"></jsp:include>
        <script>
            var plusBtn = document.querySelectorAll(".showsp_parent-item i");
            plusBtn.forEach(function (item) {
                item.addEventListener("click", function (e) {
                    item.parentElement.querySelector(".showsp_list-child").classList.toggle("appear");
                })
            })

        </script>
    </body>
</html>
