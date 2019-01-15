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

					<h1 class="entry-title">Check Notes</h1>
					
					<div class="entry-content">
						<div class="content-wrap content-660 center-relative">
							<table class="table">
							
								<tr>
									<td>글쓴이 : ${note.note_writer}</td>
									<td align="center">${note.note_regdate}</td>
									<td align="right">조회수 : ${note.note_readcount}</td>
								</tr>
								<tr>
									<td align="left">제목</td>
									<td align="center" colspan="2">${note.note_name}</td>
								</tr>
								<tr>
									<td align="center" colspan="3">내용</td>
								</tr>
								<tr>
									<td colspan="3">${note.note_text}</td>
								</tr>
						 	</table>
						 	
							<div align="right">
								<c:if test="${note.note_writer eq user.member_id}">
								<button type="button" class="btn btn-primary" 
									onclick="location.href='${pageContext.request.contextPath}/group/note/updateNote?con_id=${note.con_id}'">수정</button>
								<button type="button" class="btn btn-primary" 
									onclick="location.href='${pageContext.request.contextPath}/group/note/deleteNote?con_id=${note.con_id}'">삭제</button>
								</c:if>
							<div id="disqus_thread">
						
								<script>
									/**
									*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
									*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
									/*
									var disqus_config = function () {
									this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
									this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
									};
									*/
									(function() { // DON'T EDIT BELOW THIS LINE
									var d = document, s = d.createElement('script');
									s.src = 'https://haeyoum.disqus.com/embed.js';
									s.setAttribute('data-timestamp', +new Date());
									(d.head || d.body).appendChild(s);
									})();
								</script>
								<noscript>
									Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a>
								</noscript>
							</div>
							</div>
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
