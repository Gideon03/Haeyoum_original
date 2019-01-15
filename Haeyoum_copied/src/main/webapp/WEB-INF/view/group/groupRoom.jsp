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
        <link href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic" rel="stylesheet">
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/clear.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/common.css' />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/carouFredSel.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/sm-clean.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/style.css' />

        <!--[if lt IE 9]><script src="js/html5.js"></script><![endif]-->

    </head>

    <body class="home blog" >

        <!-- Preloader Gif -->
        <%@ include file="/WEB-INF/view/util/loading.jsp" %>

        <!-- Left Sidebar -->
        <%@ include file="/WEB-INF/view/util/leftSidebar.jsp" %>

        <!-- Home Content -->
        <div id="content" class="site-content">
            <div id="blog-wrapper">
                <div class="blog-holder center-relative room">

                    <article class="blog-item-holder featured-post">
                        <div class="entry-content relative">
                            <div class="content-1170 center-relative">
                                <div class="title">${group.group_name}</div>
                                <div class="room-txt">
	                                <div class="cat-links">
	                                    <ul>
	                                        <li>개설자</li>
	                                    </ul>
	                                </div>
	                                <div class="entry-date published">${group.group_admin_id}</div>
	                                <div class="clear"></div>
	                                <div class="cat-links">
	                                    <ul>
	                                        <li>개설일</li>
	                                    </ul>
	                                </div>
	                                <div class="entry-date published">${group.regDate}</div>
	                                <div class="clear"></div>
	                                <div class="cat-links">
	                                    <ul>
	                                        <li>회원수</li>
	                                    </ul>
	                                </div>
	                                <div class="published">${countMember} / ${group.group_max}</div>
	                                <div class="clear"></div>
	                                <div class="cat-links">
	                                    <ul>
	                                        <li>초대코드</li>
	                                    </ul>
	                                </div>
	                                <div class="published">${group.group_code}</div>
	                                <div class="clear"></div>
	                                <div class="cat-links">
	                                    <ul>
	                                        <li>회원목록</li>
	                                    </ul>
	                                </div>
	                                <c:forEach items="${memberList}" var="member">
		                                <div class="clear"></div>
		                                <div class="published room-member">${member.group_member_id}</div>
	                                </c:forEach>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>
                
                <div class="clear"></div>
                
            </div>

            <div class="featured-image-holder">
                <div class="featured-post-image" style="background-image: url(${pageContext.request.contextPath}/resources/images/main_img.png)"></div>
            </div>
            <div class="clear"></div>
        </div>



        <!--Load JavaScript-->
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
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
