<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동영상 등록</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="Template by Colorlib" />
	<meta name="keywords" content="HTML, CSS, JavaScript, PHP" />
	<meta name="author" content="Colorlib" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/bootstrap.min.css' />
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
	<link href="https://fonts.googleapis.com/css?family=Jua&amp;subset=korean" rel="stylesheet" >
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" />
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/clear.css' />
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/common.css' />
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

	<a href="${pageContext.request.contextPath}/group/video/videoList">동영상 리스트</a>
	
	<h2>동영상 등록해윰</h2>

		<form action="${pageContext.request.contextPath}/group/video/videoAdd" method="post" enctype="multipart/form-data" >
			<input type = "hidden" value="103" name = "sort_id" >
			<input type = "hidden" value="" name ="map_latitude" id="pointLat" >
			<input type = "hidden" value="" name ="map_longitude" id="pointLng" >
			<input type = "hidden" value="" name ="currentLat" id="currentLat" >
			<input type = "hidden" value="" name ="currentLng" id="currentLng" >

			<div>
				제목: <input id="video_name" name="video_name" type="text" placeholder="제목을 입력해주세요" required="required"/>
    		</div>

			<div>
				동영상 파일 등록 <input name="file" type="file" required="required"/>
			</div>
			
			<div>
				내용: <input name="video_text" size="300" placeholder="내용을 입력해주세요" />
			</div>
			
			<div id="map" style="width:100%;height:350px;"></div>

			<p><em>지도를 클릭해주세요!</em></p>

			<div id="clickLatlng"></div>

   			<div style="width:650px; text-align: center;">
        		
        		<button id="submit" class="login100-form-btn" type="submit" name="submit" style="margin-right: 10px;" value="등록">등록</button>
				
				<button class="login100-form-btn" type="button" name="Cancellation" style="margin-right: 10px;" value="추가"
				onclick="location.href='${pageContext.request.contextPath}/group/video/videoList'">취소</button>
			
			</div>
    		
		</form>
		
</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=721b6039e42d472fbe8dcfc70d4107c9"></script>
<script>
		var pointLat1;
		var pointLng1;
		var pointLat;
		var pointLng;
		var lat;
		var lon;
		
		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {
		    
		    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		    navigator.geolocation.getCurrentPosition(function(position) {
		        
		    	lat = position.coords.latitude;
		    	lon = position.coords.longitude;
		    	
		    	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapOption = { 
	        center: new daum.maps.LatLng(lat, lon), // 지도의 중심좌표
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
		    
		    	pointLat1 = latlng.getLat();
		    	pointLng1 = latlng.getLng();
		    
		    	console.log("맵"+pointLat1);
		    	console.log("맵"+pointLng1);
		 
		    	var resultDiv = document.getElementById('clickLatlng'); 
		    	resultDiv.innerHTML = message;
		    
		    	document.getElementById('pointLat').value = pointLat1;
		    	document.getElementById('pointLng').value = pointLng1;
		    
				});

				$("#submit").click(function() {
					if(document.getElementById('pointLat').value===""){
					document.getElementById('pointLat').value = lat;
					document.getElementById('pointLng').value = lon;
			 	   }
					console.log("데이터확인"+pointLat1);
		  			console.log("데이터확인2"+pointLng1);
					}); 
		      });
		    
		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
		
				lat = 33.450701; // 위도
           		lon = 126.570667; // 경도
        
           		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapOption = { 
	        center: new daum.maps.LatLng(lat, lon), // 지도의 중심좌표
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
            
            	pointLat1 = latlng.getLat();
            	pointLng1 = latlng.getLng();
            
            	console.log("맵"+pointLat1);
            	console.log("맵"+pointLng1);
         
            	var resultDiv = document.getElementById('clickLatlng'); 
            	resultDiv.innerHTML = message;
            
            	document.getElementById('pointLat').value = pointLat1;
            	document.getElementById('pointLng').value = pointLng1;
            
        		});

        		$("#submit").click(function() {
        			if(document.getElementById('pointLat').value===""){
        			document.getElementById('pointLat').value = lat;
        			document.getElementById('pointLng').value = lon;
        	 	   }
        			console.log("데이터확인"+pointLat1);
          			console.log("데이터확인2"+pointLng1);
        			}); 
		}
		
	</script>
	
<script type="text/javascript">
	$("#video_name").change(function(){	
		if ($.trim("#video_name").val() !== $("#video_name").val()){
			alert("제목을 입력해주세요~");
		}
	})
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