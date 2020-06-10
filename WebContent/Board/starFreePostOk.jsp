<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
	<c:when test="${result == 0 }">
		<script>
			alert("추천 실패");
			history.back(); // 등록 실패 시 직전 페이지로 이동
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("추천 성공");
			location.href = "freePostView.po?post_uid=${param.post_uid}";
		</script>
	</c:otherwise>
</c:choose>