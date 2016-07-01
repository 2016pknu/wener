<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="robots" content="index, follow">
        <title>Wener - login</title>
        <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:regular,700,600&amp;latin" type="text/css" />
        <!-- Essential styles -->
        <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="resources/plugins/font-awesome/css/font-awesome.css" type="text/css"> 

        <!-- Dlapak styles -->
        <link id="theme_style" type="text/css" href="resources/css/style1.css" rel="stylesheet" media="screen">


        <!-- Favicon -->
        <link href="resources/img/favicon.png" rel="icon" type="image/png">

        <!-- resources -->
        <link rel="stylesheet" href="resources/plugins/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="resources/plugins/owl-carousel/owl.theme.css">

        <!-- JS Library -->
        <script src="resources/js/jquery.js"></script>

    </head>
    <body>
        <div class="wrapper">
            <header  class="navbar navbar-default navbar-fixed-top  navbar-top">
                <div class="container">
                    <div class="navbar-header">
                        <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="index.html" class="navbar-brand"><span class="logo"><i class="fa fa-recycle"></i> Dlapak</span></a>
                    </div>

                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="new-ads"><a href="account_create_post.html" class="btn btn-ads btn-block">Advertise</a></li>
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
	                                    <li><a href="account_posts.html">My Ads</a></li>
	                                    <li><a href="account_create_post.html">Create Ads</a></li>
	                                    <li><a href="account_profile.html">My Profile</a></li>
	                                    <li><a href="logout.member"><i class="fa fa-sign-out"></i> 로그아웃</a></li>
	                                </ul>
	                            </li>
                            </c:if>

                        </ul>
                    </div>
                </div>
            </header>
            <section class="main">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-5 login-form">
                            <div class="panel panel-default">
                                <div class="panel-intro text-center">
                                    <h1 class="logo"><i class="fa fa-recycle"></i> Wener</h1>
                                </div>
                                <div class="panel-body">
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
                                <div class="panel-footer">
                                    <div class="checkbox pull-left">
                                        <label for="terms" class="string optional">
                                            <input type="checkbox" style="" id="terms">Remember me
                                        </label>
                                    </div>
                                    <p class="text-center pull-right"> <a href="forgot_password.html"> 아이디 또는 비밀번호를 잊어버리셨나요? </a> </p>
                                    <div style=" clear:both"></div>
                                </div>
                            </div>
                            <p class="text-center">Don't have an account? <a href="signup.html"><strong>Signup</strong></a></p>
                        </div>
                    </div>
                </div>
            </section>
            <div class="footer">
                <div class="container">
                <ul class="pull-left footer-menu">
                    <li>
                        <a href="index.html"> Home </a>
                        <a href="about.html"> About us </a>
                        <a href="contact.html"> Contact us </a>
                    </li>
                </ul>
                <ul class="pull-right footer-menu">
                    <li> &copy; 2015 Dlapak </li>
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