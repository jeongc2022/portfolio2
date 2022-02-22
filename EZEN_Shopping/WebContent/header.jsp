<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ezen Shopping</title>
<link href="css/main.css" rel="stylesheet">
<link href="css/member.css" rel="stylesheet">
<link href="css/product.css" rel="stylesheet">
<link href="css/board.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/member.js"></script>
<script type="text/javascript" src="js/board.js"></script>
<script type="text/javascript" src="js/cart.js"></script>
<script type="text/javascript" src="js/product.js"></script>
<script type="text/javascript">
$(function(){
    var num = 0;
   timer=setInterval(function(){
            num++;
            if(num==5){
                num=0;
            }
            var move = (-1*1200)*num;
            $('#bnn').css('left',move);
        },2000);
   /*예린이---------------------------------------------------------------------------------  */
   $('.inputFocus').focus(function(){
            $('.in').addClass('focus');
           });

            $('.inputFocus').focusout(function(){
            $('.in').removeClass('focus');

            if($(this).val()){
              $('.Label').addClass('on')
            }else{
              $('.Label').removeClass('on')
            }
          });
          $("#advertiseall").click(function(){

              if( $("#advertiseall").is(':checked') ){
                $("input[name=advertise1]").prop("checked", true);
              }else{
              $("input[name=advertise1]").prop("checked", false);
       
          	 }             
      	})
    });
</script>
</head>
<body>
<div id="usermenu">
   <div id="bg"></div>
    <div id="allmenuwrap" style="position: absolute; width: 500px; height:1300px; background: white; top:67px; left:-500px; z-index: 2;text-align: center; transition: 0.2s;">
       <span style="position: relative; left:-130px; top:-14px; font-weight: bold; cursor: pointer;" onclick="allmenu(2)">X</span>
        <img src="images/logo.PNG" style="width: 100px; height: 40px; margin-top: 30px;">
        <div id="allmenu" style="width: 50%; height: 1200px; margin: 0 auto; text-align: left; margin-top: 30px;">
            <strong style="font-size: 30px;">모든제품</strong>
            <br><br><span style="font-weight: bold; font-size: 23px; margin-left: 10px;">전자제품</span>
            <br><br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;"><a href="ezen.do?command=productlist&kind=1">노트북</a></span>
            <br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">데스크탑</span>
            <br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">스피커</span>
            <br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">전기면도기</span>
            
            <br><br><span style="font-weight: bold; font-size: 23px; margin-left: 10px;">가전제품</span>
            <br><br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">청소기</span>
            <br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">냉장고</span>
            <br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">김치냉장고</span>
            <br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">에어컨</span>
            
            <br><br><span style="font-weight: bold; font-size: 23px; margin-left: 10px;">주방용품</span>
            <br><br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">믹서기</span>
            <br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">식기세척기</span>
            <br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">칼/도마</span>
            <br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">유리제품</span>
            
            <br><br><span style="font-weight: bold; font-size: 23px; margin-left: 10px;">침구류</span>
            <br><br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">침대</span>
            <br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">이불</span>
            <br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">베개+커버</span>
            <br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">매트리스</span>
            
        </div>
    </div>
     <div id="menu">
     <a href="ezen.do?command=shipping_form"><img src="images/Shipping.PNG" style="right: 188px; top:10px;"></a>
     <c:if test="${loginUser.email==null }">
         <a href="ezen.do?command=login_form"><img src="images/mypage.PNG" style="right: 150px; top:10px;"></a>
      </c:if>
      <c:if test="${loginUser.email!=null }">
         <a href="ezen.do?command=mypage"><img src="images/mypage.PNG" style="right: 150px; top:10px;"></a>
      </c:if>   
         <a href="ezen.do?command=wishlist_form"><img src="images/zzim.PNG" style="right: 97px; top:13px;"></a>
         <a href="ezen.do?command=cartlist_form&email=${loginUser.email}"><img src="images/cart.PNG" style="right: 50px; top:15px;" ></a>
     </div>
 </div>
 <div id="topnav">
     <div id="topmenu">
        <img src="images/menubar.PNG" style="position: relative; left:-200px; cursor: pointer" onclick="allmenu(1)">
         <a href="ezen.do?command=index"><span style="position: relative; left:-120px; top:10px;"><img src="images/logo.PNG" style="width: 100px; height: 40px;"></span></a>
         <a href="#"><span style="margin-left: -60px;" onmouseover="menuover(1)" onmouseout="menuout(1)">전자제품</span></a>
         <div id="menu1" class="menu" style="position: absolute; left:520px; top:60px;width: 1100px; height: 150px;" onmouseover="menuover(1)" onmouseout="menuout(1)">
            <span><a href="ezen.do?command=productlist&kind=1">노트북</a></span><span>데스크탑</span><span>스피커</span><span>전기면도기</span>
         </div>
         <a href="#"><span style="margin-left: 15px;" onmouseover="menuover(2)" onmouseout="menuout(2)">가전제품</span></a>
         <div id="menu2" class="menu" style="position: absolute; left:520px; top:60px;width: 1100px; height: 150px;" onmouseover="menuover(2)" onmouseout="menuout(2)">
            <span><a href="ezen.do?command=productlist&kind=5">청소기</a></span><span>냉장고</span><span>김치냉장고</span><span>에어컨</span>
         </div>
         <a href="#"><span style="margin-left: 15px;" onmouseover="menuover(3)" onmouseout="menuout(3)">주방용품</span></a>
             <div id="menu3" class="menu" style="position: absolute; left:520px; top:60px;width: 1100px; height: 150px;" onmouseover="menuover(3)" onmouseout="menuout(3)">
            <span><a href="ezen.do?command=productlist&kind=9">믹서기</a></span><span>식기세척기</span><span>칼/도마</span><span>유리제품</span>
         </div>
         <a href="#"><span style="margin-left: 15px;" onmouseover="menuover(4)" onmouseout="menuout(4)">침구류</span></a>
             <div id="menu4" class="menu" style="position: absolute; left:520px; top:60px;width: 1100px; height: 150px;" onmouseover="menuover(4)" onmouseout="menuout(4)">
            <span>침대</span><span>이불</span><span>베개+커버</span><span>매트리스</span>
         </div>
         <a href="#"><span style="margin-left: 15px;" onmouseover="menuover(5)" onmouseout="menuout(5)">오피스</span></a>
            <div id="menu5" class="menu" style="position: absolute; left:520px; top:60px;width: 1100px; height: 150px;" onmouseover="menuover(5)" onmouseout="menuout(5)">
            <span>스탠드</span><span>책상</span><span>의자</span><span>빔프로젝트</span>
         </div>
         <a href="ezen.do?command=boardlist"><span style="margin-left: 15px;">고객문의</span></a>
         <a href="ezen.do?command=mapaction"><span style="margin-left: 15px;">찾아오시는길</span></a>
         <div id="se">
             <div style="cursor: pointer;" onclick="search_go()"><img src="images/se.PNG"></div>
             <input type="text" name="ser" id="ser" placeholder="SEARCH">
         </div>
     </div>
 </div>