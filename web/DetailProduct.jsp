<%-- 
    Document   : DetailProduct
    Created on : Jun 29, 2022, 9:56:49 AM
    Author     : NguyenVanHung
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HungPage</title>
        <link rel="stylesheet" href="./css/Header.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
        <link rel="stylesheet" href="./css/Footer.css"/>
        <link rel="stylesheet" href="./css/Base.css"/>
        <link rel="stylesheet" href="./css/DetailProduct.css"/>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>

            <div class="detail">
                <div class="detail_container">
                    <div class="detail_box">
                        <div class="detail_box-img">
                            <div class="detail_list-img">
                                <img src="./asset/images/product.jpg" alt=""/>
                                <img src="./asset/images/product.jpg" alt=""/>
                                <img src="./asset/images/product.jpg" alt=""/>
                                <img src="./asset/images/product.jpg" alt=""/>
                            </div>
                            <img src="./asset/images/product.jpg" alt=""/>
                        </div>
                        <div class="detai_box-content">
                            <div class="detail_box-header">
                                <p>${product.name}</p>
                            </div>
                            <div class="detail_box-status">
                                <b>Trạng thái: </b> ${product.quantity > 0 ? "<p>Còn hàng</p>" : "<p>Hết hàng</p>"}
                            </div>
                            <div class="detail_box-title">
                                <ul>
                                    <c:forEach begin="0" end="${countTitle-1}" var="o">
                                    <li>${arrTitle[o]}</li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="detail_box-price">
                                <b>${product.price_output}đ</b>
                            </div>
                            <div class="detail_box-buyBtn">
                                <input type="number" name="quantity" value="1"/>
                                <button>Mua hàng</button>
                            </div>
                            <div class="detail_box-addcart">
                                <a href="AddCartController?id=${product.id}&curpage=DetailProductController">Thêm vào giỏ</a>
                            </div>
                        </div>
                    </div>
                    <div class="detail_box-bottom">
                        <div class="detail_box-btn">
                            <button class="description_btn active">Mô tả</button>
                            <button class="evaluate_btn">Đánh giá</button>
                        </div>
                        <div class="description_content">
                            <p>
                                ${product.description}
                            </p>
                        </div>
                        <div class="evaluate_content">
                            <p class="evaluate_header">Đánh giá</p>
                            <div class="my_evaluate">
                                <span>Đánh giá của bạn</span>
                                <div class="evaluate_icon">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star-half-stroke"></i>
                                </div>
                            </div>
                            <div class="evaluate_comment">
                                <p>Nhận xét của bạn</p>
                                <textarea cols="100" rows="5"></textarea>
                                <button class="sent_btn">Gửi đi</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <jsp:include page="Footer.jsp"></jsp:include>
    </body>

    <script>
        var desBtn = document.querySelector(".description_btn");
        var evaluaBtn = document.querySelector(".evaluate_btn");
        var desBox = document.querySelector(".description_content");
        var evalueBox = document.querySelector(".evaluate_content");

        evaluaBtn.addEventListener("click", function (e) {
            desBtn.classList.remove("active");
            evaluaBtn.classList.add("active");
            desBox.style.display = "none";
            evalueBox.style.display = "block";
        });

        desBtn.addEventListener("click", function (e) {
            desBtn.classList.add("active");
            evaluaBtn.classList.remove("active");
            desBox.style.display = "block";
            evalueBox.style.display = "none";
        });




    </script>
</html>
