<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/board.css' />" >
<script src="<c:url value="/resources/script/board.js" />"></script>
</head>
<body>
<div id="wrap" align="center">
	<h1>게시글 수정</h1>
	<form name="frm" method="post" action="board_update">
	<input type="hidden" name="num" value="${board.num}">
	<table>
		<tr><th>작성자</th><td>
			<input type="text" value="${loginUser.name}" size="12" name="name"></td></tr>
		<tr><th>비밀번호</th><td><input type="password" name="pass" size="12">
			* 필수 (게시물 수정 삭제시 필요합니다.)</td></tr>
		<tr><th>이메일</th><td>
			<input type="text" value="${board.email}" size="12" name="email"></td></tr>
		<tr><th>제목</th><td>
			<input type="text" value="${board.title}" size="12" name="title"></td></tr>
		<tr><th>내용</th><td><textarea cols="70" rows="15" 
			name="content">${board.content}</textarea></td></tr>
	</table><br>
	<input type="submit" value="수정" onclick="return boardCheck()">
	<input type="button" value="목록" onclick="location.href='main'">
	</form>
</div>
</body>
</html>