<%-- 
    Document   : index.jsp
    Created on : Jun 28, 2022, 2:31:54 PM
    Author     : NguyenVanHung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HungPage</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
        <link rel="stylesheet" href="./css/Base.css"/>
        <link rel="stylesheet" href="./css/Header.css"/>
        <link rel="stylesheet" href="./css/Banner1.css"/>
        <link rel="stylesheet" href="./css/Banner2.css"/>
        <link rel="stylesheet" href="./css/Banner3.css"/>
        <link rel="stylesheet" href="./css/News.css"/>
        <link rel="stylesheet"  type="text/css" href="./css/Footer.css"/>
    </head>
    <body>
        <div class="main">
            <jsp:include page="Header.jsp"></jsp:include>

            <jsp:include page="Content.jsp"></jsp:include>

            <jsp:include page="Footer.jsp"></jsp:include>

            </div>
    </body>
    
</html>
