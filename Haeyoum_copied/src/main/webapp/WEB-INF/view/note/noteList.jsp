<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    
	<title>HaeYoum - Note</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="Template by Colorlib" />
	<meta name="keywords" content="HTML, CSS, JavaScript, PHP" />
	<meta name="author" content="Colorlib" />
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
	<link href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic" rel="stylesheet" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" />
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/bootstrap.min.css' />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/main.css">
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/clear.css' />
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/common.css' />
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
		  	<article class="center-relative ">
				<div class="wrap-login100-vote p-t-55 p-b-55">
					<span class="login100-form-title p-b-32">
						<b>읽어봐윰</b>
					</span>
					<div class="container-note-btn">
						<button class="note-btn" onclick="location.href='${pageContext.request.contextPath}/group/note/createNote'">
						글쓰기
						</button>
					</div>
					<table class="table table-hover table-responsive note-table">
						<thead class="thead-light">
						<tr>
							<th class="txt1 p-b-11 text-center th-title">제목</th>
							<th class="txt1 p-b-11 text-center th-writer">작성자</th>
							<th class="txt1 p-b-11 text-center th-date">작성일</th>
							<th class="txt1 p-b-11 text-center th-count">조회수</th>
						</tr>

						<c:forEach var="note" items="${list}" >
							<tr>
								<td class="txt1 p-b-11 th-title" >
									<a title="${note.note_name}" href="${pageContext.request.contextPath}/group/note/readNote?con_id=${note.con_id}">${note.note_name}</a>
								</td>
								<td class="txt1 p-b-11 text-center th-writer" >${note.note_writer}</td>
								<td class="txt1 p-b-11 text-center th-date" >${note.regDate}</td>
								<td class="txt1 p-b-11 text-center th-count" >${note.note_readcount}</td>
							</tr>
						</c:forEach>
					</table>
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

</body>
</html>
