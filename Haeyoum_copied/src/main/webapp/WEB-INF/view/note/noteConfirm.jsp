<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노트 등록 확인</title>
</head>
<body>
	<c:if test="${not empty createResult}">
		<c:if test="${createResult}">
			<script type="text/javascript">
				alert("노트가 등록되었습니다^^");
				location.href = "${pageContext.request.contextPath}/group/note/noteList";
			</script>
		</c:if>
		<c:if test="${not createResult}">
			<script type="text/javascript">
				alert("노트등록에 실패하였습니다");
				location.href = "${pageContext.request.contextPath}/group/note/noteList";
			</script>
		</c:if>
	</c:if>
	<c:if test="${not empty updateResult}">
		<c:if test="${updateResult}">
			<script type="text/javascript">
				alert("노트가 수정되었습니다^^");
				location.href = "${pageContext.request.contextPath}/group/note/readNote?con_id=${con_id}";
			</script>
		</c:if>
		<c:if test="${not updateResult}">
			<script type="text/javascript">
				alert("노트수정에 실패하였습니다");
				location.href ="history.back()";
			</script>
		</c:if>
	</c:if>
	<c:if test="${not empty deleteResult}">
		<c:if test="${deleteResult}">
			<script type="text/javascript">
				alert("노트가 삭제되었습니다^^");
				location.href = "${pageContext.request.contextPath}/group/note/noteList";
			</script>
		</c:if>
		<c:if test="${not deleteResult}">
			<script type="text/javascript">
				alert("노트삭제 실패하였습니다");
				location.href = "history.back()";
			</script>
		</c:if>
	</c:if>
</html>
