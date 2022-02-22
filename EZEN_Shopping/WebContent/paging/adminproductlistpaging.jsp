<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#paging{font-size:110%;width:50%; margin:0 auto; text-align: center; margin-top: 15px;}
</style>
</head>
<body>
<div id="paging">
	<!-- 1~10까지 있는 페이지의 페이징 -->
	<c:url var="action" value="ezen.do?command=admin_product_list"/>
	<c:if test="${param.prev }">
		<a href="${action }&page=${param.beginPage-1}">◀</a>
	</c:if>
	<c:forEach begin="${param.beginPage }" end="${param.endPage}" step="1" var="index">
		<c:choose>
			<c:when test="${param.page==index}">
				 <span style="color: green;">${index}</span>
			</c:when>
			<c:otherwise>
				<a href="${action }&page=${index}">${index}</a>
			</c:otherwise>	 
		</c:choose>
	</c:forEach>
	<c:if test="${param.next }">
		<a href="${action}&page=${param.endPage+1}">▶</a>
	</c:if>
</div>
</body>
</html>