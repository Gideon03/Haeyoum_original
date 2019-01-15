<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/bootstrap.min.css' />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/main.css">
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/clear.css' />
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/common.css' />
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/carouFredSel.css' />
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/css/sm-clean.css' />
    <link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath}/resources/style.css' />
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/vote.css">
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
            	<div class="entry-content relative">
                    <div class="content-1170 center-relative">
                        <p class="vote-title">${vote.vote.vote_name}</p>

	                        <input id="con_id" type="hidden" name="con_id" value="${vote.vote.con_id}">
	                        <table class="table-hover table-responsive vote-table">
	                        	<thead class="thead-light">
	                        	<tr>
	                        		<th class="entry-date vote-published text-center" >작성자 : ${vote.vote.vote_writer}</th>
	                        		<th class="entry-date vote-published text-center" >시작일 : ${vote.stDate}</th>
	                        		<th class="entry-date vote-published text-center" >종료일 : ${vote.endDate}</th>
	                        	</tr>
	                        	<tr>
									<td colspan="3">
	                        			<div class="center-relative" id="voteContainer" ></div>
	                        		</td>
	                        	</tr>
	                            
								<c:if test="${voteComplet == 1}" var="result">
									<c:forEach items="${vote.voteCon}" var="vote" varStatus="count">
										<c:if test="${voteUser.vote_list_id != vote.vote_list_id }" var="notVote">
											<tr>
												<td colspan="3">
													<div class="vote-radio">
														<input type="radio" name="vote_list_id" id="${vote.vote_list_id}" value="${vote.vote_list_id}" disabled>
														<label for="${vote.vote_list_id}">${vote.vote_list}</label>
													</div>
												</td>
											</tr>
										</c:if>
										<c:if test="${voteUser.vote_list_id == vote.vote_list_id }" var="notVote">
											<tr>
												<td colspan="3">
													<div class="vote-radio">
														<input type="radio" name="vote_list_id" id="${vote.vote_list_id}" value="${vote.vote_list_id}" checked="checked" disabled>
														<label for="${vote.vote_list_id}">${vote.vote_list}</label>
													</div>
												</td>
											</tr>
										</c:if>
									</c:forEach>
								</c:if>
								
								<c:if test="${not result}">
									<c:forEach items="${vote.voteCon}" var="vote" varStatus="count">
										<c:if test="${count.first}" var="one">
											<tr>
												<td colspan="3">
													<div class="vote-radio">
														<input type="radio" name="vote_list_id" id="${vote.vote_list_id}" value="${vote.vote_list_id}" checked="checked">
														<label for="${vote.vote_list_id}">${vote.vote_list}</label>
													</div>
												</td>
											</tr>
										</c:if>
										<c:if test="${not one}">
											<tr>
												<td colspan="3">
													<div class="vote-radio">
														<input type="radio" name="vote_list_id" id="${vote.vote_list_id}" value="${vote.vote_list_id}" >
														<label for="${vote.vote_list_id}">${vote.vote_list}</label>
													</div>
												</td>
											</tr>
										</c:if>
									</c:forEach>
								</c:if>
								
	                        </table>
                        
							<c:if test="${user.member_id == vote.vote.vote_writer}">
								<div class="txt1 text-right">
								<a href="${pageContext.request.contextPath}/group/vote/update?con_id=${vote.vote.con_id}">수정</a>
								 / 
								<a href="${pageContext.request.contextPath}/group/vote/delete?con_id=${vote.vote.con_id}">삭제</a>
								</div>
							</c:if>
							<div class="container-login300-form-btn">
								<button class="login300-form-btn" type="button">투표하기</button>
								<button class="login100-form-btn" type="button" onclick="location.href='${pageContext.request.contextPath}/group/vote/voteList'">
									돌아가기
								</button>
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
	<script	src="${pageContext.request.contextPath}/resources/login/js/main.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
	    
		var obj = new Object();
		obj.con_id = $("input[name=con_id]").val();
		
		firstDraw();
		
		$(window).resize(function () {
			firstDraw();
		})
		
		function firstDraw() {
			$.ajax({
				type : "post",
				url : "${pageContext.request.contextPath}/group/vote/voteContent/",
				data : obj,
				dataType : "json",
				success : function(voteResult) {
					
					google.charts.load("current", {packages:["corechart"]});
			    	google.charts.setOnLoadCallback(drawChart);
				   
			    	function drawChart() {
				    	
						var data = new google.visualization.DataTable();
						data.addColumn('string', '투표항목');
						data.addColumn('number', '득표수');
						
						$.each(voteResult.voteList, function(index, voteContent){
							data.addRow([voteContent.vote_list, voteContent.voteCount]);
						});
						
						var view = new google.visualization.DataView(data);
						
						var options = {
						  width: "100%",
						  height: 400,
						  chartArea:{left:"15%",right:"10%"},
						  bar: {groupWidth: "80%",right:"10%"},
						  legend: "none",
						  hAxis: {baseline: 'discrete', direction: 1, format: '#', minValue:0},
						  series: { // bar color
						  	0 : {color: "#44546a"}    
						  }
						}; 
						var chart = new google.visualization.BarChart(document.getElementById("voteContainer"));
						chart.draw(view, options);
				  	}
				},
				error : function() {
					console.log("오류");
					console.log($("#con_id").val());
				}
			});  
		}
		
		$(".login300-form-btn").click(function () {
			obj.vote_list_id = $("input:radio[name=vote_list_id]:checked").val();
			$.ajax({
				type : "post",
				url : "${pageContext.request.contextPath}/group/vote/voteResult",
				data : obj,
				dataType : "json",
				success : function(voteResult) {
					$("input[type=radio]").attr('disabled', true);
					if (voteResult.voteComplet == 1){
						
						alert("이미 투표했다!!");
					}
					if (voteResult.voteFail == 1){
						alert("투표 실패!!");
					}
					
					google.charts.load("current", {packages:["corechart"]});
			    	google.charts.setOnLoadCallback(drawChart);
				    
			    	function drawChart() {
				    	
						var data = new google.visualization.DataTable();
						data.addColumn('string', '투표항목');
						data.addColumn('number', '득표수');
						
						$.each(voteResult.voteList, function(index, voteContent){
							data.addRow([voteContent.vote_list, voteContent.voteCount]);
						});
						
						var view = new google.visualization.DataView(data);
						
						var options = {
						  width: "100%",
						  height: 400,
						  chartArea:{left:"15%",right:"10%"},
						  bar: {groupWidth: "80%",right:"10%"},
						  legend: "none",
						  hAxis: {baseline: 'discrete', direction: 1, format: '#', minValue:0},
						  series: { // bar color
						  	0 : {color: "#44546a"}    
						  }
						}; 
						var chart = new google.visualization.BarChart(document.getElementById("voteContainer"));
						chart.draw(view, options);
				  	}
					
				},
				error : function() {
					console.log("오류");
					console.log($("#con_id").val());
				}
			});
		})
		
	</script>
</body>
</html>
