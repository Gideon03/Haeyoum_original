<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check</title>
</head>
<body>
	<c:if test="${regist == 1}">
		<script type="text/javascript">
			alert("회원가입 성공");
			location.href = "${pageContext.request.contextPath}/member/login";
		</script>
	</c:if>
	<c:if test="${regist == 0}">
		<script type="text/javascript">
			alert("회원가입 실패");
			location.href = "${pageContext.request.contextPath}/";
		</script>
	</c:if>
	<c:if test="${update == 1 }">
		<script type="text/javascript">
			alert("정보수정 성공");
			location.href = "${pageContext.request.contextPath}/member/mypage";
		</script>
	</c:if>
	<c:if test="${update == 0 }">
		<script type="text/javascript">
			alert("정보수정 실패");
			location.href = "${pageContext.request.contextPath}/member/login";
		</script>
	</c:if>
</body>
</html>