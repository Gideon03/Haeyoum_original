<%@ page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
    <head>
        <title>HaeYoum - Social Project</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Template by Colorlib" />
        <meta name="keywords" content="HTML, CSS, JavaScript, PHP" />
        <meta name="author" content="Colorlib" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		
		<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/bootstrap.min.css' />
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CLibre+Baskerville:400,400italic,700' rel='stylesheet' type='${pageContext.request.contextPath}/resources/text/css'>
        <link href="https://fonts.googleapis.com/css?family=Jua&amp;subset=korean" rel="stylesheet" >
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/clear.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/common.css' />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/carouFredSel.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/sm-clean.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/style.css' />
        

        <!--[if lt IE 9]>
                <script src="js/html5.js"></script>
        <![endif]-->

    </head>


    <body class="home blog" >

        <!-- Preloader Gif -->
        <%@ include file="/WEB-INF/view/util/loading.jsp" %>

        <!-- Left Sidebar -->
        <%@ include file="/WEB-INF/view/util/leftSidebar.jsp" %>

        <!-- Home Content -->
        <div id="content" class="site-content">
            <div id="blog-wrapper">
                <div class="blog-holder center-relative" style="margin-top: 100px">


                    <article class="blog-item-holder featured-post">
                        <div class="entry-content relative">
                            <div class="content-1170 center-relative">
                                <div class="cat-links">
                                    <ul>
                                        <li>
                                            Starting
                                        </li>
                                    </ul>
                                </div>
                                <div class="entry-date published">November 12, 2018</div>
	                                <p class="title">
	                                    해 윰
	                                </p>
                                <div class="excerpt">
                                    '해윰'은 생각의 순 우리말입니다. 주변에 가까운 친구들, 가족, 모임에서 여러분과 함께 생각을 나누고 소통하기 위해서 만들어진 서비스입니다. 
                                    지금 당장 생각하는 일들을 '우리끼리' 나눠보세요.여러분들의 친구들이 기다리고 있어요!
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </article>
                </div>
                
                <div class="clear"></div>
                
            </div>

            <div class="featured-image-holder">
                <div class="featured-post-image" style="background-image: url(resources/images/main_img.png)"></div>
            </div>
            <div class="clear"></div>
        </div>



        <!--Load JavaScript-->
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
        <script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/imagesloaded.pkgd.js'></script>
        <script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.nicescroll.min.js'></script>
        <script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.smartmenus.min.js'></script>
        <script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.carouFredSel-6.0.0-packed.js'></script>
        <script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.mousewheel.min.js'></script>
        <script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.touchSwipe.min.js'></script>
        <script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js'></script>
        <script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/main.js'></script>
    </body>
</html>
