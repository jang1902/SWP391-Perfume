<%-- 
    Document   : cart
    Created on : Jan 31, 2023, 4:11:44 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/css/header_footer.css">
        <!-- <link rel="stylesheet" href="../assets/css/profile_info.css"> -->
        <link rel="stylesheet" href="./assets/css/cart.css">
        <script type="text/javascript" language="javascript" src="./main.js"></script>
        <link rel="stylesheet" href="./assets/font/fontawesome-free-6.1.1/css/all.min.css">
        <link rel="stylesheet" href="./assets/css/address.css">
        <link rel="icon" href="./assets/img/small_logo1.png">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        
        <script type="text/javascript" src="js/address.js"></script>
        <title>BOT STORE1</title>
    </head>
    <body>
        <!-- header -->
        <div id="header">
            <!-- header top -->
            <div class="header_top">
                <div class="header_top-intro">
                    <div class="header_top-intro-support">
                        <div class="sp-child hotline">
                            <i class="fa-solid fa-phone icon-sup"></i>
                            <span>+84 969420123</span>
                        </div>
                        <div class="sp-child email">
                            <i class="fa-solid fa-at icon-sup"></i>
                            <span>botstore.vn@gmail.com</span>
                        </div>
                        <div class="sp-child question">
                            <i class="fa-solid fa-headset icon-sup"></i>
                            <span>Hỗ trợ trực tuyến 24/7</span>
                        </div>
                    </div>
                    <div class="header_top-intro-language">
                        Language
                        <i class="fa-solid fa-chevron-down icon_arrowdown"></i>
                        <ul class="language-child">
                            <li class="language_item">
                                <img src="./assets/img/flagVN.jpg" class="language-item_child flag">
                                <span class="language-item_child ">VietNam</span>
                            </li>
                            <li class="language_item">
                                <img src="./assets/img/la-co-vuong-quoc-anh.jpg" class="language-item_child flag">
                                <span class="language-item_child ">English</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- end header top -->
            <!-- header mid -->
            <div class="header_mid">
                <!-- header mid top -->
                <div class="mid-top">
                    <div class="logo">
                        <a href="home">
                            <img src="./assets/img/Logo.png" alt="Logo" id="img_logo">
                        </a>
                    </div>
                    <div class="search">
                        <input type="text" placeholder="Tìm Kiếm..." class="input_search">
                        <div class="search-item">
                            <i class="fa-solid fa-magnifying-glass icon-search"></i>
                        </div>
                    </div>
                    <div class="login-cart">
                        <c:if test="${sessionScope.userNow.role_id==null}">

                            <a href="login" class="login_cart-item-link">
                                <div class="login-cart_item">
                                    <i class="fa-solid fa-key"></i>
                                </div>
                            </a>      

                        </c:if>
                        <c:if test="${sessionScope.userNow.role_id!=null}">
                            <a href="#" class="login_cart-item-link" >
                                <div class="login-cart_item">
                                    <i class="fa-solid fa-user"></i>
                                </div>
                            </a>    

                        </c:if>

                        <a href="cart.html" class="login_cart-item-link">
                            <div class="login-cart_item">
                                <i class="fa-solid fa-bag-shopping"></i>
                            </div>
                        </a>
                        <c:if test="${sessionScope.userNow.role_id!=null}">
                            <a href="logout" class="login_cart-item-link">
                                <div class="login-cart_item">
                                    <i class="fa-solid fa-right-from-bracket"></i>
                                </div>
                            </a>    

                        </c:if>
                    </div>
                </div>
                <!-- end header mid top -->
                <!-- header mid bot -->
                <div class="mid-bot">
                    <!-- menu left -->
                    <button class="menu_left">
                        <i class="fa-solid fa-bars icon_list"></i>
                        Danh mục sản phẩm
                        <div class="menu_left-child">
                            <ul>
                                <li class="menu_left-item">
                                    Mô hình xe hơi
                                </li>
                                <li class="menu_left-item">
                                    Mô hình Lego
                                </li>
                                <li class="menu_left-item">
                                    <div class="menu_left-item-title">
                                        <div class="menu_left-item-title-child">Mô hình phim</div>
                                        <i class="fa-solid fa-angle-right icon_arrow-menulv2"></i> 
                                    </div>
                                    <div class="menu_left-item-lv2">
                                        <ul>
                                            <li class="menu_left-item-child">Marvel</li>
                                            <li class="menu_left-item-child">DC</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="menu_left-item">
                                    Mô hình Transformer
                                </li>
                                <li class="menu_left-item">
                                    <div class="menu_left-item-title">
                                        <div class="menu_left-item-title-child">Mô hình anime</div>
                                        <i class="fa-solid fa-angle-right icon_arrow-menulv2"></i> 
                                    </div>
                                    <div class="menu_left-item-lv2">
                                        <ul>
                                            <li class="menu_left-item-child">Naruto</li>
                                            <li class="menu_left-item-child">One Piece</li>
                                            <li class="menu_left-item-child">Dragon Ball</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="menu_left-item">
                                    Mô hình Figger
                                </li>
                                <li class="menu_left-item">
                                    <div class="menu_left-item-title">
                                        <div class="menu_left-item-title-child">Mô hình khác</div>
                                        <i class="fa-solid fa-angle-right icon_arrow-menulv2"></i> 
                                    </div>
                                    <div class="menu_left-item-lv2">
                                        <ul>
                                            <li class="menu_left-item-child">Mô hình cây mini</li>
                                            <li class="menu_left-item-child">Mô hình trang trí</li>
                                            <li class="menu_left-item-child">Mô hình PC</li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </button>
                    <!-- end menu left -->
                    <!-- menu right -->
                    <ul class="menu_right">
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="./index.html">Trang chủ</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="#">Hàng mới</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="#">Thương hiệu</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="./src/oder.html">Đơn hàng</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="./src/profile_info.html">Trang cá nhân</a>
                        </li>
                    </ul>
                    <!-- end menu right -->
                </div>
                <!-- end header mid bot -->
            </div>
            <!-- end mid -->
        </div>
        <!-- end header -->
        <!-- body -->
        <div id="body">
                            

            <div class="body_container">
                <form action="checkout" method="post">
                <div class="body_left" >
                    
                        <div class="body_left-item">
                            <div class="body_left-item-title">
                                <div class="body_left-item-title-st">1</div>
                                <span>Địa chỉ nhận hàng</span>
                            </div>

                            <div class="body_left-item-address">
                                <div class="item-address-font">${sessionScope.userNow.getFirstname()} ${sessionScope.userNow.getLastname()} | ${sessionScope.userNow.getPhone_number()} </div>
                                <div class="item-address-font2">${ad.detail}, ${ad.ward}, ${ad.district}, ${ad.city}</div>
                                <c:if test="${ad.is_default==1}"><div class="is_default_style">Mặc định</div></c:if>
                                    <div class="change_address_style"><a class="login-window button" href="#login-box">Thay đổi</a></div>
                             </div>
                            </div>
                            </div>


                            <div class="body_left-item">
                                <div class="body_left-item-title">
                                    <div class="body_left-item-title">
                                        <div class="body_left-item-title-st">2</div>
                                        <span>Sản Phẩm</span>
                                    </div>
                                </div>

                                <span class="info_order" ><div style="margin-top: 15px">Đơn đặt hàng của bạn</div></span>
                                <div class="body_right-item-buy-products">
                                    <table border="1px">
                                      
                                            <tr class="amount_products">
                                                <th style="width: 600px">Sản phẩm</th>
                                                <th style="width: 200px">Đơn Giá</th>
                                                <th>Số Lượng</th>
                                                <th>Thành Tiền</th>
                                            </tr>
                                       
                                    <c:forEach items="${listItem}" var="c">
                                        <tr class="amount_products">
                                            <td ><img src="${c.product.thumbnail}" style="width: 40px;height: 40px"/>${c.product.title}${c.size.name}</td>
                                            <td >₫<fmt:formatNumber type = "currency" pattern="###,###,###" value="${c.sizeproduct.price_out}"></fmt:formatNumber></td>
                                            <td >${c.quantity}</td>
                                            <td >₫<fmt:formatNumber type = "currency" pattern="###,###,###" value="${c.sizeproduct.price_out*c.quantity}"></fmt:formatNumber></td>
                                        </tr>
                                    </c:forEach>
                                    <tr class="amount_products">
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <c:if test="${totalQuan!=0}"><th>Tổng tiền(${totalQuan} sản phẩm):  ₫<fmt:formatNumber type = "currency" pattern="###,###,###" value="${cart.getTotalMoney()}"></fmt:formatNumber></th></c:if> 
                                        </tr>
                                    </table>


                                </div>
                            </div>

                            <!-- Hidden Dialog Box-->
                            <div class="login" id="login-box">
                                <a class="close" href="#"><img class="img-close" title="Close Window" alt="Close" src="close.png" /></a>
                                <p class="login_title"> Danh sách địa chỉ</p>
                                <hr/>

                                <a href="#" class="close"><img src="close.png" class="img-close" title="Close Window" alt="Close" /></a>
                                <div class="login_detail">
                                <c:forEach items="${listad}" var="l">
                                    <div class="radio_input">
                                        <input ${l.is_default==1?"checked":""} class="radioBtnInput" type="radio" name="radio_address" value="${l.id}" />${l.detail}<br/> ${l.ward}, ${l.district}, ${l.city}<br/><c:if test="${l.is_default==1}"><div class="is_default_style">Mặc định</div></c:if><br/><hr/>
                                        </div>
                                </c:forEach>
                            </div>
                        </div>
                            <div class="button_position">
                <button type="submit" class="place_order">Đặt Hàng</button> 
                </div>
                </form>
                </div>
                <!-- Hidden Dialog Box-->
                
            </div>
                                        
        </div>
    
    <div id="footer">
        <!-- container footer -->
        <div class="container_footer">
            <!-- footer logo / online shop -->
            <div class="footer_contact-logo">
                <a href="#">
                    <img class="footer_logo-resize" src="./assets/img/Logo.png" alt="logo">
                </a>
                <p class="footer_contact-logo-text">
                    Mua các mô hình, lego, trang trí tại của hàng Bot Store.
                </p>
                <div class="footer_contact-logo-onlineshop">
                    <a href="#" id="onlineshop">
                        <div class="online-shop">
                            <!-- logo shopee -->
                            <div class="shopee-tiki">
                                <img class="online-shop-logo" src="./assets/img/shopee.png" alt="shopee logo">
                            </div>
                            <!-- chữ bên cạnh logo -->
                            <div>
                                <span class="online-shop-text-top">Shopping on</span>
                                <p class="online-shop-text-bot">Shopee</p>
                            </div>
                        </div>
                    </a>
                    <a href="#" id="onlineshop">
                        <div class="online-shop">
                            <!-- logo tiki -->
                            <div class="shopee-tiki">
                                <img class="online-shop-logo" src="./assets/img/tiki.png" alt="tiki logo">
                            </div>
                            <!-- chữ bên cạnh logo -->
                            <div>
                                <span class="online-shop-text-top">Shopping on</span>
                                <p class="online-shop-text-bot">Tiki</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <!-- về chúng tôi -->
            <div class="footer_contact-about">
                <!-- title -->
                <div class="footer_contact-title">Về chúng tôi</div>
                <!-- about us link -->
                <div class="footer_contact-about-link">
                    <a class="about-link" href="#">Careers</a>
                    <a class="about-link" href="#">Của hàng của chúng tôi</a>
                    <a class="about-link" href="#">Chính sách giao hàng</a>
                    <a class="about-link" href="#">Điều khoản dịch vụ</a>
                    <a class="about-link" href="#">Chính sách quyền riêng tư</a>
                </div>
            </div>
            <!-- dịch vụ chăm sóc khách hàng -->
            <div class="footer_contact-customer">
                <!-- title -->
                <div class="footer_contact-title">Hỗ trợ khách hàng</div>
                <!-- customer care link -->
                <div class="footer_contact-about-link">
                    <a class="about-link" href="#">Trung tâm hỗ trợ</a>
                    <a class="about-link" href="#">Cách để mua hàng</a>
                    <a class="about-link" href="#">Truy cứu đơn hàng</a>
                    <a class="about-link" href="#">Hợp tác</a>
                    <a class="about-link" href="#">Hoàn trả và hoàn tiền</a>
                </div>
            </div>
            <!-- liên hệ -->
            <div class="footer_contact-contact">
                <!-- title -->
                <div class="footer_contact-title">Liên hệ chúng tôi</div>
                <!-- địa chỉ -->
                <p class="footer_contact-text">69 Thái Hà, Trung Liệt, Đống Đa, Hà Nội</p>
                <p class="footer_contact-text">Email: botstore.vn@gmail.com</p>
                <p class="footer_contact-text">Số điện thoại: +84 969420123</p>
                <div class="footer_contact-icon">
                    <a class="about-link" href="#">
                        <div class="footer_contact-icon-child">
                            <i class="fa-brands fa-facebook-f"></i>
                        </div>
                    </a>
                    <a class="about-link" href="#">
                        <div class="footer_contact-icon-child">
                            <i class="fa-brands fa-instagram"></i>
                        </div>
                    </a>
                    <a class="about-link" href="#">
                        <div class="footer_contact-icon-child">
                            <i class="fa-brands fa-twitter"></i>
                        </div>
                    </a>
                    <a class="about-link" href="#">
                        <div class="footer_contact-icon-child">
                            <i class="fa-brands fa-youtube"></i>
                        </div>
                    </a>
                    <a class="about-link" href="https://github.com/EmLongDauLung/WebDoChoi">
                        <div class="footer_contact-icon-child">
                            <i class="fa-brands fa-github"></i>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function Address_Choice() {
            var x = document.getElementById("btn_address").value;
            document.getElementById("input_address_id").value = x;
        }
    </script>
    <!-- end body -->
</body>
</html>
