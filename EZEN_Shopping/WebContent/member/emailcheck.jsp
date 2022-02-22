<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	body{ font-family: Verdana;}
	#wrap{ margin: 0 60px; font-size:130%; font-weight:bold;}
	h1 {font-family:"Times New Roman", Times, serif; font-size: 45px;  color: #CCC; 
			font-weight: normal;}
</style>
<script type="text/javascript">


	function emailok(){
		//document.formm.email.value="reemail";
    	//window.opener.document.email.value
    	var email=document.getElementById("email").value;
    	opener.document.getElementById("email").value=email;
    	opener.document.getElementById("reemail").value=email;
        self.close();
    }
	

</script>
</head>
<body>
<div id="wrap">
<h1>Email 중복확인</h1>
<form method="post" name="formm" action="ezen.do?command=emailcheck_form">
	User Email <input type=text name="email" value="${email}" id="email">
	<input type=submit value="검색" class="submit"><br>
</form>
	<div style="margin-top: 20px">
		<c:if test="${result == 1}">
			<script type="text/javascript">
				opener.document.title.email.value="";
			</script>
			${email}는 이미 사용중인 아이디입니다.
		</c:if>
		<c:if test="${result == 0}">
			${email}는 사용 가능한 Email입니다.    
			<input type="button" value="사용" class="cancel" onclick="emailok()">
		</c:if>
	</div>

</div>

</body>
</html>