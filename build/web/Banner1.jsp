<%-- 
    Document   : Banner1
    Created on : Jun 28, 2022, 4:20:36 PM
    Author     : NguyenVanHung
--%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="banner_1">
    <div class="banner1_box">
        <div class="banner1_top">
            <ul class="banner1_list">
                <li class="banner1_item">
                    <a>
                        Thời trang nam
                        <i class="fa-solid fa-angle-right"></i>
                        <ul class="banner1_list-child">
                            <c:forEach items="${listCaMale}" var="o">
                            <li class="banner1_item-child">
                                <a href="category?id=${o.id}">
                                    ${o.name}
                                </a>
                            </li>
                            </c:forEach>
                        </ul>
                    </a>
                </li>
                <li class="banner1_item">
                    <a>
                        Thời trang nữ
                        <i class="fa-solid fa-angle-right"></i>
                        <ul class="banner1_list-child">
                            <c:forEach items="${listCaFemale}" var="o">
                            <li class="banner1_item-child">
                                <a href="category?id=${o.id}">
                                    ${o.name}
                                </a>
                            </li>
                            </c:forEach>
                        </ul>
                    </a>
                </li>
                <c:forEach items="${listCaCom}" var="o"  >
                <li class="banner1_item">
                    <a href="category?id=${o.id}">
                        ${o.name}
                    </a>
                </li>
                </c:forEach> 
            </ul>
            <div class="banner1_slide">
                <img src="./asset/images/silder1.jpg" />
            </div>
            <div class="banner1_service">
                <div class="banner1_service-header">
                    <P>Chất lượng tốt nhất</p>
                </div>
                <div class="banner1_service-content">
                    <div class="banner1_service-row">
                        <div class="banner1_service-item">
                            <a href=""><img src="./asset/images/service1.png" /></a>
                            <p class="banner1_service-title">
                                Thanh toán khi nhận hàng
                            </p>
                        </div>
                        <div class="banner1_service-item">
                            <a href=""><img src="./asset/images/service2.png" /></a>
                            <p class="banner1_service-title">
                                Giao hàng trong 2h
                            </p>
                        </div>
                    </div>
                    <div class="banner1_service-row">
                        <div class="banner1_service-item">
                            <a href=""><img src="./asset/images/service3.png" /></a>
                            <p class="banner1_service-title">
                                Sản phẩm đổi trả miễn phí
                            </p>
                        </div>
                        <div class="banner1_service-item">
                            <a href=""><img src="./asset/images/service4.png" /></a>
                            <p class="banner1_service-title">
                                Sản phẩm chính hãng
                            </p>
                        </div>
                    </div>
                </div>
                <div class="banner1_service-phone">
                    <div class="banner1_service-phone-icon">
                        <i class="fa-solid fa-phone"></i>
                    </div>
                    <div class="banner1_service-phone-text">
                        Dịch vụ CSKH </br>
                        Hotline: <a href="tel:0862732222">08 6273 2222</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner1_bottom">
            <div class="banner1_product-slide">
                <div class="slide"><img src="./asset/images/slide1.jpg"></div>
                <div class="slide"><img src="./asset/images/slide2.jpg"></div>
                <div class="slide"><img src="./asset/images/slide3.jpg"></div>
                <div class="slide"><img src="./asset/images/slide4.jpg"></div>
                <div class="slide"><img src="./asset/images/slide5.jpg"></div>
                <div class="slide"><img src="./asset/images/slide6.jpg"></div>
                <div class="slide"><img src="./asset/images/slide1.jpg"></div>
                <div class="slide"><img src="./asset/images/slide2.jpg"></div>
                <div class="slide"><img src="./asset/images/slide3.jpg"></div>
                <div class="slide"><img src="./asset/images/slide4.jpg"></div>
                <div class="slide"><img src="./asset/images/slide5.jpg"></div>
                <div class="slide"><img src="./asset/images/slide6.jpg"></div>
            </div>
        </div>
    </div>
</div>
