<%-- 
    Document   : cart
    Created on : Jan 31, 2023, 4:11:44 PM
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
    <link rel="stylesheet" href="./assets/css/cart.css">
    <script type="text/javascript" language="javascript" src="../main.js"></script>
    <link rel="stylesheet" href="./assets/font/fontawesome-free-6.1.1/css/all.min.css">
    <link rel="icon" href="./assets/img/small_logo1.png">
    <title>BOT STORE</title>
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
                        <a class="link_decor_remover hover-link" href="../index.html">Trang chủ</a>
                    </li>
                    <li class="menu_right-item">
                        <a class="link_decor_remover hover-link" href="#">Hàng mới</a>
                    </li>
                    <li class="menu_right-item">
                        <a class="link_decor_remover hover-link" href="#">Thương hiệu</a>
                    </li>
                    <li class="menu_right-item">
                        <a class="link_decor_remover hover-link" href="../src/oder.html">Đơn hàng</a>
                    </li>
                    <li class="menu_right-item">
                        <a class="link_decor_remover hover-link" href="../src/profile_info.html">Trang cá nhân</a>
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
            <div class="body_left">
                <div class="body_left-item">
                    <div class="body_left-item-title">
                        <div class="body_left-item-title-st">1</div>
                        <span>Chi tiết giao hàng</span>
                    </div>
                    <div class="body_left-item-datetime">
                        <div class="body_left-item-datetime-child">
                            <span>Ngày giao hàng</span> <br>
                            <input type="text" class="input_delivery-datetime">
                        </div>
                        <div class="body_left-item-datetime-child">
                            <span>Thời gian giao hàng</span> <br>
                            <input type="text" class="input_delivery-datetime">
                        </div>
                    </div>
                    <div class="body_left-item-address">
                        Địa chỉ giao hàng
                        <div class="receiver_information">
                            <div class="receiver_information-child">123 Đống Đa Hà Nội</div>
                            <div class="receiver_information-child">456 Láng Hạ Hà Nội</div>
                        </div>
                    </div>
                </div>
                <div class="body_left-item">
                    <div class="body_left-item-title">
                        <div class="body_left-item-title">
                            <div class="body_left-item-title-st">2</div>
                            <span>Thông tin cá nhân</span>
                        </div>
                    </div>
                    <div class="body_left-item-phone">
                        Thông tin liên lạc
                        <div class="receiver_information">
                            <div class="receiver_information-child">012346789</div>
                            <div class="receiver_information-child">012346789</div>
                        </div>
                    </div>
                </div>
                <div class="body_left-item">
                    <div class="body_left-item-title">
                        <div class="body_left-item-title-st">3</div>
                        <span>Phương thức thanh toán</span>
                    </div>
                    <div class="receiver_information-pay">
                        Phương thức thanh toán đã lưu
                        <div class="receiver_information">
                            <div class="receiver_information-child">
                                <img src="./assets/img/MBBANK.jpg" class="img_pay">
                                <div class="info_pay">
                                    <span>**** **** **** 1235</span> <br>
                                    <span>Bui Ha Long</span>
                                </div>
                            </div>
                            <div class="receiver_information-child">
                                <img src="./assets/img/Mastercard_2019_logo.svg.png" class="img_pay">
                                <div class="info_pay">
                                    <span>**** **** **** 1235</span> <br>
                                    <span>Bui Ha Long</span>
                                </div>
                            </div>
                            <div class="receiver_information-child">
                                <img src="./assets/img/BIDV.jpg" class="img_pay">
                                <div class="info_pay">
                                    <span>**** **** **** 1235</span> <br>
                                    <span>Bui Ha Long</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="place_order">Đặt Hàng</button>
                </div>
            </div>
            <div class="body_right">
                <div class="body_right-item">
                    <span class="info_order">Đơn đặt hàng của bạn</span>
                    <div class="body_right-item-buy-products">
                        <c:forEach items="${listItem}" var="c">
                        <div class="body_right-item-products">
                            <span>
                                <span class="amount_products">${c.quantity}x</span>  ${c.product.title}</span>
                                <span>${c.size.name}</span>
                            <span>  ${c.sizeproduct.price_out}</span>
                            
                        </div>
                    </div>
                </div>
                <hr class="body_right-decoration">
                <div class="body_right-item">
                    <div class="body_right-item-products">
                        <span>Tổng tiền tạm thời</span>
                        <b>${cart.getTotalMoney()}</b>
                    </div>
                    <div class="body_right-item-products">
                        <span>Thuế</span>
                        <b>1,0 $</b>
                    </div>
                    <div class="body_right-item-products">
                        <span>Giảm giá</span>
                        <b> - </b>
                    </div>
                </div>
                <hr class="body_right-decoration">
                <div class="body_right-item">
                    <div class="body_right-item-products">
                        <span>Tổng tiền</span>
                        <b>310 $</b>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end body -->
</body>
</html>
