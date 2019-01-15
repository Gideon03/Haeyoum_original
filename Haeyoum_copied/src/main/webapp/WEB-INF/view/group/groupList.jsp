<%@ page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
    <head>
        <title>HaeYoum - Social Project</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Template by Colorlib" />
        <meta name="keywords" content="HTML, CSS, JavaScript, PHP" />
        <meta name="author" content="Colorlib" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		
		<link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/bootstrap.min.css' />
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" />
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CLibre+Baskerville:400,400italic,700' rel='stylesheet' type='${pageContext.request.contextPath}/resources/text/css'>
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/clear.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/common.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/carouFredSel.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/sm-clean.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/style.css' />
        
    </head>

    <body class="home blog" >

        <!-- Preloader Gif -->
        <%@ include file="/WEB-INF/view/util/loading.jsp" %>

        <!-- Left Sidebar -->
        <%@ include file="/WEB-INF/view/util/leftSidebar.jsp" %>

        <!-- Home Content -->
        <div id="content" class="site-content">
            <div id="blog-wrapper">
                <div id="gl" class="blog-holder center-relative">
                    <article class="featured-post">
                        <div class="entry-content relative">
							<strong class="blog-holder-title">그룹리스트</strong>
							<div class="clear"></div>
                        </div>
                    </article>

					<article class="blog-item-holder">
                        <div class="entry-content relative">
                            <div class="group-maker center-relative">
                            	<div class="group-btn">
                                	<button type="button" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/group/regist'" style="margin-right: 20px;" >
                                		<b>그룹생성</b>
                                	</button>
                                	<button type="button" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/group/inviteCode'">
                                		<b>초대코드</b>
                                	</button>
                                <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                    </article>
					<c:forEach var="group" items="${groupList}">
	                    <article class="blog-item-holder">
	                        <div class="entry-content relative">
	                            <div class="group-card center-relative">
	                                <h2 class="entry-title">
	                                    <a href="${pageContext.request.contextPath}/group/room?group_id=${group.group_id}">
	                                    ${group.group_name}
	                                    </a>
	                                </h2>
	                                <div class="clear"></div>
	                            </div>
	                        </div>
	                    </article>
                    </c:forEach>
                </div>
                
                <div class="clear"></div>
                
            </div>

            <div class="featured-image-holder">
                <div class="featured-post-image" style="background-image: url(${pageContext.request.contextPath}/resources/images/main_img.png)"></div>
            </div>
            <div class="clear"></div>
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
		var isEnd = false;
		
        $(window).scroll(function() {
        	var $window = $(this);
            var scrollTop = $window.scrollTop();
            var windowHeight = $window.height();
            var documentHeight = $(document).height();
           
            console.log("----------------------------------------------------------------------------");
           
            if( scrollTop + windowHeight + 30 > documentHeight ){
            	
               	fatchList();
            	console.log("call scroll~!");
            }
		});
		
		var stPage = 1;
		function fatchList() {
			if( isEnd ){
				return;
			}
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/group/groupList/" + stPage,
				dataType : "json",
				success : function(groupList) {
					
					if(groupList.list.length < 11){
						isEnd = true;
					}
					
					$.each(groupList.list, function(index, group){

					var html = '<article class="blog-item-holder"><div class="entry-content relative"><div class="group-card center-relative"><h2 class="entry-title">'
                		 + '<a href="${pageContext.request.contextPath}/group/room?group_id=' 
                		 + group.group_id 
                		 + '">'
                		 + group.group_name
                		 + '</a></h2><div class="clear"></div></div></div></article>'
					
						$("#gl").append(html);
					});
					stPage++;
					
				},
				error : function() {
					console.log("오류");
				}
			});
		}
		</script>
    </body>
</html>
