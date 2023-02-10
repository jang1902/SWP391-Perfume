
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- <link rel="stylesheet" href="./assets/css/header_footer.css"> -->
        <link rel="stylesheet" href="./assets/css/main.css">
        <link rel="stylesheet" href="./assets/css/products.css">
        <link rel="stylesheet" href="./assets/css/allproducts.css">
        <script type="text/javascript" language="javascript" src="./main.js"></script>
        <link rel="stylesheet" href="./assets/font/fontawesome-free-6.1.1/css/all.min.css">
        <link rel="icon" href="assets/img/small_logo1.png">
        <title>BOT STORE</title>
    </head>
    <body >
        <!-- header -->
        <div id="header">
            <!-- header top -->
            <div class="header_top">
                <div class="header_top-intro">
                    <div class="header_top-intro-support">
                        <div class="sp-child hotline">
                            <i class="fa-solid fa-phone icon-sup"></i>
                            <span>+84 123456789</span>
                        </div>
                        <div class="sp-child email">
                            <i class="fa-solid fa-at icon-sup"></i>
                            <span>botstore@gmail.com</span>
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
                        <a href="./index.html">
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
                        <a href="./src/login.html" class="login_cart-item-link">
                            <div class="login-cart_item">
                                <i class="fa-solid fa-user"></i>
                            </div>
                        </a>
                        <a href="./src/cart.html" class="login_cart-item-link">
                            <div class="login-cart_item">
                                <i class="fa-solid fa-bag-shopping"></i>
                            </div>
                        </a>
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
                            <a class="link_decor_remover hover-link" href="#">Trang chủ</a>
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

        <c:set var="p" value="${requestScope.prod}" />
        <!--        <form action="pdetail" method="post" id="myform">
                    <input type="hidden" name="cid" value="${p.category_id}" readonly="readonly" />
                </form>-->

        <div id="body">
            <form action="pdetail" method="get">
                <input type="hidden" value="${p.category_id}" name="cid"/>
            </form>

            <div class="body_container">
                <a href="listproduct?cid=${p.category_id}"> 
                    <c:if test="${param.cid==1}" > <span class="info_products-right-brand"> The mood Collection </span> </c:if> 
                    <c:if test="${param.cid==2}" > <span class="info_products-right-brand"> Summer Collection </span></c:if> 
                    <c:if test="${param.cid==3}" > <span class="info_products-right-brand"> Morra x JVevermind 10ml </span></c:if> 
                    <c:if test="${param.cid==4}" > <span class="info_products-right-brand"> 1st Collection </span></c:if>
                    <c:if test="${param.cid==5}" > <span class="info_products-right-brand"> 2nd Collection </span></c:if>
                    <c:if test="${param.cid==6}" > <span class="info_products-right-brand"> 3rd Collection </span></c:if>
                    <c:if test="${param.cid==7}" > <span class="info_products-right-brand"> DECEMBER COMBACK </span></c:if>
                    <c:if test="${param.cid==8}" > <span class="info_products-right-brand"> Nến thơm Elements Collection </span></c:if>
                    <c:if test="${param.cid==9}" > <span class="info_products-right-brand"> Nến thơm 2nd Collection </span></c:if>
                    <c:if test="${param.cid==10}" > <span class="info_products-right-brand"> Sữa tắm hương nước hoa Lumin Collection </span></c:if>
                    <c:if test="${param.cid==11}" > <span class="info_products-right-brand"> Dưỡng thể </span></c:if>
                </a>
                    <div class="body_container-item view_infoproducts">
                        <div class="info_products-left">
                            <div class="info_products-left-top">
                                <img src="${p.thumbnail}" id="img_products_big">
                        </div>
                        <div class="info_products-left-bot">
                            <img src="./assets/img/Uchiha Madara (2).jpg" class="img_products-small" onclick="img_product1()">
                            <img src="./assets/img/Uchiha Madara (1).jpg" class="img_products-small" onclick="img_product2()">
                            <img src="./assets/img/Uchiha Madara (3).jpg" class="img_products-small" onclick="img_product3()">
                            <img src="./assets/img/Uchiha Madara (4).jpg" class="img_products-small" onclick="img_product4()">
                            <img src="./assets/img/Uchiha Madara (5).jpg" class="img_products-small" onclick="img_product5()">
                        </div>
                    </div>
                    <div class="info_products-right">
                        <div class="info_product-right-child">
                            <div class="info_products-right-item">
                                <span class="info_products-right-title">${p.title}</span>
                            </div>

                            <div class="info_products-right-item">
                                <span>Dung tích : </span>
                                <c:forEach items="${requestScope.size}" var="s">
                                    <a href="pdetail?title=${p.title}&gid=${p.gender_id}&sid=${s.size_id}&cid=${p.category_id}">
                                        <span class="info_products-right-brand">
                                            <c:if test="${s.size_id == 1}" > <span class="info_products-right-brand"> 10 </span> </c:if> 
                                            <c:if test="${s.size_id == 2}" > <span class="info_products-right-brand"> 50 </span></c:if> 
                                            <c:if test="${s.size_id == 3}" > <span class="info_products-right-brand"> 100 </span></c:if> 
                                            </span>
                                        </a> 
                                </c:forEach>
                            </div>
                            <div class="info_products-right-item">
                                <span>Giới tính phù hợp:</span>

                                <c:if test="${param.gid == 1}" > <span class="info_products-right-brand"> Nam </span> </c:if> 
                                <c:if test="${param.gid == 2}" > <span class="info_products-right-brand"> Nữ </span></c:if> 
                                <c:if test="${param.gid == 3}" > <span class="info_products-right-brand"> Unisex </span></c:if> 
                                </div>
                                <div class="info_products-right-item">
                                    <span class="info_products-right-price">${p.price_out }đ</span> <br>
                                <div class="quantity-area clearfix" style="margin-bottom: -25px" >
                                    <input type="button" value="-" onclick="minusQuantity()" class="qty-btn">
                                    <input type="text" id="quantity" name="quantity" value="1" min="1" class="quantity-selector">
                                    <input type="button" value="+" onclick="plusQuantity()" class="qty-btn">
                                </div>
                            </div>
                            <div class="info_producst-right-add info_products-right-item" style="margin-top: 70px">
                                <button type="button" id="add-to-cart" class="add-to-cartProduct button btn-addtocart addtocart-modal" name="add"><span>Thêm vào giỏ</span></button>
                            </div>
                        </div>
                        <hr class="decoration_top-right-products">
                        <div class="info_products-right-item view_productsdetails">
                            <span class="info_products-right-title">Mô tả</span>
                            <span>${p.description}</span>

                        </div>
                        <hr class="decoration_top-right-products">
                        <div class="info_products-right-item view_policy">
                            <span class="info_products-right-title">Chính sách hỗ trợ</span>
                            <span>
                                <i class="fa-solid fa-check icon_check-policy"></i>
                                Đổi trả miễn phí nếu có lỗi từ nhà sản xuất
                            </span>
                            <span>
                                <i class="fa-solid fa-check icon_check-policy"></i>
                                Kiểm tra hàng trước khi thanh toán
                            </span>
                            <span>
                                <i class="fa-solid fa-check icon_check-policy"></i>
                                Miễn phí vận chuyển
                            </span>
                        </div>
                    </div>
                </div>
                <div class="body_container-item products_cmt-detail">
                    <div class="products_tab">
                        <button class="products-item" id="products-item-cmt" onclick="op_comment()">
                            Nhận xét
                        </button>

                    </div>
                    <div class="products_contents">
                        <div class="products_cmt" id="product_contentcomment">
                            <div class="products_cmt-item">
                                <div class="products_cmt-top">
                                    <img src="./assets/img/frog (5).png" class="img_avatar-user">
                                    <div class="user_rated">
                                        <span class="user_rated-name">Bùi Hạ Long</span>
                                        <div>
                                            <span>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-solid fa-star icon_star"></i>
                                            </span>
                                            <span class="user_rated-cmttime">1 tuần trước</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="products_cmt-bot">
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi enim, voluptatum magni rem reprehenderit natus sit repellat amet aspernatur omnis culpa voluptate tempora. 
                                        Consequuntur distinctio, labore reprehenderit inventore assumenda aliquam?
                                    </p>
                                </div>
                            </div>
                            <div class="products_cmt-item">
                                <div class="products_cmt-top">
                                    <img src="./assets/img/frog (2).png" class="img_avatar-user">
                                    <div class="user_rated">
                                        <span class="user_rated-name">Đỗ Tú Linh</span>
                                        <div>
                                            <span>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-regular fa-star icon_star"></i>
                                                <i class="fa-regular fa-star icon_star"></i>
                                                <i class="fa-regular fa-star icon_star"></i>
                                                <i class="fa-regular fa-star icon_star"></i>
                                            </span>
                                            <span class="user_rated-cmttime">2 ngày trước</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="products_cmt-bot">
                                    <p>
                                        Mô hình chất lượng kém quá rate 1 sao.
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="body_container-item user_ratingproducts">
                    <div class="user_ratingproducts-title">
                        Đánh giá của bạn cho sản phẩm này
                    </div>
                    <div class="user_ratingproducts-content">
                        <div class="user_ratingproducts-star">
                            <span class="user_ratingproducts-star-title">Xếp hạng sản phẩm</span>
                            <span>
                                <i class="fa-regular fa-star icon_star"></i>
                                <i class="fa-regular fa-star icon_star"></i>
                                <i class="fa-regular fa-star icon_star"></i>
                                <i class="fa-regular fa-star icon_star"></i>
                                <i class="fa-regular fa-star icon_star"></i>
                            </span>
                        </div>
                        <div class="user_ratingproducts-cmt">
                            <span>Nhận xét của bạn</span> <br>
                            <textarea rows="4" cols="50" class="user_ratingproducts-cmt-child">
                            </textarea>
                        </div>
                        <button class="btn_submit">Gửi</button>
                    </div>
                </div>
                <div class="body_container-item products_same">
                    <div class="products_same-title">
                        Sản phẩm tương tự
                    </div>
                    <div class="products_same-child">

                        <c:forEach items="${requestScope.relativeproducts}" var="rp">
                            <div class="products">
                                <a href="pdetail?title=${rp.title}&gid=${rp.gender_id}&sid=1&cid=${rp.category_id}">
                                    <img src="${rp.thumbnail}" alt="" class="img_products">
                                </a>
                                <div class="describe_products">
                                    <div class="ratings_products">
                                        <span>${rp.title}</span>
                                        <span>
                                            <i class="fa-solid fa-star icon_star"></i>
                                            <i class="fa-solid fa-star icon_star"></i>
                                            <i class="fa-solid fa-star icon_star"></i>
                                            <i class="fa-solid fa-star icon_star"></i>
                                            <i class="fa-solid fa-star icon_star"></i>
                                        </span>
                                        <div>
                                            <span class="info_price">${rp.price_out} đ</span>

                                        </div>
                                    </div>
                                    <div class="add_like_products">
                                        <i class="fa-regular fa-heart icon_heart"></i>
                                        <button class="btn_deal-item"><i class="fa-solid fa-plus"></i></button>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <!-- end body -->

        <!-- footer -->
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
        <!-- end footer -->
    </body>

    <!--     <script type="text/javascript">
                importScripts('https://www.gstatic.com/recaptcha/releases/gEr-ODersURoIfof1hiDm7R5/recaptcha__en.js');
            </script>-->
</html>