
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
        <link rel="stylesheet" href="./css/Banner2.css"/>
        <link rel="stylesheet" href="./css/SearchPage.css"/>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>

            <div class="search">
                <div class="search_box">
                    <div class="search_header">
                        <p>Từ khóa tìm kiếm: short ni</p>
                    </div>
                    <div class="search_product">
                        <div class="banner2_pro-item">
                            <a href="">
                                <img src="./asset/images/product.jpg" alt="alt"/>
                                <p class="product_title">Quần jeans co dãn</p>
                                <p class="product_price">150.000</p><span>đ</span>
                                <div class="banner2_pro-item-icon">
                                    <a class="heart-icon" href=""><i class="fa-solid fa-heart"></i></a>
                                    <a class="cart-icon" href=""><i class="fa-solid fa-cart-plus"></i></a>
                                </div>
                            </a>
                        </div>
                        <div class="banner2_pro-item">
                            <a href="">
                                <img src="./asset/images/product.jpg" alt="alt"/>
                                <p class="product_title">Quần jeans co dãn</p>
                                <p class="product_price">150.000</p><span>đ</span>
                                <div class="banner2_pro-item-icon">
                                    <a class="heart-icon" href=""><i class="fa-solid fa-heart"></i></a>
                                    <a class="cart-icon" href=""><i class="fa-solid fa-cart-plus"></i></a>
                                </div>
                            </a>
                        </div>
                        <div class="banner2_pro-item">
                            <a href="">
                                <img src="./asset/images/product.jpg" alt="alt"/>
                                <p class="product_title">Quần jeans co dãn</p>
                                <p class="product_price">150.000</p><span>đ</span>
                                <div class="banner2_pro-item-icon">
                                    <a class="heart-icon" href=""><i class="fa-solid fa-heart"></i></a>
                                    <a class="cart-icon" href=""><i class="fa-solid fa-cart-plus"></i></a>
                                </div>
                            </a>
                        </div>
                        <div class="banner2_pro-item">
                            <a href="">
                                <img src="./asset/images/product.jpg" alt="alt"/>
                                <p class="product_title">Quần jeans co dãn</p>
                                <p class="product_price">150.000</p><span>đ</span>
                                <div class="banner2_pro-item-icon">
                                    <a class="heart-icon" href=""><i class="fa-solid fa-heart"></i></a>
                                    <a class="cart-icon" href=""><i class="fa-solid fa-cart-plus"></i></a>
                                </div>
                            </a>
                        </div>
                        <div class="banner2_pro-item">
                            <a href="">
                                <img src="./asset/images/product.jpg" alt="alt"/>
                                <p class="product_title">Quần jeans co dãn</p>
                                <p class="product_price">150.000</p><span>đ</span>
                                <div class="banner2_pro-item-icon">
                                    <a class="heart-icon" href=""><i class="fa-solid fa-heart"></i></a>
                                    <a class="cart-icon" href=""><i class="fa-solid fa-cart-plus"></i></a>
                                </div>
                            </a>
                        </div>
                        <div class="banner2_pro-item">
                            <a href="">
                                <img src="./asset/images/product.jpg" alt="alt"/>
                                <p class="product_title">Quần jeans co dãn</p>
                                <p class="product_price">150.000</p><span>đ</span>
                                <div class="banner2_pro-item-icon">
                                    <a class="heart-icon" href=""><i class="fa-solid fa-heart"></i></a>
                                    <a class="cart-icon" href=""><i class="fa-solid fa-cart-plus"></i></a>
                                </div>
                            </a>
                        </div>
                        <div class="banner2_pro-item">
                            <a href="">
                                <img src="./asset/images/product.jpg" alt="alt"/>
                                <p class="product_title">Quần jeans co dãn</p>
                                <p class="product_price">150.000</p><span>đ</span>
                                <div class="banner2_pro-item-icon">
                                    <a class="heart-icon" href=""><i class="fa-solid fa-heart"></i></a>
                                    <a class="cart-icon" href=""><i class="fa-solid fa-cart-plus"></i></a>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        <jsp:include page="Footer.jsp"></jsp:include>
        <jsp:include page="Cart.jsp"></jsp:include> 
    </body>
    <script>
        var cartBtn = document.querySelector(".header_cart");
        var cartBox = document.querySelector(".cart");
        cartBtn.addEventListener("click", function () {
            cartBox.style.display = "flex";
        });
    </script>
</html>
