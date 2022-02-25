<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/board.css' />" >
</head>
<body>
<div id="wrap" align="center">
	<h1>게시글 리스트</h1>
	<table class="list">
		<tr><td colspan="5" style="border: white; text-align: right">
			<div style="float:left;">${loginUser.name}님 로그인 
				<input type="button" value="정보수정" onClick="location.href='member_edit_form'"/>
				<input type="button" value="로그아웃"	onClick="location.href='logout'">
			</div>
			<div style="float:right;"><a href="boardwrite_form">게시글 등록</a></div>	</td>
		</tr>
		<tr><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th>	<th>조회</th></tr>
		<c:forEach var="board" items="${boardList}">
			<tr class="record">	<td align="center">${board.num }</td>
				<td><a href="boardview?num=${board.num}">	${board.title}</a></td>
				<td align="center">${board.name}</td>
				<td align="center"><fmt:formatDate value="${board.writedate }" /></td>
				<td align="center">${board.readcount}</td>
			</tr>
		</c:forEach>
	</table>
	
	
	<jsp:include page="/resources/paging/paging.jsp">
	    <jsp:param value="${paging.page}" name="page"/>
	    <jsp:param value="${paging.beginPage}" name="beginPage"/>
	    <jsp:param value="${paging.endPage}" name="endPage"/>
	    <jsp:param value="${paging.prev}" name="prev"/>
	    <jsp:param value="${paging.next}" name="next"/>
	</jsp:include>
	
	
	
	
</div>
</body>
</html>