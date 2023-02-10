<%-- 
    Document   : register
    Created on : Feb 1, 2023, 12:03:54 AM
    Author     : Phuong-Linh
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
        <title>BOT STORE</title>

        <script>

            function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
                console.log('statusChangeCallback');
                console.log(response);                   // The current login status of the person.
                if (response.status === 'connected') {   // Logged into your webpage and Facebook.
                    testAPI();
                } else {                                 // Not logged into your webpage or we are unable to tell.
                    document.getElementById('status').innerHTML = 'Please log ' +
                            'into this webpage.';
                }
            }


            function checkLoginState() {               // Called when a person is finished with the Login Button.
                FB.getLoginStatus(function (response) {   // See the onlogin handler
                    statusChangeCallback(response);
                });
            }


            window.fbAsyncInit = function () {
                FB.init({
                    appId: '762863291838731',
                    cookie: true, // Enable cookies to allow the server to access the session.
                    xfbml: true, // Parse social plugins on this webpage.
                    version: 'v2.9'           // Use this Graph API version for this call.
                });


                FB.getLoginStatus(function (response) {   // Called after the JS SDK has been initialized.
                    statusChangeCallback(response);        // Returns the login status.
                });
            };

            function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
                console.log('Welcome!  Fetching your information.... ');
                FB.api('/me', function (response) {
                    console.log('Successful login for: ' + response.name);
                    document.getElementById('status').innerHTML =
                            'Thanks for logging in, ' + response.name + '!';
                });
            }

        </script>

    </head>
    <!-- body -->
    <body id="body">
        <div class="body_container">
            <div class="body_left">
                <a href="./index.html" class="body_left-linkhome">
                    <img src="./assets/img/small_logo1.png" alt="">
                    <img src="./assets/img/Logo.png" alt="Ảnh Logo" class="body_left-imgLogo">
                </a>
            </div>

            <div class="body_right">
                <div>  
                    <form action="login" method="post">
                        <h3 style="color:red">${requestScope.mess}</h3>
                        <input type="text" placeholder="Email hoặc Số Điện Thoại" class="body_right-inputlogin" name="username">
                        <input type="password" placeholder="Mật Khẩu" class="body_right-inputlogin" name="password">
                        <div class="body_right-login" id="login">
                            <button class="body_right-btnlogin" type="submit">Đăng Nhập</button> <br>
                            <a href="#" class="body_right-forgotpass"">Quên mật khẩu?</a>
                        </div>   
                        <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
                        </fb:login-button>
                    </form>
                        
                </div>
                <hr class="body_right-decoration">
                <div>
                    <button class="body_right-btncreateacc-login" id="btn_login" onclick="op_login()">Quay lại</button>
                    <button class="body_right-btncreateacc-login" id="btn_createaccount" onclick="op_register()">Tạo Tài Khoản</button>
                </div>
            </div>


        </div>
    </body>
    <!-- end body -->