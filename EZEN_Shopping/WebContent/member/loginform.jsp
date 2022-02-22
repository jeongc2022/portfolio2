<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/member.css" rel="stylesheet">
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript">
function logincheck(){
var email=$("#email").val();
var pwd = $("#pwd").val();
if(email==""){
   alert("이메일을 입력해주세요.");
   $("#email").focus();
   return
   }
if(pwd==""){
   alert("비밀번호를 입력해주세요.");
   $("#pwd").focus();
   return
   }
   location.href="ezen.do?command=loginaction&email="+email+"&pwd="+pwd;
}
</script>
</head>
<body>
<div class="root">
       <div class="box1">
        <div id="logo1">
        <img src="./images/loginlogo.jpg">
        </div>
        <div id="logo2" style="cursor: pointer; width: 2px;" Onclick="location.href='ezen.do?command=index'";>
        <img src="./images/loginhome.png">
        </div>

        <div class="head1">
            <h1>지금 EZEN에<br>
            로그인하세요!</h1> 
        </div>
          
        <div class="para">
            <p>
                휴대폰 번호를 인증하시면 해당 번호로<br>
                간편 로그인이 가능해집니다.
            </p>
        </div>
        
        <div class="foot">
            <footer>
                <span>EZEN.kr - </span>
                <a href="https://www.ikea.com/kr/ko/customer-service/privacy-policy" style="color: white">개인정보처리방침</a>
                <div>© Inter EZEN Systems B.V. 1999-2020</div>
            </footer>
        </div>
    </div>
    
    <div class="box2">
       <div id="form">
           <div class="title"></div>
            <div class="input_div"><input type="text" class="id1" placeholder="이메일주소" id="email" name="email"></div>

            <div class="title"></div>
            <div class="input_div"><input type="password" class="id1" placeholder="비밀번호" id="pwd" name="pwd"></div>
            <span style="color: #666666; font-size: 12px; cursor:pointer"><a href="ezen.do?command=emailsearch" style="color: #666666;">이메일 찾기</a>&nbsp; &nbsp;<a href="ezen.do?command=pwdsearch" style="color: #666666;">비밀번호 찾기</a></span>  
            <div id="button1"  style='cursor:pointer' onclick="logincheck()">로그인</div>
            <div id="button2" onclick="location.href='ezen.do?command=joinform'" style='cursor:pointer'>회원가입</div>
       </div>
    </div>
   </div>
   <c:if test="${result==1 }">
      <script type="text/javascript">
         alert("비밀번호가 틀렸습니다.");
         $("#pwd").focus();
      </script>
   </c:if>
   <c:if test="${result==2 }">
   <script type="text/javascript">
   alert("존재하지 않는 이메일입니다.");
      $("#email").focus();
   </script>
   </c:if>
   <c:if test="${result==3}">
	<script type="text/javascript">
	alert("비밀번호가 수정되었습니다. 로그인 하세요");
	</script>
</c:if>
</body>
</html>