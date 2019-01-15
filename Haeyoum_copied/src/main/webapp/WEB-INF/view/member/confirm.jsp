<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그확인</title>
</head>
<body>

	<c:if test="${empty user or not user.login}">
		<script type="text/javascript">
			alert("로그아웃 성공");
			location.href = "${pageContext.request.contextPath}/";
		</script>
	</c:if>
	<c:if test="${not empty user and user.login}">
		<script type="text/javascript">
			alert("로그인 성공");
			location.href = "${pageContext.request.contextPath}/group/groupList"; 
		</script>
	</c:if>
	
</body>
</html>