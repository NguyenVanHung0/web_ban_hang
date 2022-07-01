
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HungPage</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
        <link rel="stylesheet" href="./css/Base.css"/>
        <link rel="stylesheet" href="./css/Login.css"/>
    </head>
    <body>
        <div class="login">
            <div class="login_form">
                <div class="form_left">
                    <p class="form_header">Sign In</p>
                    <form action="LoginController" method="post">
                        <div>
                            <label>USERNAME</label>
                            <input type="text" name="username" placeholder="Username"/> <br>
                        </div>
                        <div>
                            <label>PASSWORD</label>
                            <input type="password" name="password" placeholder="Password"/> <br>
                        </div>
                        <button type="submit">Sign in</button>
                        <div class="remember">
                            <div><input type="checkbox" name="remember" id="check"/> <lable for="check">Remember me</lable></div>
                            <a href="">Forgot Password</a>
                        </div>
                    </form>
                </div>
                <div class="form_right">
                    <p class="heading">Welcome to sign in</p>
                    <p class="question">Don't have an account?</p>
                    <a href="SignUp.jsp">Sign up</a>
                </div>
            </div>
        </div>
    </body>
</html>