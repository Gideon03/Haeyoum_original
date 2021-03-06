<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/bootstrap.min.css' />
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CLibre+Baskerville:400,400italic,700' rel='stylesheet' type='${pageContext.request.contextPath}/resources/text/css'>
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

	<form action="${pageContext.request.contextPath}/group/plan/scheduleForm"
		method="post">
		<input type="hidden" name="srt" value="${srt}">
		<table>
			<tr>  
				<td>일정이름</td>
				<td><input type="text" name="plan_name" placeholder="일정 제목" required></td>
			</tr>
			<tr>
				<td>일정내용</td>
				<td><textarea rows="5" cols="50" name="plan_text" placeholder="일정 상세내용을 입력해 주세요" required></textarea></td>
			</tr>
			<tr>
				<td>일정시작일</td>
				<td><input type="text" name="srt" value="${srt}" readonly>
				<input type="hidden" name="plan_st_date" value="${srt}">
				<input type="hidden" name="plan_yearMonth" value="${srt2}">
				<input type="hidden" name="plan_day" value="${srt3}"></td>
			</tr>
			<tr>
				<td>일정시작시간</td>
				<td><input type="datetime" name="plan_st_time" placeholder="  --  :  --  :  --  " required ></td>
			</tr>
			<tr>
				<td>일정마감시간</td>
				<td><input type="datetime" name="plan_end_time"  placeholder="  --  :  --  :  --  " required></td>
			</tr>
			<tr>
				<td colspan=2><input type="submit" value="일정등록"></td>
			</tr>
		</table>
	</form>
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