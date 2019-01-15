<%@page import="com.haeyoum.member.model.LoginUser"%>
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
        <link href="https://fonts.googleapis.com/css?family=Jua&amp;subset=korean" rel="stylesheet" >
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/clear.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/common.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/carouFredSel.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/sm-clean.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/style.css' />
        <link rel="stylesheet" type="text/css"  href='${pageContext.request.contextPath}/resources/css/chat.css' />
        
        <!-- Web Socket JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>

        <!--[if lt IE 9]>
                <script src="js/html5.js"></script>
        <![endif]-->

    </head>


    <body class="single-post">

	<c:set var="user_id" value="${user.member_id}"/>
        <!-- Preloader Gif -->
        <%@ include file="/WEB-INF/view/util/loading.jsp" %>

        <!-- Left Sidebar -->
        <%@ include file="/WEB-INF/view/util/leftSidebar.jsp" %>

        <!-- Single Content -->
        <div id="content" class="site-content center-relative">
            <div class="single-post-wrapper content-1070 center-relative">

                <article class="center-relative">
                    
                    <!-- 아티클 안에 내용작성하시면 됩니다 아래의 내용은 영역비율을 보기위한 샘플입니다. -->
                        <div class="content-wrap content-660 center-relative ">
                            
                            <div class="chat-container chat-clearfix">
							   
							    <div class="chat-">
							      <div class="chat-header chat-clearfix">
							        <div class="chat-about">
							          <div class="chat-with">${group.group_name}</div>
							        </div>
							      </div> <!-- end chat-header -->
							      
							      <div id="chat-history" class="chat-history">
							        <ul id="chatdata">
							        	 <!-- append chat message -->
							        	 <c:forEach var="msgList" items="${msgList}">
							        	 	<c:if test="${user.member_id == msgList.member_id}" var="result">
								        	 	<li class="chat-clearfix">
									        	 	<div class="chat-message-data chat-align-right">
										        	 	<span class="chat-message-data-time">${msgList.message_senddate}</span> &nbsp; &nbsp;
										        	 	<span class="chat-message-data-name"><strong>${msgList.member_id}</strong>&nbsp;</span>
										        	 	<i class="fa fa-circle chat-me"></i>
									        	 	</div>
									        	 	<div class="chat-message chat-my-message chat-float-right">
									        	 	${msgList.message_text}
									        	 	</div>
								        	 	</li>
							        	 	</c:if>
							        	 	<c:if test="${not result}">
							        	 		<li>
							        	 			<div class="chat-message-data">
							        	 				<i class="fa fa-circle chat-other"></i>
							        	 				<span class="chat-message-data-name"><strong>${msgList.member_id}</strong></span>
							        	 				<span class="chat-message-data-time">${msgList.message_senddate}</span>
							        	 			</div>
							        	 			<div class="chat-message chat-other-message">
							        	 			${msgList.message_text}
							        	 			</div>
							        	 		</li>
							        	 	</c:if>
							        	 </c:forEach>
							        </ul>
							      </div> <!-- end chat-history -->
							      
							      <div class="chat-message chat-clearfix">
							        <textarea id="message" class="chat-textarea" placeholder ="Type your message" rows="3" required="required"></textarea>
							        
							        <button id="sendBtn" class="chat-button">Send</button>
							
							      </div> <!-- end chat-message -->
							      
							    </div> <!-- end chat -->
							    
							  </div> <!-- end container -->
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
        
        <!--Web Socket JavaScript-->
		<script type="text/javascript">
			$(document).ready(function() {
				
				updateScroll();
				
				$("#sendBtn").click(function(key) {
					// 정규식 공백제거
					var textarea = $('#message').val().replace(/\r\n|(^\s*)|(\s*$)|　/gi, '');
					
					if(!textarea == ''){
						sendMessage();
						$('#message').val('');
						$('#message').focus();
					}else{
						alert("입력한 내용이 없습니다.");
						$('#message').val('');
						$('#message').focus();
					}
				});
		
				$("#message").keydown(function(key) {
					var textarea = $('#message').val().replace(/\r\n|(^\s*)|(\s*$)|　/gi, '');
					// 엔터키 입력 감지
					if (key.keyCode == 13) {
						if(!textarea == ''){
							sendMessage();
							$('#message').val('');
							$('#message').focus();
						}else{
							alert("입력한 내용이 없습니다.");
							$('#message').val('');
							$('#message').focus();
						}
					}
				});
				
			});
			// 스크롤바 밑으로 내리기
			function updateScroll(){
				$('#chat-history').scrollTop($('#chat-history')[0].scrollHeight);
			}
			
			// 세션에서 로그인한 유저값 가져오기
			<%LoginUser user = (LoginUser)session.getAttribute("user");%>
			var member_id = '<%=user.getMember_id()%>';
			
			// 웹소켓을 지정한 url로 연결한다.
			let sock = new SockJS('<c:url value='/echo'/>');
			sock.onmessage = onMessage;
			sock.onclose = onClose;
		
			// 메시지 전송
			function sendMessage() {
				sock.send($("#message").val());
			}
		
			// 서버로부터 메시지를 받았을 때
			function onMessage(msg) {
				
				// 메시지를 보낸 유저값 가져오기
				var data = msg.data;
				var strArray = data.split('|');
				
				var session_id = strArray[0];
				var msg = strArray[1];
				var msgDate = strArray[2];
				
				if(member_id == session_id){
					var HTML = '<li class="chat-clearfix">';
					HTML += '<div class="chat-message-data chat-align-right">';
					HTML += '<span class="chat-message-data-time" >' + msgDate + '</span> &nbsp; &nbsp;';
					HTML += '<span class="chat-message-data-name" ><strong>' + session_id + '</strong>&nbsp;</span><i class="fa fa-circle chat-me"></i></div>';
					HTML += '<div class="chat-message chat-my-message chat-float-right">';
					HTML += msg;
					HTML += '</div></li>';
					
					$("#chatdata").append(HTML);
					updateScroll();
				
				} else {
					var HTML = '<li><div class="chat-message-data">';
					HTML += '<i class="fa fa-circle chat-other"></i>';
					HTML += '<span class="chat-message-data-name"><strong>' + session_id + '</strong></span>';
					HTML += '<span class="chat-message-data-time">' + msgDate + '</span></div>';
					HTML += '<div class="chat-message chat-other-message">';
					HTML += msg;
					HTML += '</div></li>';
					
					$("#chatdata").append(HTML);
					updateScroll();
				}
			}
		
			// 서버와 연결을 끊었을 때
			function onClose(evt) {
			}
			
		</script>
    </body>
</html>