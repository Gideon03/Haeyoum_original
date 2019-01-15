<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사진 수정 페이지</title>
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

	<form action="${pageContext.request.contextPath}/group/photo/photoModify" method="post" enctype="multipart/form-data">
		<input type = "hidden" value="${photoView.con_id}" name = "con_id" >
			<div>
				제목 : <input name="photo_name" type="text" value="${photoView.photo_name}" required="required"/>
			</div>
			
			<div>
       			변경할 파일 : <input type="file" name="files" multiple required="required"/>
			</div>
			
			<div>
        		내용 : <input name="photo_text" size="20" value="${photoView.photo_text}" />
			</div>
			
			<input type = "hidden" value="" name ="map_latitude" id="pointLat" >
			<input type = "hidden" value="" name ="map_longitude" id="pointLng" >
	
			<div id="map" style="width:600px;height:350px;"></div>
				
				<p><em>지도를 클릭해주세요!</em></p> 

			<div id="clickLatlng"></div>
			
			<button class="login100-form-btn" type="submit" name="submit" style="margin-right: 10px;" value="수정">수정</button>

			<button class="login100-form-btn" type="button" name="Cancellation" style="margin-right: 10px;" value="추가"
			onclick="location.href='${pageContext.request.contextPath}/group/photo/photoList'">취소</button>			

	</form>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=721b6039e42d472fbe8dcfc70d4107c9"></script>

<script>
	var pointLat1;
	var pointLng1;
	var pointLat;
	var pointLng;

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
  	  mapOption = { 
  	      center: new daum.maps.LatLng(${photoView.map_latitude}, ${photoView.map_longitude}), // 지도의 중심좌표
 	       level: 3 // 지도의 확대 레벨
 	   };

	var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	// 지도를 클릭한 위치에 표출할 마커입니다
	var marker = new daum.maps.Marker({ 
		// 지도 중심좌표에 마커를 생성합니다 
    	position: map.getCenter() 
	});
	
	// 지도에 마커를 표시합니다
	marker.setMap(map);


	// 지도에 클릭 이벤트를 등록합니다


	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    
    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
    message += '경도는 ' + latlng.getLng() + ' 입니다';
    
    var pointLat1 = latlng.getLat();
    var pointLng1 = latlng.getLng();
    console.log("맵"+pointLat1);
    console.log("맵"+pointLng1);
 
    var resultDiv = document.getElementById('clickLatlng'); 
    resultDiv.innerHTML = message;
    
    document.getElementById('pointLat').value = pointLat1;
    document.getElementById('pointLng').value = pointLng1;
    
    $("#submit").click(function() {
    	if(document.getElementById('pointLat').value===""){
    		document.getElementById('pointLat').value = "${photoView.map_latitude}";
    		document.getElementById('pointLng').value = "${photoView.map_longitude}";
    	    }
    	console.log("데이터확인"+pointLat1);
        console.log("데이터확인2"+pointLng1);
    	
    }); 
});

</script>

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