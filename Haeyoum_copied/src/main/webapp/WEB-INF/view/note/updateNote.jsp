<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HaeYoum - Note</title>
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
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/clear.css' />
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/common.css' />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/fontawesome-free/css/all.min.css">
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/carouFredSel.css' />
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/sm-clean.css' />
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/style.css' />
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
	
				<h1 class="entry-title">노트수정</h1>
	
				<div class="entry-content">
					<div class="content-wrap content-660 center-relative">
						<form action="${pageContext.request.contextPath}/group/note/updateNote" method="post">
								<input type="hidden" name="con_id" value="${note.con_id}"/> 
					
								<table class="table table-hover">
									<tr>
										<th>제목</th>
										<td><input type="text" class="form-control" name="note_name" value="${note.note_name}" required="required"
										placeholder="제목을 입력하세요.(최대 50자)" maxlength="50"></td>
									</tr>
									<tr>
										<th>내용</th>
										<td><textarea class="form-control" name="note_text" rows="6" required="required">${note.note_text}</textarea></td>
									</tr>
								</table>
								<div class="container-login300-form-btn">
									<button class="login300-form-btn" >노트수정</button>
									<button class="login100-form-btn" type="button" onclick="history.back()">돌아가기</button>
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