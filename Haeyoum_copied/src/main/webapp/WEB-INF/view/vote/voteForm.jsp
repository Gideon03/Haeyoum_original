<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/main.css">
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/bootstrap.min.css' />
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/clear.css' />
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/common.css' />
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
				<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
					<form class="form-signin" action="${pageContext.request.contextPath}/group/vote/create" method="post">
						<span class="login100-form-title p-b-32" style="font-family: 'Jua', sans-serif;">
							투표 만들기
						</span>
						<input type="hidden" value="${user.group_id}" name="group_id">
						<input type="hidden" value="104" name="sort_id">
						<span class="txt1 p-b-11" >
							투표이름
						</span>
						<div class="wrap-input100 validate-input m-b-36" data-validate = "Vote name is required">
							<input class="input100" type="text" name="vote_name" autofocus required placeholder="12자이내로 작성해윰">
						  	<span class="focus-input100"></span>
						</div>
						<span class="txt1 p-b-11" >
							투표항목
						</span>
						<div id="vote-con">
							<div class="wrap-input100 validate-input m-b-10" data-validate = "Vote content is required">
								<input class="input100" type="text" name="con_text" autofocus required placeholder="8자이내로 작성해윰">
							  	<span class="focus-input100"></span>
							</div>
							<div class="wrap-input100 validate-input m-b-10" data-validate = "Vote content is required">
								<input class="input100" type="text" name="con_text" autofocus required placeholder="8자이내로 작성해윰">
							  	<span class="focus-input100"></span>
							</div>
						</div>
						<div class="m-b-36">
							<button type="button" id="addVote-con">
								<b style="color: gray;">+ 항목추가</b>
							</button>
						</div>
						<div class="m-b-36">
						<c:if test="${create == 0}">투표등록이 실패하였습니다.</c:if>
						</div>
						<div class="container-login300-form-btn">
							<button class="login300-form-btn" type="submit">투표 등록</button>
							<button class="login100-form-btn" type="button" onclick="location.href='${pageContext.request.contextPath}/group/vote/voteList'">
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
	<script src="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/moment.min.js"></script>
 	<script src="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/daterangepicker.js"></script>
 	
 	<script type="text/javascript">
		$('#addVote-con').click(function() {
			var HTML = '<div class="wrap-input100 validate-input m-b-10" data-validate = "Vote content is required">';
				HTML += '<input class="input100" type="text" name="con_text" autofocus required placeholder="8자이내로 작성해윰">';
				HTML += '<span class="focus-input100"></span>';
				HTML += '</div>';
	
			$('#vote-con').append(HTML);
		});
	</script>
</body>
</html>
