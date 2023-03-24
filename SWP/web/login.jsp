<%-- 
    Document   : login
    Created on : Jan 31, 2023, 4:13:27 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/css/header_footer.css">
        <!-- <link rel="stylesheet" href="./assets/css/profile_info.css"> -->
        <link rel="stylesheet" href="./assets/css/login.css">
        <script type="text/javascript" language="javascript" src="./main.js"></script>
        <link rel="stylesheet" href="./assets/font/fontawesome-free-6.1.1/css/all.min.css">
        <link rel="icon" href="./assets/img/small_logo1.png">
        <title>BOONBO STORE</title>
    </head>
    <!-- body -->
    <body id="body">
        <div class="body_container">
            <div class="body_left">
                <a href="home.jsp" class="body_left-linkhome">
                    <img src="./assets/img/small_logo1.png" alt="">
                    <img src="./assets/img/Logo.png" alt="Ảnh Logo" class="body_left-imgLogo">
                </a>
            </div>
            <div class="body_right">
                <div> 
                    <form action="login" method="post">
                        <p style="color:red">${requestScope.mess}</p>
                        <p style="color:green">${requestScope.ms}</p>
                        <input type="text" placeholder="Email hoặc Số Điện Thoại" class="body_right-inputlogin" name="user">
                        <input type="password" placeholder="Mật Khẩu" class="body_right-inputlogin" name="pass">
                        <div class="body_right-login" id="login">
                            <button class="body_right-btnlogin" type="submit">Đăng Nhập</button> <br>
                            <a href="forgot" class="body_right-forgotpass">Forgotten Password ?</a>
                            
                            <div class="col s12 m6 offset-m3 center-align">
                                <a class="oauth-container btn darken-4 white black-text" href="https://accounts.google.com/o/oauth2/auth?scope=email&profile&redirect_uri=http://localhost:8080/SWP/login-google&response_type=code
                               &client_id=845236234675-gl7te8a81vmkokgdfjcf4s71g3jkll59.apps.googleusercontent.com&approval_prompt=force" style="text-transform:none">
                                    <div class="left">
                                        <img width="20px" style="margin-top:7px; margin-right:8px" alt="Google sign-in" 
                                             src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/512px-Google_%22G%22_Logo.svg.png" />
                                    </div>
                                    Login with Google
                                </a>
                            </div>
                        </div>
                    </form>  
                </div>
                <hr class="body_right-decoration">
                <div>
                        <a class="body_right-btncreateacc-login" id="btn_createaccount" href="register" >Tạo Tài Khoản</a>
                </div>
            </div>
        </div>
        <!-- Scr login google -->           
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>    
        <!-- end Scr login google -->
    </body>
    <!-- end body -->
</html>