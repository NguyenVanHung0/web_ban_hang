

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HungPage</title>
        <link rel="stylesheet" href="./css/Base.css"/>
        <link rel="stylesheet" href="./css/Login.css"/>
    </head>
    <body>
        <div class="signup">
            <div class="login_form">
                <div class="form_left">
                    <p class="form_header">Sign Up</p>
                    <form>
                        <div>
                            <label>SDT</label>
                            <input type="text" name="sdt" placeholder="Sdt"/> <br>
                        </div>
                        <div>
                            <label>USERNAME</label>
                            <input type="text" name="username" placeholder="Username"/> <br>
                        </div>
                        <div>
                            <label>PASSWORD</label>
                            <input type="password" name="password" placeholder="Password"/> <br>
                        </div>
                        <div>
                            <label>REPASSWORD</label>
                            <input type="password" name="repassword" placeholder="Repassword"/> <br>
                        </div>
                        <button type="submit">Sign up</button>
                    </form>
                </div>
                <div class="form_right">
                    <p class="heading">Welcome to sign up</p>
                    <p class="question">I have an account</p>
                    <button>Sing in</button>
                </div>
            </div>
        </div>
    </body>
</html>
