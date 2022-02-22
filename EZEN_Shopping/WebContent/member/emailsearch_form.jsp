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
<div class="email_search_root">
       <div class="email_search_box1">
        <div id="logo1">
        <img src="./images/loginlogo.jpg">
        </div>
        <div id="logo2" style="cursor: pointer; width: 2px;" Onclick="location.href='ezen.do?command=index'";>
        <img src="./images/loginhome.png">
        </div>

        <div class="email_search_head1">
            <h1>이메일 찾기</h1> 
        </div>
          
        <div class="email_search_para" style="font-size: 15px;">
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                휴대폰 번호를  통해 이메일을 찾아주세요<br>
            </p>
        </div>
        
        <div class="email_search_foot">
            <footer>
                <span>EZEN.kr - </span>
                <a href="https://www.ikea.com/kr/ko/customer-service/privacy-policy" style="color: white">개인정보처리방침</a>
                <div>© Inter EZEN Systems B.V. 1999-2020</div>
            </footer>
        </div>
    </div>
    <form name="findId" method="post" action="login_Emailsearch">
    <div class="email_search_box2">
       <div id="email_search_form">           
            <div class="email_search_title"></div>
            <div class="email_search_input"><input type="text" class="emailsearch" placeholder="휴대폰번호" id="phone" name="phone"></div>        
            <div id="email_search_result">
             <c:choose>
               <c:when test="${empty findUser}">검색 결과가 없습니다</c:when>
             <c:otherwise>
                      검색결과 :(${findUser.phone})의 이메일은 ${findUser.email} 입니다
               </c:otherwise>
            </c:choose>                        
            </div>                  
            <div id="emailsearch_button1"  style='cursor:pointer' onclick="lecheck()">이메일 찾기</div>          
       </div>
    </div>
    </form>
   </div>
</body>
</html>