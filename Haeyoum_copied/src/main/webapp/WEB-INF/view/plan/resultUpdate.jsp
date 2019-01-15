<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/bootstrap.min.css' />
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
        <link href="https://fonts.googleapis.com/css?family=Jua&amp;subset=korean" rel="stylesheet" >
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/clear.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/common.css' />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/carouFredSel.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/sm-clean.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/style.css' />
</head>
  <body class="single-post">

        <!-- Preloader Gif -->
        <%@ include file="/WEB-INF/view/util/loading.jsp" %>

        <!-- Left Sidebar -->
        <%@ include file="/WEB-INF/view/util/leftSidebar.jsp" %>

        <!-- Single Content -->
        <div id="content" class="site-content center-relative">
            <div class="single-post-wrapper content-1070 center-relative">

                <article class="center-relative">
                    
                    <!-- 아티클 안에 내용작성하시면 됩니다 아래의 내용은 영역비율을 보기위한 샘플입니다. -->
                    
                    
업데이트가 잘 되었습니다.!

 <div class="clear"></div>
                </article>
            </div>
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