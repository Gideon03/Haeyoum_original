<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>HaeYoum - Vote</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="Template by Colorlib" />
    <meta name="keywords" content="HTML, CSS, JavaScript, PHP" />
    <meta name="author" content="Colorlib" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
	<link href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/bootstrap.min.css' />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/main.css">
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/clear.css' />
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/common.css' />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/fontawesome-free/css/all.min.css">
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/carouFredSel.css' />
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/sm-clean.css' />
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/style.css' />
</head>

<body class="single-post">

	<!-- Preloader Gif -->
	<%@ include file="/WEB-INF/view/util/loading.jsp"%>
	
	<!-- Left Sidebar -->
	<%@ include file="/WEB-INF/view/util/leftSidebar.jsp"%>
	
	<!-- Single Content -->
	<div id="content" class="site-content center-relative">
		<div class="single-post-wrapper content-1070 center-relative">
	
			<article class="center-relative">
				<h1 class="entry-title">투표삭제</h1>
					<div class="entry-content">
						<div class="content-wrap content-660 center-relative">
							<div class="entry-content p-b-32">
								<h4>정말로 투표를 <strong >삭제</strong>하시겠습니까?</h4>
								<span class="txt1">삭제된 투표는 복구가 불가능합니다.</span>
							</div>
							<form class="logout100-form validate-form flex-sb flex-w" action="${pageContext.request.contextPath}/group/vote/delete" method="post">
								<span class="txt1 p-b-11">비밀번호 확인
										<c:if test="${errors.pwError}">
											<span style="color: red"> [error] Password가 다릅니다.</span>
										</c:if>
								</span>
								<div class="wrap-input100 validate-input m-b-60" data-validate="Password is required">					
									<input class="input100" type="password" name="delete_pw">
									<span class="focus-input100"></span>						
								</div>
								
								<div class="container-login300-form-btn">
									<input type="hidden" name="con_id" value="${con_id}">
									<button class="login300-form-btn">삭제</button>
									<button class="login100-form-btn" type="button" onclick="history.back()">취소</button>
								</div>
							</form>
						</div>
					</div>
					<div class="clear"></div>
				</article>
			</div>
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
    <script type='text/javascript' src="${pageContext.request.contextPath}/resources/login/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/daterangepicker.js"></script>
</body>
</html>