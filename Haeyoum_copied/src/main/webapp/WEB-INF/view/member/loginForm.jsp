<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>			
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>						
<html>
<head>
	<title>HaeYoum - Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/main.css">
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form class="login100-form validate-form flex-sb flex-w" action="${pageContext.request.contextPath}/member/login" method="post">
					<span class="login100-form-title p-b-32">
						로그인
					</span>

					<span class="txt1 p-b-11">
						아이디 
						<c:if test="${errors.notFoundUser}"><a style="color: red"> [error] 해당 회원이 없습니다.</a></c:if>
						<c:if test="${errors.idError}"><a style="color: red"> [error] ID가 다릅니다.</a></c:if>
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
						<input class="input100" type="text" name="member_id"  autofocus="autofocus">
					  	<span class="focus-input100"></span>
					</div>
					
					<span class="txt1 p-b-11">
						비밀번호 
						<c:if test="${errors.pwError}"><a style="color: red"> [error] Password가 다릅니다.</a></c:if>
					</span>
					<div class="wrap-input100 validate-input m-b-35" data-validate = "Password is required">					
						<input class="input100" type="password" name="member_password">
						<span class="focus-input100"></span>						
					</div>
					
					<div class="container-login300-form-btn p-t-20">
						<button class="login300-form-btn">로그인</button>
						<button class="login100-form-btn" type="button" onclick="location.href='${pageContext.request.contextPath}/'">
							돌아가기
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/login/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/resources/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/login/js/main.js"></script>

</body>
</html>