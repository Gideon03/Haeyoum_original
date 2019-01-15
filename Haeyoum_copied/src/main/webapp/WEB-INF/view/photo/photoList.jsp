<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>사진 리스트</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Template by Colorlib" />
        <meta name="keywords" content="HTML, CSS, JavaScript, PHP" />
        <meta name="author" content="Colorlib" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		
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
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/video.css' />
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b0af252de09ca37d7e5b0e664d7dc4a2"></script>
		
</head>

<body class="single-post" >

   <!-- Preloader Gif -->
   <%@ include file="/WEB-INF/view/util/loading.jsp" %>

   <!-- Left Sidebar -->
   <%@ include file="/WEB-INF/view/util/leftSidebar.jsp" %>

   <!-- Single Content -->
   <div id="content" class="site-content center-relative">
   <div class="single-post-wrapper content-1920 center-relative" >
   <article class="center-relative" >
   <!-- 아티클 안에 내용작성하시면 됩니다 아래의 내용은 영역비율을 보기위한 샘플입니다. -->

<div class="blog-holder center-relative">

	<h2>사진 리스트</h2>
	<button class="login100-form-btn" type="button" name="AddForm" style="margin-right: 10px;" value="추가" onclick="location.href='${pageContext.request.contextPath}/group/photo/photoAdd'">++사진등록</button>
	
	<c:forEach var="photo" items="${list}">
	
		<c:if test="${photo.group_id == user.group_id}">
    		<table border="1" width="600px">
    	
  				<tr>
    				<th width="50px">제목:</th>
     				<th width="120px">${photo.photo_name}</th> 
  	  	  			<th width="70px">작성자:</th>
        			<th width="80px">${photo.photo_writer}</th>
        			<th width="60px">수정일</th>
        			<th width="170px">${photo.regDate}</th>
    			</tr>
    		
    			<tr>
    				<th>내용 :</th>
    				<th colspan="5">${photo.photo_text}</th>
    			</tr>
    		
   				<tr>
    				<th colspan="6">
						<div class="post-full-width">
                	      <div class="image-slider-wrapper">
                    	    <div class="caroufredsel_wrapper">
                        	  <ul id="slider${photo.con_id}" class="image-slider slides center-text">
                            	 <c:forEach var="filelist" items="${filelist}">
    								<c:if test="${filelist.con_id == photo.con_id}">
    									<li><img src="${pageContext.request.contextPath}/resources/photoimg/${filelist.photo_file}" width="600px" height="500px"/></li>
									</c:if>
								</c:forEach>
    	   					  </ul>
                    		</div>
                   	   	  </div>
                	 	<div class="clear"></div>
                	  </div>
			    	</th>
 		   		</tr>
 		   
  		   		<tr>
					<th colspan="6">
						<div id="map${photo.con_id}" style="width:100%;height:350px;"></div>

<script>
	var mapContainer = document.getElementById('map${photo.con_id}'), // 지도를 표시할 div 
		mapOption = { 
        	center: new daum.maps.LatLng(${photo.map_latitude}, ${photo.map_longitude}), // 지도의 중심좌표
        	level: 3 // 지도의 확대 레벨
    	};

	var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	// 마커가 표시될 위치입니다 
	var markerPosition  = new daum.maps.LatLng(${photo.map_latitude}, ${photo.map_longitude}); 

	// 마커를 생성합니다
	var marker = new daum.maps.Marker({
	    position: markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
</script>
	    		</th>
	   		 </tr>
   		</table>
   	
			<c:if test="${photo.photo_writer == user.member_id}">
			
				<a href="${pageContext.request.contextPath}/group/photo/photoModify?sort_id=${photo.sort_id}&con_id=${photo.con_id}">[수정]</a>
				<a href="${pageContext.request.contextPath}/group/photo/photoDelete?sort_id=${photo.sort_id}&con_id=${photo.con_id}">[삭제]</a>
   			
   			</c:if>
   			
   			<p>&nbsp;</p>
   			
	</c:if>
</c:forEach>

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
