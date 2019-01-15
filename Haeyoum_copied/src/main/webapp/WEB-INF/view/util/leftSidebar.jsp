<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="sidebar" class="sidebar">
    <div class="menu-left-part">
        <div class="site-info-holder">
            <div class="site-logo">
	            <a href="${pageContext.request.contextPath}/">
	                <img class="site-logoimage" src="${pageContext.request.contextPath}/resources/images/titlelogo.png" alt="해윰">
	            </a>
        	</div>
            <p class="site-description">
                소셜 웹 어플리케이션<br>
                프로젝트 '해윰'
            </p>
        </div>
        <nav id="header-main-menu">
            <ul class="main-menu sm sm-clean">
                <c:if test="${empty user or not user.login}">
	                <li><a href="${pageContext.request.contextPath}/member/regist" >회원가입</a></li>
	                <li><a href="${pageContext.request.contextPath}/member/login">로그인</a></li>
                </c:if>
                <c:if test="${not empty user and user.login}">
	                <li><a href="${pageContext.request.contextPath}/member/mypage">회원정보</a></li>
	                <li><a href="${pageContext.request.contextPath}/group/groupList" >해윰리스트</a></li>
	                <li><a href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
                </c:if>
            </ul>
        </nav>
        <footer>
            <div class="footer-info">
                © 2018 SUPPABLOG HTML TEMPLATE. <br> CRAFTED WITH <i class="fa fa-heart"></i> BY <a href="https://colorlib.com">COLORLIB</a>.
            </div>
        </footer>
    </div>
    <div class="menu-right-part">
        <div class="toggle-holder">
            <div id="toggle">
                <div class="menu-line"></div>
            </div>
        </div>
        <c:if test="${empty user or not user.login}">
		    <div class="social-holder">
			    <div class="social-list">
				    <a href="${pageContext.request.contextPath}/member/regist"><i class="far fa-id-card fa-lg"></i></a>
				    <a href="${pageContext.request.contextPath}/member/login"><i class="fas fa-power-off fa-lg"></i></a>
				</div>
			</div>
        </c:if>
        <c:if test="${not empty user and user.login and user.group_id == 0}">
			<div class="social-holder">
			    <div class="social-list">
				    <a href="${pageContext.request.contextPath}/member/mypage"><i class="fas fa-user fa-lg"></i></a>
				    <a href="${pageContext.request.contextPath}/group/groupList"><i class="fas fa-th-list fa-lg"></i></a>
				    <a href="${pageContext.request.contextPath}/member/logout"><i class="fas fa-power-off fa-lg"></i></a>
				</div>
			</div>
		</c:if>
        
        <c:if test="${not empty user and user.login and user.group_id != 0}">
	        <div class="logo-holder">
	            <a href="${pageContext.request.contextPath}/group/room?group_id=${user.group_id}">
	                <img src="${pageContext.request.contextPath}/resources/images/logo.png" >
	            </a>
	        </div>
	        <div class="social-holder">
	            <div class="social-list">
	                <a href="${pageContext.request.contextPath}/group/chat"><i class="fas fa-comment-alt fa-lg"></i></a>
	                <a href="${pageContext.request.contextPath}/group/note/noteList"><i class="fas fa-sticky-note fa-lg"></i></a>
	                <a href="${pageContext.request.contextPath}/group/photo/photoList"><i class="fas fa-camera fa-lg"></i></a>
	                <a href="${pageContext.request.contextPath}/group/video/videoList"><i class="fas fa-video fa-lg"></i></a>
	                <a href="${pageContext.request.contextPath}/group/plan/planList"><i class="fas fa-calendar-alt fa-lg"></i></a>
	                <a href="${pageContext.request.contextPath}/group/vote/voteList"><i class="fas fa-vote-yea fa-lg"></i></a>
	                <a href="${pageContext.request.contextPath}/group/groupList"><i class="fas fa-reply fa-lg"></i></a>
	            </div>
	        </div>
        </c:if>
        <div class="fixed scroll-top"><i class="fa fa-caret-square-o-up" aria-hidden="true"></i></div>
    </div>
    <div class="clear"></div>
</div>