<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/member.css" rel="stylesheet">
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/member.js"></script>
</head>
<body>
<div class="pwd_search_root">
       <div class="pwd_search_box1">
        <div id="logo1">
        <img src="./images/loginlogo.jpg">
        </div>
        <div id="logo2" style="cursor: pointer; width: 2px;" Onclick="location.href='ezen.do?command=index'";>
        <img src="./images/loginhome.png">
        </div>

        <div class="pwd_search_head1">
            <h1>비밀번호 찾기</h1> 
        </div>
          
        <div class="pwd_search_para" style="font-size: 15px;">
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                이메일과 핸드폰번호를 통해 비밀번호를 재설정해주세요.<br>
            </p>
        </div>
        
        <div class="pwd_search_foot">
            <footer>
                <span>EZEN.kr - </span>
                <a href="https://www.ikea.com/kr/ko/customer-service/privacy-policy" style="color: white">개인정보처리방침</a>
                <div>© Inter EZEN Systems B.V. 1999-2020</div>
            </footer>
        </div>
    </div>
    <form name="findPass" method="post" action="login_pwdsearch">
    <div class="pwd_search_box2">
       <div id="pwd_search_form">  
           <div class="pwd_search_title"></div>
            <div class="pwd_search_input"><input type="text" class="pwdsearch" placeholder="이메일주소" id="email" name="email"></div>                        
            <div class="pwd_search_title"></div>
            <div class="pwd_search_input"><input type="text" class="pwdsearch" placeholder="핸드폰번호" id="phone" name="phone"></div>                      
            <div id="pwdsearch_button1"  style='cursor:pointer' onclick="pwdcheck()">비밀번호재설정</div>
       </div>
    </div>
    </form>
   </div>
<c:if test="${result==1}">
<script type="text/javascript">
   alert("검색된 결과가 없습니다.");
</script>
</c:if>
</body>
</html>