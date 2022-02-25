<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
if (window.name == "delete") {
	alert('삭제되었습니다.');
	window.opener.location.href = "board_delete?num=${num}";
}else if(window.name == "update") {
	window.opener.location.href = "board_update_form?num=${num}";
}
self.close();
</script>



</body>
</html>