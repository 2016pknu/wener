<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

		<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="robots" content="index, follow">
        <title>wener - use used</title>
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:regular,700,600&amp;latin" type="text/css" />
        <!-- Essential styles -->
        <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="resources/plugins/font-awesome/css/font-awesome.css" type="text/css"> 

        <!-- Dlapak styles -->
        <link id="theme_style" type="text/css" href="resources/css/style1.css" rel="stylesheet" media="screen">


        <!-- Favicon -->
        <link href="resources/img/favicon.png" rel="icon" type="image/png">

        <!-- Assets -->
        <link rel="stylesheet" href="resources/plugins/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="resources/plugins/owl-carousel/owl.theme.css">

        <!-- JS Library -->
        <script src="resources/js/jquery.js"></script>

</head>
<body>
        <div class="wrapper">
            <header class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container">
                    <div class="navbar-header">
                        <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="index.main" class="navbar-brand"><span class="logo"><i class="fa fa-wikipedia-w"></i> WENER</span></a>
                    </div>

                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="new-ads"><a href="account_create_post.html" class="btn btn-ads btn-block">글 쓰기</a></li>
                            <c:if test="${id == null}">
                           		<li><a href="signup.member">회원가입</a></li>
	                            <li class="dropdown">
	                                <a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-user"></i> <strong class="caret"></strong>&nbsp;</a>
	                                <div class="dropdown-menu dropdown-login" style="padding:15px;min-width:250px">
	                                    <form action="/wener/login.member" method="post">                       
	                                        <div class="form-group">
	                                            <div class="input-group">
	                                                <span class="input-group-addon addon-login"><i class="fa fa-user"></i></span>
	                                                <input type="text" placeholder="ID" required="required" class="form-control input-login" name="id">                                            
	                                            </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <div class="input-group">
	                                                <span class="input-group-addon addon-login"><i class="addon fa fa-lock"></i></span>
	                                                <input type="password" placeholder="Password" required="required" class="form-control input-login" name="password">                                            
	                                            </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <div class="checkbox">
	                                                <label class="string optional" for="user_remember_me">
	                                                    <input type="checkbox" id="user_remember_me" style="">
	                                                    Remember me
	                                                </label>
	                                            </div>
	                                        </div>
	                                        <input type="submit" class="btn btn-custom btn-block" value="Sign In">
	                                        <a href="forgot_password.member" class="text-center btn-block">아이디 또는 비밀번호를 잊어버리셨나요?</a>
	                                    </form>                                                       
	                                </div>
	                            </li>
                            </c:if>
                            <c:if test="${id != null}">
	                            <li class="dropdown">
	                                <a class="dropdown-toggle" href="#" data-toggle="dropdown"><strong class="caret"></strong>&nbsp;My Pages</a>
	                                <ul class="dropdown-menu">
	                                	<li><a href="account_create_post.member"><i class="fa fa-plus"></i> 글쓰기</a></li>
	                                    <li><a href="account_posts.member"><i class="fa fa-folder-o"></i> 내가 쓴 글</a></li>
	                                    <li><a href="account_profile.member"><i class="fa fa-user"></i> 내 프로필</a></li>
	                                    <li><a href="logout.member"><i class="fa fa-sign-out"></i> 로그아웃</a></li>
	                                </ul>
	                            </li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </header>
            <section class="hero">
                <div class="container text-center">
                    <h2 class="hero-title">Find Awesome Things Here</h2>
                    <p class="hero-description hidden-xs">크기가 작아지면 없어지는 소제목</p>
                    <div class="row hero-search-box">
                        <form>
                            <div class="col-md-4 col-sm-4 search-input">
                                        <select class="form-control input-lg search-second">
                                            <option selected="">카테고리</option>
                                            <option>자동차</option>
                                            <option>휴대폰</option>
                                            <option>맛집</option>
                                        </select>
                            </div>
                            <div class="col-md-4 col-sm-4 search-input">
                                <input type="text" class="form-control input-lg search-first" placeholder="검색">
                            </div>
                            <div class="col-md-4 col-sm-4 search-input">
                                <button class="btn btn-custom btn-block btn-lg"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
            <section class="main">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-sm-8">
                            <div class="row">
                                <div class="col-xs-4 col-sm-3">
                                    <div class="shortcut">
                                        <a href="category.html"><i class="fa fa-mobile-phone shortcut-icon icon-dark-blue"></i></a>
                                        <a href="category.html"><h3>가전제품</h3></a>
                                        <span class="total-items">215,546</span>
                                    </div>
                                </div>                            
                                <div class="col-xs-4 col-sm-3">
                                    <div class="shortcut">
                                        <a href="category.html"><i class="fa fa-car shortcut-icon icon-blue"></i></a>
                                        <a href="category.html"><h3>자동차</h3></a>
                                        <span class="total-items">234,567</span>
                                    </div>
                                </div>
                                <div class="col-xs-4 col-sm-3">
                                    <div class="shortcut">
                                        <a href="category.html"><i class="fa fa-music shortcut-icon icon-green"></i></a>
                                        <a href="category.html"><h3>음악</h3></a>
                                        <span class="total-items">25,366</span>
                                    </div>
                                </div>
                                <div class="col-xs-4 col-sm-3">
                                    <div class="shortcut">
                                        <a href="category.html"><i class="fa fa-briefcase shortcut-icon icon-brown"></i></a>
                                        <a href="category.html"><h3>패션잡화</h3></a>
                                        <span class="total-items">252,546</span>
                                    </div>
                                </div>
                                <div class="col-xs-4 col-sm-3">
                                    <div class="shortcut">
                                        <a href="category.html"><i class="fa fa-female shortcut-icon icon-violet"></i></a>
                                        <a href="category.html"><h3>Fashion</h3></a>
                                        <span class="total-items">52,546</span>
                                    </div>
                                </div>
                                <div class="col-xs-4 col-sm-3">
                                    <div class="shortcut">
                                        <a href="category.html"><i class="fa fa-soccer-ball-o shortcut-icon icon-orange"></i></a>
                                        <a href="category.html"><h3>Sport</h3></a>
                                        <span class="total-items">415,546</span>
                                    </div>  
                                </div>
                                <div class="col-xs-4 col-sm-3">
                                    <div class="shortcut">
                                        <a href="category.html"><i class="fa fa-gears shortcut-icon icon-light-blue"></i></a>
                                        <a href="category.html"><h3>Industry</h3></a>
                                        <span class="total-items">15,546</span>
                                    </div>  
                                </div>
                                <div class="col-xs-4 col-sm-3">
                                    <div class="shortcut">
                                        <a href="category.html"><i class="fa fa-wrench shortcut-icon icon-light-green"></i></a>
                                        <a href="category.html"><h3>Job</h3></a>
                                        <span class="total-items">152,546</span>
                                    </div>  
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="section-header">
                                        <h2>Featured</h2>
                                    </div>
                                    <div id="featured-products" class="owl-carousel owl-carousel-featured">
                                        <div class="item">
                                            <div class="item-ads-grid">
                                                <div class="item-badge-grid featured-ads">
                                                    <a href="#">Featured Ads</a>
                                                </div>
                                                <div class="item-img-grid">
                                                    <img alt="" src="resources/img/products/product-1.jpg" class="img-responsive img-center">
                                                </div>
                                                <div class="item-title">
                                                    <a href="detail.html"><h4>Lenovo A326 Black 4GB RAM</h4></a>
                                                </div>
                                                <div class="item-meta">
                                                    <ul>
                                                        <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                        <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a> , <a href="category.html">Smartphone</a></li>
                                                        <li class="item-location"><a href="category.html"><i class="fa fa-map-marker"></i> Manchester</a></li>
                                                        <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                                    </ul>
                                                </div>
                                                <div class="product-footer">
                                                    <div class="item-price-grid pull-left">
                                                        <h3>$ 100</h3>
                                                        <span>Negotiable</span>
                                                    </div>
                                                    <div class="item-action-grid pull-right">
                                                        <ul>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                            <li><a href="detail.html" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>   
                                        </div>

                                        <div class="item">
                                            <div class="item-ads-grid">
                                                <div class="item-badge-grid premium-ads">
                                                    <a href="#">Featured Ads</a>
                                                </div>
                                                <div class="item-img-grid">
                                                    <img alt="" src="resources/img/products/product-6.jpg" class="img-responsive img-center">
                                                </div>
                                                <div class="item-title">
                                                    <a href="detail.html"><h4>Samsung Tab 3 V 116</h4></a>
                                                </div>
                                                <div class="item-meta">
                                                    <ul>
                                                        <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                        <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a> , <a href="category.html">Smartphone</a></li>
                                                        <li class="item-location"><a href="category.html"><i class="fa fa-map-marker"></i> Manchester</a></li>
                                                        <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                                    </ul>
                                                </div>
                                                <div class="product-footer">
                                                    <div class="item-price-grid pull-left">
                                                        <h3>$ 100</h3>
                                                        <span>Negotiable</span>
                                                    </div>
                                                    <div class="item-action-grid pull-right">
                                                        <ul>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                            <li><a href="detail.html" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="item">
                                            <div class="item-ads-grid highlight-ads">
                                                <div class="item-img-grid">
                                                    <img alt="" src="resources/img/products/product-7.jpg" class="img-responsive img-center">
                                                </div>
                                                <div class="item-title">
                                                    <a href="detail.html"><h4>Sony Experia Z2 LTE</h4></a>
                                                </div>
                                                <div class="item-meta">
                                                    <ul>
                                                        <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                        <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a> , <a href="category.html">Smartphone</a></li>
                                                        <li class="item-location"><a href="category.html"><i class="fa fa-map-marker"></i> Manchester</a></li>
                                                        <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                                    </ul>
                                                </div>
                                                <div class="product-footer">
                                                    <div class="item-price-grid pull-left">
                                                        <h3>$ 100</h3>
                                                        <span>Negotiable</span>
                                                    </div>
                                                    <div class="item-action-grid pull-right">
                                                        <ul>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                            <li><a href="detail.html" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="item">
                                            <div class="item-ads-grid">
                                                <div class="item-badge-grid hot-ads">
                                                    <a href="#">Featured Ads</a>
                                                </div>
                                                <div class="item-img-grid">
                                                    <img alt="" src="resources/img/products/product-1.jpg" class="img-responsive img-center">
                                                </div>
                                                <div class="item-title">
                                                    <a href="detail.html"><h4>Lenovo A326 Black 4GB RAM</h4></a>
                                                </div>
                                                <div class="item-meta">
                                                    <ul>
                                                        <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                        <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a> , <a href="category.html">Smartphone</a></li>
                                                        <li class="item-location"><a href="category.html"><i class="fa fa-map-marker"></i> Manchester</a></li>
                                                        <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                                    </ul>
                                                </div>
                                                <div class="product-footer">
                                                    <div class="item-price-grid pull-left">
                                                        <h3>$ 100</h3>
                                                        <span>Negotiable</span>
                                                    </div>
                                                    <div class="item-action-grid pull-right">
                                                        <ul>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                            <li><a href="detail.html" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="item">
                                            <div class="item-ads-grid">
                                                <div class="item-badge-grid featured-ads">
                                                    <a href="#">Featured Ads</a>
                                                </div>
                                                <div class="item-img-grid">
                                                    <img alt="" src="resources/img/products/product-1.jpg" class="img-responsive img-center">
                                                </div>
                                                <div class="item-title">
                                                    <a href="detail.html"><h4>Lenovo A326 Black 4GB RAM</h4></a>
                                                </div>
                                                <div class="item-meta">
                                                    <ul>
                                                        <li class="item-date"><i class="fa fa-clock-o"></i> Today 10.35 am</li>
                                                        <li class="item-cat"><i class="fa fa-bars"></i> <a href="category.html">Electronics</a> , <a href="category.html">Smartphone</a></li>
                                                        <li class="item-location"><a href="category.html"><i class="fa fa-map-marker"></i> Manchester</a></li>
                                                        <li class="item-type"><i class="fa fa-bookmark"></i> New</li>
                                                    </ul>
                                                </div>
                                                <div class="product-footer">
                                                    <div class="item-price-grid pull-left">
                                                        <h3>$ 100</h3>
                                                        <span>Negotiable</span>
                                                    </div>
                                                    <div class="item-action-grid pull-right">
                                                        <ul>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Save Favorite" class="btn btn-default btn-sm"><i class="fa fa-heart"></i></a></li>
                                                            <li><a href="detail.html" data-toggle="tooltip" data-placement="top" title="Show Details" class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="widget">
                            	<c:if test="${id==null}">
                                <div class="widget-header">
                                </div>
                                <div class="widget-body">
                                    <form action="/wener/login.member" method="post">
                                       <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon addon-login"><i class="fa fa-user"></i></span>
                                                <input type="text" placeholder="ID" required="required" class="form-control input-login" name="id">                                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon addon-login"><i class="addon fa fa-lock"></i></span>
                                                <input type="password" placeholder="Password" required="required" class="form-control input-login" name="password">                                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <button class="btn btn-block btn-custom">로그인</button>
                                        </div>
                                    </form>
                                </div>
                                </c:if>
                                <c:if test="${id!=null}">
                                
                                	${id}님 환영합니다.
                                
                                </c:if>
                            </div>
                            <div class="widget">
                                <div class="widget-header">
                                    <h3>Trends</h3>
                                </div>
                                <div class="widget-body">
                                    <ul class="trends">
                                        <li><a href="#">Smartphone &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                        <li><a href="#">Watch &amp; Jewelry &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                        <li><a href="#">Clothes &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                        <li><a href="#">Shoes &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                        <li><a href="#">Music &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                        <li><a href="#">Furniture &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                        <li><a href="#">Photography &nbsp;<span class="item-numbers">(242)</span></a></li>
                                        <li><a href="#">Web Development &nbsp;<span class="item-numbers">(2,342)</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="banner-widget">
                                <img src="http://placehold.it/600x275" alt="banner" class="img-responsive">
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <div class="counter">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="item-counter">
                                <span class="item-icon"><i class="fa fa-database"></i></span>
                                <div data-refresh-interval="100" data-speed="3000" data-to="7803" data-from="0" class="item-count">7803</div>
                                <span class="item-info">Items</span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="item-counter">
                                <span class="item-icon"><i class="fa fa-user-plus"></i></span>
                                <div data-refresh-interval="50" data-speed="5000" data-to="427" data-from="0" class="item-count">427</div>
                                <span class="item-info">Sellers</span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="item-counter">
                                <span class="item-icon"><i class="fa fa-map-marker"></i></span>
                                <div data-refresh-interval="80" data-speed="5000" data-to="639" data-from="0" class="item-count">639</div>
                                <span class="item-info">Locations</span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="item-counter">
                                <span class="item-icon"><i class="fa fa-users"></i></span>
                                <div data-refresh-interval="80" data-speed="5000" data-to="1548" data-from="0" class="item-count">1548</div>
                                <span class="item-info">Members</span>
                            </div>
                        </div>
                    </div>
                </div> <!-- / .counter -->
    </div>
    <div class="footer">
        <div class="container">
        <ul class="pull-left footer-menu">
            <li>
                <a href="index.main"> Home </a>
                <a href="about.main"> About us </a>
                <a href="contact.main"> Contact us </a>
            </li>
        </ul>
        <ul class="pull-right footer-menu">
            <li> &copy; 2016 Wener </li>
        </ul>
        </div>
    </div>
</div>
<!-- Essentials -->
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/plugins/owl-carousel/owl.carousel.js"></script>
<script src="resources/plugins/counter/jquery.countTo.js"></script>
<script type="text/javascript">
    $(document).ready(function () {

        // ===========Featured Owl Carousel============
        if ($(".owl-carousel-featured").length > 0) {
            $(".owl-carousel-featured").owlCarousel({
                items: 3,
                lazyLoad: true,
                pagination: true,
                autoPlay: 5000,
                stopOnHover: true
            });
        }

        // ==================Counter====================
        $('.item-count').countTo({
            formatter: function (value, options) {
                return value.toFixed(options.decimals);
            },
            onUpdate: function (value) {
                console.debug(this);
            },
            onComplete: function (value) {
                console.debug(this);
            }
        });
    });
</script>
</body>
</html>