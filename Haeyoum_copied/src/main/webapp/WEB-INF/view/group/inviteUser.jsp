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
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/clear.css' />
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/common.css' />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/carouFredSel.css' />
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/sm-clean.css' />
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/style.css' />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/main.css">
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
					<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
							<form class="login100-form validate-form flex-sb flex-w" action="${pageContext.request.contextPath}/group/inviteCode" method="post">
								<span class="login100-form-title p-b-32" style="font-family: 'Jua', sans-serif;">
									그룹초대
								</span>
			
								<span class="txt1 p-b-11" >
									그룹코드
								</span>
								<span id="codeName" class="txt1 p-b-11">
										<c:if test="${errors.emptyCode}"><a style="color:gray">코드를 입력하세요</a></c:if>
										<c:if test="${errors.errorCode}"><a style="color:gray">코드를 확인하세요</a></c:if>
										<c:if test="${errors.emptyGroup}"><a style="color:gray">코드를 확인하세요</a></c:if>
										<c:if test="${errors.joined}"><a style="color:gray">이미 가입된 그룹이예요</a></c:if>
										<c:if test="${errors.fullMember}"><a style="color:gray">그룹에 최대인원이 들어가있어요</a></c:if>
								</span>
								<div class="wrap-input100 validate-input m-b-36" data-validate = "InviteCode is required">
									<input id="reqCode" class="input100" type="text" name="inviteCode" autofocus>
								  	<span class="focus-input100"></span>
								</div>
								
								<div class="container-login300-form-btn">
									<button class="login100-form-btn" >입장하기</button>
									<button class="login100-form-btn" type="button" onclick="history.back()">
										돌아가기
									</button>
								</div>
			
							</form>
						</div>
						
						<div id="dropDownSelect1"></div>
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
		$("#reqCode").keyup(function() {
			var reqcode = $("#reqCode").val();
			
			if(reqcode){
				$.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/group/inviteCode/" + reqcode,
					dataType : "json",
					success : function(code) {
						if(code.value == 1){
							$("#codeName").text("방을 찾았어요 :D");
						}else{
							$("#codeName").text("방을 찾을 수 없어요 :(");
						}
					},
					error : function() {
						$("#codeName").text("코드 에러");
						$("#reqCode").val("errorCode");
					}
				});
			}
		});
	</script>
</body>
</html>