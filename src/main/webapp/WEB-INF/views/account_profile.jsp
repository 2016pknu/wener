<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="robots" content="index, follow">
        <title>Wener - 내 프로필</title>
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
        <script src="resources/js/passwordCheck.js"></script>

    </head>
    <body>
        <div class="wrapper">
            <header  class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container">
                    <div class="navbar-header">
                        <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="index.main" class="navbar-brand"><span class="logo"><i class="fa fa-recycle"></i> Dlapak</span></a>
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
            <section class="main no-padding">
                <div class="account-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4 col-md-3 col-lg-2">
                                <!-- User avatar -->
                                <div class="profile_avatar">
                                    <img src="resources/img/people/#" alt="avatar" class="img-responsive">
                                </div>
                            </div>
                            <div class="col-sm-8 col-md-9 col-lg-10">
                                <div class="profile_summary">
                                    <!-- User name --> 
                                    <h3 class="profile_name">${id}</h3>
                                    <!-- User status -->
                                    <p>Hello world</p>
                                    <!-- Contact -->
<!--                                     <a href="index.member" class="btn btn-primary btn-warning btn-sm"><i class="fa fa-sign-out"></i> Sign Out</a> -->
                                </div> <!-- / .profile__summary -->
                            </div>
                        </div> <!-- / .row -->
                    </div> <!-- / .container -->
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-3">
                            <div class="widget">
                                <div class="widget-header">
                                    <h3>My Pages</h3>
                                </div>
                                <div class="widget-body">
                                    <ul class="author-menus">
                                        <li><a href="account_create_post.member"><i class="fa fa-plus"></i> 글쓰기</a></li>
	                                    <li><a href="account_posts.member"><i class="fa fa-folder-o"></i> 내가 쓴 글</a></li>
	                                    <li><a href="account_profile.member"><i class="fa fa-user"></i> 내 프로필</a></li>
	                                </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9 col-sm-9">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse"> 내 프로필 </a> </h4>
                                </div>

                                <form  action="/wener/updateProfile.member" method="post" class="form-horizontal" enctype="multipart/form-data" accept-charset="utf-8">
                                    <div class="panel-body">            
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">ID</label>
                                            <div class="col-sm-9">
                                                <input type="text" required="required" maxlength="100" class="form-control" readonly value="${member.id}" name="id">                                  </div>
                                        </div>
                                        <div class="form-group">
                                            <label  class="col-sm-3 control-label">비밀번호</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control" placeholder="프로필 수정시 비밀번호 입력 필요" value="" id="password" name="password" required="required">
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label  class="col-sm-3 control-label">비밀번호 확인</label>
                                            <div class="col-sm-9">
                                                <input type="password" class="form-control" id="passwordCheck">                                           <span class="help-block"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label  class="col-sm-3 control-label"></label>
                                            <div class="col-sm-9">
                                                <div id="pwCheckStatus"></div>                                           <span class="help-block"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Email</label>
                                            <div class="col-sm-9">
                                                <input type="email" maxlength="100" class="form-control" value="${member.email}" name="email">                        
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">이름</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" name="name">                                   </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">핸드폰</label>
                                            <div class="col-sm-9">
                                                <input type="text" maxlength="100" class="form-control" name="phone">                                  </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">주소</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" name="address">                                 </div>
                                        </div>
                                        <div class="form-group">
                                            <label  class="col-sm-3 control-label">프로필 사진</label>
                                            <div class="col-sm-9">
                                                <input type="file" class="filestyle" name="picture">
                                                <span class="help-block"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-sm-offset-3 col-sm-9"> </div>
                                        </div>

                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-sm-offset-3 col-sm-9">
                                                <button type="submit" class="btn btn-custom"><i class="fa fa-save"></i> 저장</button>
                                                <button type="reset" class="btn btn-info"><i class="fa fa-refresh"></i> 다시쓰기</button>
                                                <a href="index.main"><button type="button" class="btn btn-warning"><i class="fa fa-close"></i> 취소</button></a>
                                            </div>
                                        </div>
                                    </div>
                                </form> 
                            </div>
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
        <script src="resources/plugins/filestyle/bootstrap-filestyle.min.js"></script>
    </body>
</html>