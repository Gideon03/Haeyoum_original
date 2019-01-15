<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>HaeYoum - Social Project</title>
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
	    <%@ include file="/WEB-INF/view/util/loading.jsp" %>
	
	    <!-- Left Sidebar -->
	    <%@ include file="/WEB-INF/view/util/leftSidebar.jsp" %>
	
	    <!-- Single Content -->
	    <div id="content" class="site-content center-relative">
	        <div class="single-post-wrapper content-1070 center-relative">
	
	            <article class="center-relative">
	            	<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55" style="font-family: 'Nanum Gothic', sans-serif;font-weight: 700;">
						<form class="login100-form validate-form flex-sb flex-w" action="${pageContext.request.contextPath}/group/regist" method="post">
					 		<span class="login100-form-title p-b-32" style="font-family: 'Jua', sans-serif;">
								그룹생성
							</span>
					 		<span class="txt1 p-b-11" >
								그룹이름
							</span>
							<div class="wrap-input100 validate-input m-b-36" data-validate = "Group name is required">
								<input class="input100" type="text" name="group_name" autofocus>
							  	<span class="focus-input100"></span>
							</div>
							
							<span class="txt1 p-b-11" >
								최대인원
							</span>
							<div class="wrap-input100 validate-input m-b-36">
								<select class="form-control" name="group_max">
									<option value="2" selected="selected">2 명</option>
									<option value="3">3 명</option>
									<option value="4">4 명</option>
									<option value="5">5 명</option>
									<option value="6">6 명</option>
									<option value="7">7 명</option>
									<option value="8">8 명</option>
									<option value="9">9 명</option>
									<option value="10">10 명</option>
								</select>
							</div>
					 		
					 		<span class="txt1 p-b-11" >
								그룹코드
							</span>
							<div class="wrap-input100 m-b-36" style="border: 0;">
								<c:if test="${errors.emptyCode}">
									<label class="input100" id="code">
										초대코드를 생성하세요.
									</label>
								</c:if>
								<c:if test="${errors.errorCode}">
									<label class="input100" id="code">
									초대코드 발급중 오류가 발생하였습니다 관리자에게 문의하세요.
									</label>
								</c:if>
								
								<input id="input_code" type="hidden" name="group_code">
							  	<button class="login100-form-btn" type="button" id="btn">초대코드 생성</button>
							</div>
								
							<div class="container-login300-form-btn">
								<button class="login300-form-btn" >만들기</button>
								<button class="login100-form-btn" type="button" onclick="history.back()">
									돌아가기
								</button>
							</div>
						</form>
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
 	<script type="text/javascript">
		
 		
 		$("#btn").click(function() {
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/group/registcode",
				dataType : "json",
				success : function(code) {
					$("#btn").hide();
					$("#code").show();
					$("#code").text(code.value);
					$("#input_code").val(code.value);
				},
				error : function() {
					$("#code").hide();
					$("#btn").show();
					$("#input_code").val("errorCode");
				}
			});
		});
	</script>
</body>
</html>