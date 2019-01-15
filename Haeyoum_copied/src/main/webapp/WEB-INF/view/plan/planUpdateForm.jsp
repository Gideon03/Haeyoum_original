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
                    
                    
	<form action="${pageContext.request.contextPath}/group/plan/planUpdateForm"
		method="post">
		<table>
			<tr>
				<td>일정이름</td>
				<td><input type="text" name="plan_name" placeholder="일정 제목" value="${plan.plan_name}" required></td>
			</tr>
			<tr>
				<td>일정내용</td>
				<td><textarea rows="5" cols="50" name="plan_text" required>${plan.plan_text}</textarea></td>
			</tr>
			<tr>
				<td>일정시작일</td>
				<td><input type="text" name="srt" value="${srt}" readonly>
				<input type="hidden" name="con_id" value="${con_id}">
				<input type="hidden" name="group_id" value="${group_id}"></td>
			</tr>
			<tr>
				<td>일정시작시간</td>
				<td><input type="datetime" name="plan_st_time" value="${plan.plan_st_time}" placeholder="  --  :  --  :  --  " required ></td>
			</tr>  
			<tr>
				<td>일정마감시간</td>
				<td><input type="datetime" name="plan_end_time" value="${plan.plan_end_time}" placeholder="  --  :  --  :  --  " required></td>
			</tr>
			<tr>
				<td colspan=2><input type="submit" value="일정수정"></td>
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