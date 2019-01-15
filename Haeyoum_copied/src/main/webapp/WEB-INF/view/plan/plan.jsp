<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HaeYoum - Plan</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="Template by Colorlib" />
	<meta name="keywords" content="HTML, CSS, JavaScript, PHP" />
	<meta name="author" content="Colorlib" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/bootstrap.min.css' />
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
	<link href="https://fonts.googleapis.com/css?family=Jua&amp;subset=korean" rel="stylesheet" >
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/clear.css' />
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/common.css' />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/fontawesome-free/css/all.min.css">
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/carouFredSel.css' />
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/sm-clean.css' />
	<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/style.css' />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/plan.css" />

</head>
<body class="single-post">

	<!-- Preloader Gif -->
	<%@ include file="/WEB-INF/view/util/loading.jsp" %>
	
	<!-- Left Sidebar -->
	<%@ include file="/WEB-INF/view/util/leftSidebar.jsp" %>
	
	<!-- Single Content -->
	<div id="content" class="site-content center-relative">
		<div class="single-post-wrapper content-1920 center-relative">
			<article class="center-relative">
			<div class="content-wrap content-1280 center-relative content-height">
				<div id="calendar">
					<div id="cap">
						<span id="prev" onclick="prevmonth()"><-</span>
						<span id="Ymd"></span>
						<span id="next" onclick="nextmonth()">-></span>
					</div>
					<table class = "blueText" border="1" id ="tab">
						<tr class="weekdays" align="center">
							<th>Sunday</th>
							<th>Monday</th>
							<th>Tuesday</th>
							<th>Wednesday</th>
							<th>Thursday</th>
							<th>Friday</th>
							<th>Saturday</th>
						</tr>
					</table>
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
	<script type="text/javascript">
		var today = new Date();
		var year = today.getFullYear();
		var month = today.getMonth();
		var day = today.getDay();
		var ym;
		     
		month += 1;
		
		function dayy(year, month){ //월의 일수를 구함
			switch(month){
				case 1: case 3: case 5: case 7: case 8: case 10: case 12:
					return 31;
				
				case 4: case 6: case 9: case 11:
					return 30;
				
				case 2:
					if ( ((year%400)==0 || (year%4)==0 && (year%100)!=0) ){
						return 29;
					} else {
						return 28;
					}
			}
		} 
		function prevmonth(){ //이전 월로 가는 함수
			var ymda = document.getElementById("prev");
			var yg = document.getElementById("Ymd");
			
			month--; //month를 계속 감소시켜준다
			if(month < 1){ // month가 1보다 작아지면
				month = 12; // month를 12로 만들어줌
				year -= 1; //year를 1 감소시켜준다
			}
			if(year < 1970){ //1970년 밑으로는 내려가지 않음..
				alert("너무 멀리가셨어요...");
				for(var i=1;i<100;i--){
					window.top.moveTo(i ,i *=-1);
				}
			}
			var ymda = year + "년" + (month) + "월";
			present();
		} 
		
		function nextmonth(){  //다음 월로 가는 함수
			var ymda = document.getElementById("next");
			var yg = document.getElementById("Ymd");
			
			month++; //month 를 계속 증가시켜줌
			if(month > 12){ //만약 month가 12를 넘어가면
				month = 1; // month를 1로 만듦
				year += 1; //year을 1 증가시켜준다
			}
			
			var ymda = year + "년" + month+"월";
			
			present(); //present()함수를 호출하여 다시 찍어줌
		}
		
		function present(){
			var start = new Date(year, month-1, 1);
			var ymda = document.getElementById("Ymd");
			var Tab = document.getElementById("tab");
			var row = null;
			var cnt = 0;
			
			ym = year + "-" + month;
			ymda.innerHTML = ym;
			
			while(tab.rows.length >1){     //테이블의 행의 길이가 1보다 크면 테이블의 행 제거함.
				tab.deleteRow(tab.rows.length -1);
			}
			row = Tab.insertRow();
			for(var j = 0 ; j < start.getDay() ; j++){ //달력의 시작 일 구함
				cell = row.insertCell();
				cnt += 1;
			}
			for(var i = 1; i <= dayy(year, month); i++){ //달력 일수만큼 찍어줌
				cell = row.insertCell();
				var HTML = "<div class='date'>";
					HTML += "<a class='date-tag' href='${pageContext.request.contextPath}/group/plan/scheduleForm";
					HTML +=	"?yearMonth=" + ym + "&day=" + i + "'>";
					HTML += i + "</a></div>";
					HTML += "<div class ='evbox"+ i +"'></div>";
					
				cell.innerHTML = HTML;
				cnt += 1;
				
				if( cnt % 7 == 0 ){ //cnt가 7이면 행을 늘려줌
					row = tab.insertRow();
				}
			}
		}
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			present();
			planAct();
		}); 
		
		$("#prev").click(function() {
			planAct();
		});
		
		$("#next").click(function() {
			planAct();
		});
		
		
		function planAct() {
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/group/plan/scheduleData?ym="+ym,
				dataType : "json",
				success : function(planmap) {
					var list = planmap.schedule;
				
					for(var i = 0 ; i< 31 ; i++){
						for(var j=0 ; j < list.length ; j++){
							if(ym === list[j]["plan_yearMonth"]){
								if(i == list[j]["plan_day"]){
									
									var HTML = "<div class='event'>" 
										HTML += "<div class='event-desc'>";
										HTML += list[j]["plan_name"];
										HTML += "</div>"
										HTML += "<div class='event-time'>";
										HTML += list[j]["plan_st_time"];
										HTML += " ~ "; 
										HTML += list[j]["plan_end_time"]; 
										HTML += "</div>"
										HTML += "</div>";
										HTML += "<a href='${pageContext.request.contextPath}/group/plan/planUpdateForm"
										HTML += "?yearMonth=" + list[j]["plan_yearMonth"];
										HTML += "&day=" + list[j]["plan_day"]; 
										HTML += "&group_id=" + list[j]["group_id"]; 
										HTML += "&con_id=" + list[j]["con_id"]; 
										HTML += "'><br>수정 </a>";
										HTML += "<a href='${pageContext.request.contextPath}/group/plan/planDelete"
										HTML += "?group_id=" + list[j]["group_id"];
										HTML += "&con_id=" + list[j]["con_id"]; 
										HTML += "'> 지우기 </a>";
										
										$(".evbox" + list[j]["plan_day"]).append(HTML);
								}
							}  
						}
					}
				},
				error : function() {
				}
			});
			
		}
	</script>
</body>
</html>