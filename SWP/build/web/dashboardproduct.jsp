<%-- 
    Document   : dashboard
    Created on : Feb 24, 2023, 5:24:11 PM
    Author     : hp
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">

    <!-- Mirrored from templates.g5plus.net/glowing/dashboard/dashboard-product-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 24 Feb 2023 07:49:51 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Glowing Shop Html Template">
        <meta name="author" content="">
        <meta name="generator" content="Jekyll">
        <title>Bảng danh sách sản phẩm - Boon Bo</title>

        <script src="./cdn-cgi/apps/head/2oc_RD5SS6wgN5SiQnSEnWVNHg8.js"></script><link href="https://fonts.googleapis.com/css2?family=Urbanist:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./vendors/fontawesome-pro-5/css/all.css">
        <link rel="stylesheet" href="./vendors/bootstrap-select/css/bootstrap-select.min.css">
        <link rel="stylesheet" href="./vendors/slick/slick.min.css">
        <link rel="stylesheet" href="./vendors/magnific-popup/magnific-popup.min.css">
        <link rel="stylesheet" href="./vendors/jquery-ui/jquery-ui.min.css">
        <link rel="stylesheet" href="./vendors/animate.css">
        <link rel="stylesheet" href="./vendors/mapbox-gl/mapbox-gl.min.css">
        <link rel="stylesheet" href="./vendors/fonts/font-phosphor/css/phosphor.min.css">
        <link rel="stylesheet" href="./vendors/fonts/tuesday-night/stylesheet.min.css">
        <link rel="stylesheet" href="./vendors/fonts/butler/stylesheet.min.css">
        <link rel="stylesheet" href="./vendors/fonts/a-antara-distance/stylesheet.min.css">

        <link rel="stylesheet" href="./css/themes.css">

        <link rel="icon" href="images/logo-no-background.png">

        <meta name="twitter:card" content="summary">
        <meta name="twitter:site" content="@">
        <meta name="twitter:creator" content="@">
        <meta name="twitter:title" content="Dashboard product list">
        <meta name="twitter:description" content="Glowing Shop Html Template">
        <meta name="twitter:image" content="./img/logo_01.png">

        <meta property="og:url" content="dashboard-product-list.html">
        <meta property="og:title" content="Dashboard product list">
        <meta property="og:description" content="Glowing Shop Html Template">
        <meta property="og:type" content="website">
        <meta property="og:image" content="./img/logo_01.png">
        <meta property="og:image:type" content="image/png">
        <meta property="og:image:width" content="1200">
        <meta property="og:image:height" content="630">
        
        <script type="text/javascript">
            function doDelete(pid,sid) {
                if (confirm("Are you sure to delete product with id=" + pid + " and size_id=" + sid)) {
                    window.location = "deleteproduct?pid=" + pid + "&sid=" + sid;
                }
            }
        </script>
        
        
    </head>
    <body>
        <div class="wrapper dashboard-wrapper">
            <div class="d-flex flex-wrap flex-xl-nowrap">
                <div class="db-sidebar bg-white">
                    <nav class="navbar navbar-expand-xl navbar-light d-block px-0 header-sticky dashboard-nav py-0">
                        <div class="sticky-area border-right">
                            <div class="d-flex px-3 px-xl-6 w-100 border-bottom py-2">
                                <a class="navbar-brand" href="home">
                                    <img style="width: 70%" src="images/logo-no-background.png" alt="">
                                </a>
                                <div class="ml-auto d-flex align-items-center ">
                                    <div class="d-flex align-items-center d-xl-none">
                                        <div class="dropdown px-3">
                                            <a href="#" class="dropdown-toggle d-flex align-items-center text-heading" data-toggle="dropdown">
                                                <div class="w-48px">
                                                    <img src="./img/avatar-2.png" alt="Ronald Hunter" class="rounded-circle">
                                                </div>
                                                <span class="fs-13 font-weight-500 d-none d-sm-inline ml-2">
                                                    Ronald Hunter
                                                </span>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">My Profile</a>
                                                <a class="dropdown-item" href="#">My Profile</a>
                                                <a class="dropdown-item" href="#">Logout</a>
                                            </div>
                                        </div>
                                        <div class="dropdown no-caret py-4 px-3 d-flex align-items-center notice mr-3">
                                            <a href="#" class="dropdown-toggle text-heading fs-20 font-weight-500 lh-1" data-toggle="dropdown">
                                                <i class="far fa-bell"></i>
                                                <span class="badge badge-primary badge-circle badge-absolute font-weight-bold fs-13">1</span>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">Action</a>
                                                <a class="dropdown-item" href="#">Another action</a>
                                                <a class="dropdown-item" href="#">Something else here</a>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="navbar-toggler border-0 px-0" type="button" data-toggle="collapse" data-target="#primaryMenuSidebar" aria-controls="primaryMenuSidebar" aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="navbar-toggler-icon"></span>
                                    </button>
                                </div>
                            </div>
                            <div class="collapse navbar-collapse bg-white" id="primaryMenuSidebar">
                                <form class="d-block d-xl-none pt-5 px-3">
                                    <div class="input-group position-relative bg-gray">
                                        <input type="text" class="form-control border-0 bg-transparent pl-4 shadow-none" placeholder="Search Item">
                                        <div class="input-group-append fs-14 px-3 border-left border-2x ">
                                            <button class="bg-transparent border-0 outline-none">
                                                <i class="fal fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                <ul class="list-group list-group-flush list-group-no-border w-100 p-3">
                                    <li class="list-group-item px-0 py-0 sidebar-item mb-1">
                                        <a href="dashboard" class="text-heading lh-1 sidebar-link py-2 px-3 px-xl-4 d-block">
                                            <span class="sidebar-item-icon d-inline-block mr-3 text-muted fs-18">
                                                <i class="fas fa-home-lg-alt"></i>
                                            </span>
                                            <span class="sidebar-item-text">Dashboard</span>
                                        </a>
                                    </li>
                                    <li class="list-group-item px-0 py-0 sidebar-item mb-1 has-children">
                                        <a href="#product" class="text-heading lh-1 sidebar-link d-flex align-items-center py-2 px-3 px-xl-4" data-toggle="collapse" aria-haspopup="true" aria-expanded="false">
                                            <span class="sidebar-item-icon d-inline-block mr-3 text-muted fs-18">
                                                <i class="fas fa-shopping-bag"></i>
                                            </span>
                                            <span class="sidebar-item-text">Products</span>
                                            <span class="d-inline-block ml-auto"><i class="fal fa-angle-down"></i></span>
                                        </a>
                                        <div class="collapse menu-collapse" id="product">
                                            <ul class="sub-menu list-unstyled">
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="dashboardp">Product List</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="">Category List</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="">Gallery List</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="">Size List</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="">Discount List</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="list-group-item px-0 py-0 sidebar-item mb-1 has-children">
                                        <a href="#order" class="text-heading lh-1 sidebar-link d-flex align-items-center py-2 px-3 px-xl-4" data-toggle="collapse" aria-haspopup="true" aria-expanded="false">
                                            <span class="sidebar-item-icon d-inline-block mr-3 text-muted fs-18">
                                                <i class="fas fa-shopping-cart"></i>
                                            </span>
                                            <span class="sidebar-item-text">Order</span>
                                            <span class="d-inline-block ml-auto"><i class="fal fa-angle-down"></i></span>
                                        </a>
                                        <div class="collapse menu-collapse" id="order">
                                            <ul class="sub-menu list-unstyled">
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="order-list.html">Order List 1</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="order-list-2.html">Order List 2</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="order-detail.html">Order detail</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="list-group-item px-0 py-0 sidebar-item mb-1 has-children">
                                        <a href="#sellers" class="text-heading lh-1 sidebar-link d-flex align-items-center py-2 px-3 px-xl-4" data-toggle="collapse" aria-haspopup="true" aria-expanded="false">
                                            <span class="sidebar-item-icon d-inline-block mr-3 text-muted fs-18">
                                                <i class="fas fa-users"></i>
                                            </span>
                                            <span class="sidebar-item-text">Sellers</span>
                                            <span class="d-inline-block ml-auto"><i class="fal fa-angle-down"></i></span>
                                        </a>
                                        <div class="collapse menu-collapse" id="sellers">
                                            <ul class="sub-menu list-unstyled">
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="sellers-cards.html">Sellers Cards</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="sellers-list.html">Sellers List</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="sellers-profile.html">Sellers Profile</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="list-group-item px-0 py-0 sidebar-item mb-1 has-children">
                                        <a href="#add_product" class="text-heading lh-1 sidebar-link d-flex align-items-center py-2 px-3 px-xl-4" data-toggle="collapse" aria-haspopup="true" aria-expanded="false">
                                            <span class="sidebar-item-icon d-inline-block mr-3 text-muted fs-18">
                                                <i class="fas fa-plus-square"></i>
                                            </span>
                                            <span class="sidebar-item-text">Add Product</span>
                                            <span class="d-inline-block ml-auto"><i class="fal fa-angle-down"></i></span>
                                        </a>
                                        <div class="collapse menu-collapse" id="add_product">
                                            <ul class="sub-menu list-unstyled">
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="add-product-1.html">Add Product 1</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="add-product-2.html">Add Product 2</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="add-product-3.html">Add Product 3</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="add-product-4.html">Add Product 4</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="list-group-item px-0 py-0 sidebar-item mb-1 has-children">
                                        <a href="#transaction" class="text-heading lh-1 sidebar-link d-flex align-items-center py-2 px-3 px-xl-4" data-toggle="collapse" aria-haspopup="true" aria-expanded="false">
                                            <span class="sidebar-item-icon d-inline-block mr-3 text-muted fs-18">
                                                <i class="fas fa-usd-circle"></i>
                                            </span>
                                            <span class="sidebar-item-text">Transactions</span>
                                            <span class="d-inline-block ml-auto"><i class="fal fa-angle-down"></i></span>
                                        </a>
                                        <div class="collapse menu-collapse" id="transaction">
                                            <ul class="sub-menu list-unstyled">
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="transactions-1.html">Transactions 1</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="transactions-2.html">Transactions 2</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="list-group-item px-0 py-0 sidebar-item mb-1 has-children">
                                        <a href="#account" class="text-heading lh-1 sidebar-link d-flex align-items-center py-2 px-3 px-xl-4" data-toggle="collapse" aria-haspopup="true" aria-expanded="false">
                                            <span class="sidebar-item-icon d-inline-block mr-3 text-muted fs-18">
                                                <i class="fas fa-user"></i>
                                            </span>
                                            <span class="sidebar-item-text">Account</span>
                                            <span class="d-inline-block ml-auto"><i class="fal fa-angle-down"></i></span>
                                        </a>
                                        <div class="collapse menu-collapse" id="account">
                                            <ul class="sub-menu list-unstyled">
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="./user-login.html">User login</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="./user-registration.html">User registration</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="list-group-item px-0 py-0 sidebar-item mb-1">
                                        <a href="review.html" class="text-heading lh-1 sidebar-link py-2 px-3 px-xl-4 d-block">
                                            <span class="sidebar-item-icon d-inline-block mr-3 text-muted fs-18">
                                                <i class="fas fa-comment-alt-lines"></i>
                                            </span>
                                            <span class="sidebar-item-text">Reivews</span>
                                        </a>
                                    </li>
                                    <li class="list-group-item px-0 py-0 sidebar-item mb-1">
                                        <a href="brand.html" class="text-heading lh-1 sidebar-link py-2 px-3 px-xl-4 d-block">
                                            <span class="sidebar-item-icon d-inline-block mr-3 text-muted fs-18">
                                                <i class="fas fa-certificate"></i>
                                            </span>
                                            <span class="sidebar-item-text">Brand</span>
                                        </a>
                                    </li>
                                    <li class="list-group-item separate p-0 my-3 mx-n3"></li>
                                    <li class="list-group-item px-0 py-0 sidebar-item mb-1 has-children">
                                        <a href="#setting" class="text-heading lh-1 sidebar-link d-flex align-items-center py-2 px-3 px-xl-4" data-toggle="collapse" aria-haspopup="true" aria-expanded="false">
                                            <span class="sidebar-item-icon d-inline-block mr-3 text-muted fs-18">
                                                <i class="fas fa-cog"></i>
                                            </span>
                                            <span class="sidebar-item-text">Setting</span>
                                            <span class="d-inline-block ml-auto"><i class="fal fa-angle-down"></i></span>
                                        </a>
                                        <div class="collapse menu-collapse" id="setting">
                                            <ul class="sub-menu list-unstyled">
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="setting-sample-1.html">Setting sample 1</a>
                                                </li>
                                                <li class="sidebar-item">
                                                    <a class="sidebar-link lh-1" href="setting-sample-2.html">Setting sample 2</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="list-group-item px-0 py-0 sidebar-item mb-1">
                                        <a href="starter-page.html" class="text-heading lh-1 sidebar-link py-2 px-3 px-xl-4 d-block">
                                            <span class="sidebar-item-icon d-inline-block mr-3 text-muted fs-18">
                                                <i class="fas fa-tag"></i>
                                            </span>
                                            <span class="sidebar-item-text">Starter page</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
                <div class="page-content">
                    <header class="main-header bg-white position-relative d-none d-xl-block">
                        <div class="container-fluid">
                            <nav class="navbar navbar-light py-0 row no-gutters px-3 px-lg-0">
                                <div class="col-md-4 px-0 px-md-6 order-1 order-md-0 form-control-01">
                                    <form>
                                        <div class="input-group position-relative bg-input rounded">
                                            <input type="text" class="form-control border-0 bg-transparent pl-4 shadow-none" placeholder="Search Item">
                                            <div class="input-group-append fs-14 px-3 border-left border-2x bg-hover-primary ">
                                                <button class="bg-transparent border-0 outline-none">
                                                    <i class="fal fa-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-6 d-flex flex-wrap justify-content-md-end align-items-center order-0 order-md-1">
                                    <div class="dropdown no-caret px-2 py-2">
                                        <a href="#" class="dropdown-toggle fs-20 font-weight-500 lh-1 animation-shake position-relative" data-toggle="dropdown">
                                            <i class="far fa-bell"></i>
                                            <span class="badge badge-secondary rounded-circle">4</span>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </div>
                                    <a href="#" class="request-full-screen d-block px-2 fs-20" title="Full screen"><i class="far fa-rss-square"></i></a>
                                    <div class="dropdown px-2 py-2 dropdown-language">
                                        <a class="dropdown-toggle fs-20" data-toggle="dropdown"><i class="far fa-globe-americas"></i></a>
                                        <div class="dropdown-menu dropdown-menu-end">
                                            <a class="dropdown-item text-brand" href="#"><img src="./img/flag-us.png" alt="English">English</a>
                                            <a class="dropdown-item" href="#"><img src="./img/flag-fr.png" alt="Français">Français</a>
                                            <a class="dropdown-item" href="#"><img src="./img/flag-jp.png" alt="Japan">日本語</a>
                                            <a class="dropdown-item" href="#"><img src="./img/flag-cn.png" alt="China">中国人</a>
                                        </div>
                                    </div>
                                    <div class="dropdown pl-2 py-2">
                                        <a href="#" class="dropdown-toggle text-heading pr-3 pr-sm-6 d-flex align-items-center justify-content-end" data-toggle="dropdown">
                                            <div class="w-40px">
                                                <img src="./img/avatar-2.png" alt="Ronald Hunter" class="rounded-circle">
                                            </div>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right w-100">
                                            <a class="dropdown-item" href="#">My Profile</a>
                                            <a class="dropdown-item" href="#">Logout</a>
                                        </div>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </header>
                    <main id="content" class="bg-gray-01 d-flex flex-column main-content">
                        <div class="dashboard-page-content">
                            <div class="row mb-6 align-items-center">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <h2 class="fs-24 mb-0">Bảng danh sách sản phẩm</h2>
                                    <p class="mb-0"></p>
                                </div>
                                <div class="col-sm-6 d-flex flex-wrap justify-content-sm-end">
                                    
                                    <a href="addproduct" class="btn btn-primary">Create new
                                    </a>
                                </div>
                            </div>
                            <div class="card mb-4 rounded-xl p-4">
                                <div class="card-body p-0">
                                    <div class="table-responsive">
                                        <div class="table-responsive">
                                            <table class="table align-middle table-nowrap mb-0">
                                                <tbody>
                                                    <tr>
                                                        <td class="align-middle border-top-0 pb-4 pt-0">
                                                            <div class="form-check">
                                                                <input class="form-check-input ml-xxl-n2" type="checkbox" id="transactionCheck">
                                                                <label class="form-check-label" for="transactionCheck"></label>
                                                            </div>
                                                        </td>
                                                        <td class="border-top-0 pb-4 pt-0"><select class="form-control bg-input border-0">
                                                                <option selected="" data-select2-id="3">All Categories</option>
                                                                <c:forEach items="${allc}" var="c">
                                                                <option>${c.name}</option>
                                                                </c:forEach>
                                                            </select></td>
                                                        <td class="border-top-0 pb-4 pt-0"></td>
                                                        <td class="border-top-0 pb-4 pt-0"></td>
                                                        <td class="border-top-0 pb-4 pt-0"><input type="date" class="form-control bg-input border-0"></td>
                                                        <td class="border-top-0 pb-4 pt-0">
                                                            <select class="form-control bg-input border-0">
                                                                <option>All Gender</option>
                                                                <c:forEach items="${allg}" var="g">
                                                                <option>${g.name}</option>
                                                                </c:forEach>
                                                            </select></td>
                                                    </tr>
                                                    
                                                <c:forEach items="${allp}" var="p">
                                                    <tr>
                                                        <td class="text-center align-middle  pt-4 ">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" id="transactionCheck1">
                                                                <label class="form-check-label" for="transactionCheck1"></label>
                                                            </div>
                                                        </td>
                                                        <td class=" pt-6 ">
                                                            <a href="./product-detail-01.html" class="media align-items-center">
                                                                <div class="w-80px mr-5">
                                                                    <img style="height: 100px; width: 100px" src="${p.thumbnail}" alt="Facial cleanser" class="">
                                                                </div>
                                                                <div class="media-body">
                                                                    <p class="font-weight-600 text-secondary mb-0">${p.title}</p>
                                                                </div>
                                                            </a>
                                                        </td>
                                                        
                                                        <td class="text-secondary align-middle font-weight-bold">${p.size.value}ml</td>
                                                        <td class="text-secondary align-middle font-weight-bold">${p.sizeproduct.price_out}</td>
                                                        
                                                        <td class="align-middle">${p.updated_at}</td>
                                                        <td class="align-middle">
                                                            <div class="d-flex flex-wrap justify-content-end">
                                                                <a href="editproduct?pid=${p.id}&sid=${p.sizeproduct.sid}" class="btn btn-primary btn-sm mr-1 my-1"><i class="fal fa-pen"></i><span class="d-inline-block ml-1">Edit</span></a>
                                                                <a href="#" onclick="doDelete('${p.id}','${p.sizeproduct.sid}')" class="btn btn-sm border hover-white bg-hover-primary mr-1 border-primary my-1 text-secondary font-weight-400"><i class="fas fa-trash-alt"></i><span class="d-inline-block ml-1">Delete</span></a>
                                                                
                                                            </div>
                                                        </td>
                                                    </tr> 
                                                </c:forEach>
                                                
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <nav aria-label="Page navigation example" class="mt-6 mb-4">
                                <ul class="pagination justify-content-start">
                                    <li class="page-item active mx-1"><a class="page-link" href="#">01</a></li>
                                    <li class="page-item mx-1"><a class="page-link" href="#">02</a></li>
                                    <li class="page-item mx-1"><a class="page-link" href="#">03</a></li>
                                    <li class="page-item mx-1"><a class="page-link dot" href="#">...</a></li>
                                    <li class="page-item mx-1"><a class="page-link" href="#">16</a></li>
                                    <li class="page-item mx-1">
                                        <a class="page-link" href="#"><i class="far fa-chevron-right"></i></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <footer class="pt-3 pb-6 footer-dashboard mt-auto">
                            <div class="row">
                                <div class="col-sm-6">
                                    <script>
                                        document.write(new Date().getFullYear());
                                    </script>
                                    © Glowing - Beauty & Cosmetics Shop HTML Template .
                                </div>
                                <div class="col-sm-6">
                                    <div class="text-sm-right">All rights reserved</div>
                                </div>
                            </div>
                        </footer>
                    </main>
                </div>
            </div>
        </div>

        <script src="./vendors/jquery.min.js"></script>
        <script src="./vendors/jquery-ui/jquery-ui.min.js"></script>
        <script src="./vendors/bootstrap/bootstrap.bundle.js"></script>
        <script src="./vendors/bootstrap-select/js/bootstrap-select.min.js"></script>
        <script src="./vendors/slick/slick.min.js"></script>
        <script src="./vendors/waypoints/jquery.waypoints.min.js"></script>
        <script src="./vendors/counter/countUp.js"></script>
        <script src="./vendors/magnific-popup/jquery.magnific-popup.min.js"></script>
        <script src="./vendors/hc-sticky/hc-sticky.min.js"></script>
        <script src="./vendors/jparallax/TweenMax.min.js"></script>
        <script src="./vendors/mapbox-gl/mapbox-gl.js"></script>
        <script src="./vendors/isotope/isotope.js"></script>
        <script src="./vendors/chartjs/chart.min.js"></script>

        <script src="./js/theme.js"></script>
        <div class="modal sign-in" id="sign-in" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header border-0 p-6">
                        <nav class="w-100">
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-link active" id="nav-log-in-tab" data-toggle="tab" href="#nav-log-in" role="tab" aria-controls="nav-log-in" aria-selected="true">Log in</a>
                                <a class="nav-link" id="nav-register-tab" data-toggle="tab" href="#nav-register" role="tab" aria-controls="nav-register" aria-selected="false">Register</a>
                            </div>
                        </nav>
                        <button type="button" class="close opacity-10 fs-32 pt-1 position-absolute" data-dismiss="modal" aria-label="Close" style="right: 30px">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body px-9 pb-8">
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-log-in" role="tabpanel" aria-labelledby="nav-log-in-tab">
                                <h4 class="fs-34 text-center mb-6">Sign In</h4>
                                <p class="text-center fs-16 mb-7">Don’t have an account yet? <a href="#" class="text-secondary border-bottom text-decoration-none">Sign up</a> for free</p>
                                <form>
                                    <input name="email" type="email" class="form-control border-0 mb-3" placeholder="Your email" required>
                                    <input name="password" type="password" class="form-control border-0" placeholder="Password" required>
                                    <div class="d-flex align-items-center justify-content-between mt-5 mb-4">
                                        <div class="custom-control custom-checkbox">
                                            <input name="stay-signed-in" type="checkbox" class="custom-control-input" id="staySignedIn">
                                            <label class="custom-control-label text-body" for="staySignedIn">Stay signed in</label>
                                        </div>
                                        <a href="#" class="text-secondary">Forgot your password?</a>
                                    </div>
                                    <button type="submit" value="Login" class="btn btn-secondary btn-block bg-hover-primary border-hover-primary">Log In</button>
                                    <div class="border-bottom mt-6"></div>
                                    <div class="text-center mt-n2 lh-1 mb-4">
                                        <span class="fs-14 bg-white lh-1 mt-n2 px-4">or Log-in with</span>
                                    </div>
                                    <div class="d-flex">
                                        <a href="#" class="btn btn-outline-secondary btn-block border-2x border mr-5 border-hover-secondary"><i class="fab fa-facebook-f mr-2" style="color: #2E58B2"></i>Facebook</a>
                                        <a href="#" class="btn btn-outline-secondary btn-block border-2x border mt-0 border-hover-secondary"><i class="fab fa-google mr-2" style="color: #DD4B39"></i>Google</a>
                                    </div>
                                </form>
                            </div>
                            <div class="tab-pane fade" id="nav-register" role="tabpanel" aria-labelledby="nav-register-tab">
                                <h4 class="fs-34 text-center mb-6">Sign Up</h4>
                                <p class="text-center fs-16 mb-7">Already have an account? <a href="#" class="text-secondary border-bottom text-decoration-none">Log in</a></p>
                                <form>
                                    <input name="first-name" type="text" class="form-control border-0 mb-3" placeholder="First name" required>
                                    <input name="last-name" type="text" class="form-control border-0 mb-3" placeholder="Last name" required>
                                    <input name="email" type="email" class="form-control border-0 mb-3" placeholder="Your email" required>
                                    <input name="password" type="password" class="form-control border-0" placeholder="Password" required>
                                    <div class="custom-control custom-checkbox mt-4 mb-5 mr-xl-6">
                                        <input name="agree" type="checkbox" class="custom-control-input" id="termsOfUse">
                                        <label class="custom-control-label text-body" for="termsOfUse">
                                            Yes, I agree with Grace <a href="#">Privacy Policy</a> and <a href="#">Terms of Use</a>
                                        </label>
                                    </div>
                                    <button type="submit" value="Login" class="btn btn-secondary btn-block bg-hover-primary border-hover-primary">Sign Up</button>
                                    <div class="border-bottom mt-6"></div>
                                    <div class="text-center mt-n2 lh-1 mb-4">
                                        <span class="fs-14 bg-white lh-1 mt-n2 px-4">or Sign Up with</span>
                                    </div>
                                    <div class="d-flex">
                                        <a href="#" class="btn btn-outline-secondary btn-block border-2x border mr-5 border-hover-secondary"><i class="fab fa-facebook-f mr-2" style="color: #2E58B2"></i>Facebook</a>
                                        <a href="#" class="btn btn-outline-secondary btn-block border-2x border mt-0 border-hover-secondary"><i class="fab fa-google mr-2" style="color: #DD4B39"></i>Google</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <svg aria-hidden="true" style="position: absolute; width: 0; height: 0; overflow: hidden;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">       
    </svg>
</body>

<!-- Mirrored from templates.g5plus.net/glowing/dashboard/dashboard-product-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 24 Feb 2023 07:49:51 GMT -->
</html>
