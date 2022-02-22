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
<style type="text/css">
 #join{position:relative; width:100%; height:2100px; margin-top:100px; margin-top:100px;}
    #view{position:relative; width:1500px; height:1900px; margin:0 auto;}
    #view1{position:absolute; width:430px; height:1900px;  right:60%; overflow:hidden;}
    
    
    #sub{position:relative; width:700px; height:130px; }    
    #subl{position:absolute; width:250px; height:60px;  color: #0058A3;
    font-size: 35px; font-weight: bold; top:40%; left: 18%;
    transform: translate(-50%, -50%);}
    #subr{position:absolute; width:250px; height:60px;  color: black;
    font-size: 35px; font-weight: bold; top:40%; right:16%;
    transform: translate(-50%, -50%);}    
    #subl2{position:absolute; width:250px; height:20px; color:black;
    font-size: 13px; font-weight: bold; top:65%; left: 18%;
    transform: translate(-50%, -50%);}
    
    
    #images1{position:relative; width:198px; height:1000px;  float: left; overflow:hidden;}
    #images2{position:relative; width:198px; height:1200px;  float: right;
        right: 17px;  overflow:hidden;}
    
    .rectangle{position:relative; width:210px; height:250px;  overflow:hidden; margin-top: 10px;}
    .square{position:relative; width:210px; height:190px;   overflow:hidden; margin-top: 10px;}
    
    
    #view2{position:absolute; width:700px; height:1900px;  left:50%; margin-top:30px;}
    .rect{position:relative; width:700px; height:180px;  font-size: 15px; margin-top:-30px;}
    .sub{position:relative; width:700px; height:180px;  font-size: 15px; }
    .title{position: relative;}

    
     input::-webkit-input-placeholder {color: silver; font-size: 15px;}
    .input_div{width: 90%; height: 35px; border: none; border-bottom: 1.5px solid black; margin-top:  20px; position: relative; color:black;}
    
     #subtitle{ color: black; font-size: 17px; width: 100px; height: 20px; border: 1px solid red; position: absolute; left: 0 ; bottom: 0 ; }
    
    .input_div2{width: 70%; height: 35px; border: none; border-bottom: 1.5px solid black; margin-top:  20px; position: relative; }
    .input_div3{width: 90%; height: 35px; border: none; margin-top:  20px; position: relative; left: 0 ;bottom:5px; font-size: 14px;}
    .input_div4{width: 70%; height: 35px; border: none; border-bottom: 1.5px solid silver; margin-top:  20px; position: relative;}

    .title ul{position: absolute; top:30px; left:-35px; font-size: 13px; }

    #bt1{background: #004F93; width:300px;height: 55px; padding:0 45px; font-size: 17px; color: white;border:1px solid silver; font-weight: bold; margin-top: 70px; border-bottom-left-radius: 30px; border-bottom-right-radius: 30px; border-top-left-radius: 30px; border-top-right-radius: 30px;}
    #bt2{background: black;  width:80%; height: 45px; padding:0 45px; font-size: 15px; color: white;  font-weight: bold; margin-top: 20px; border-bottom-left-radius: 30px; border-bottom-right-radius: 30px; border-top-left-radius: 30px; border-top-right-radius: 30px;}
   
    
    #ra1{border:1px; font-size:15px ; width:20px; height:20px; margin-top: 20px; }
    #ch1{border:1px; font-size:15px ; width:20px; height:20px; margin-top: 20px; border-bottom-left-radius: 20px;}
    #advertiseall{border:1px; font-size:15px ; width:20px; height:20px; margin-top: 20px; border-bottom-left-radius: 20px;}
    
    .right{position:absolute; width:250px; height:70px; left:50px; font-size: 16px;
        top:-40px;}
    
    input[type="text"]:focus { border-bottom:2px solid red; color:black;}
    input[type="text"]:focus + .Label { top:0; font-size:12px; }
    input[type="text"]:focus + .Label +.guide { display:block; color: red; font-size: 12px;top:10px;}
    input:focus { outline:none; }
    
    input[type="email"]:focus { border-bottom:2px solid red;}
    input[type="email"]:focus + .Label { top:0; font-size:12px; }
    input[type="email"]:focus + .Label +.guide { display:block; color: red; font-size: 12px;top:10px;}
    input:focus { outline:none; }
    
    input[type="password"]:focus { border-bottom:2px solid red;}
    input[type="password"]:focus + .Label { top:0; font-size:12px; }
    input[type="password"]:focus + .Label +.guide { display:block; color: red; font-size: 12px;top:10px;}
    input:focus { outline:none; }

  


    
    .in { position:relative; }
    .in.focus.inputFocus { border-color:red; }

    .Label{position:absolute; top:20px; left:0;}
    .Label.on { top:0; font-size:12px; }
    .guide { display:none; }
    .inputFocus { height:30px; padding:20px 0 0 0; border:0; border-bottom:1px solid black; width: 90%; }

    
    .inputFocus2 { height:30px; padding:20px 0 0 0; border:0; border-bottom:1px solid silver; width:  90%; }
     input[type="text"]:focus +.guide { display:block; color: red; font-size: 12px; top:50px;}
     input:focus { outline:none; }
     
        .img-button{border: none; 
        cursor: pointer; background:url("./images/idcheck.png");
        width:25px; height: 35px; position: relative; top:5px;}
</style>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/main.js"></script>
<script type="text/javascript" src="./js/member.js"></script>
</head>
<body>
<div id="usermenu">
   <div id="bg"></div>
    <div id="allmenuwrap" style="position: absolute; width: 500px; height:1300px; background: white; top:67px; left:-370px; z-index: 2;text-align: center; transition: 0.2s;">
       <span style="position: relative; left:-130px; top:-14px; font-weight: bold; cursor: pointer;" onclick="allmenu(2)">X</span>
        <img src="images/logo.PNG" style="width: 100px; height: 40px; margin-top: 30px;">
        <div id="allmenu" style="width: 50%; height: 1200px; margin: 0 auto; text-align: left; margin-top: 30px;">
            <strong style="font-size: 30px;">모든제품</strong>
            <br><br><span style="font-weight: bold; font-size: 23px; margin-left: 10px;">전자제품</span>
            <br><br><span style="font-weight: bold; font-size: 18px; margin-left: 30px;">노트북</span>
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
     <c:if test="${loginUser.id==null }">
         <a href="ezen.do?command=login_form"><img src="images/mypage.PNG" style="right: 150px; top:10px;"></a>
      </c:if>
      <c:if test="${loginUser.id!=null }">
         <a href="ezen.do?command=mypage"><img src="images/mypage.PNG" style="right: 150px; top:10px;"></a>
      </c:if>   
         <a href="#"><img src="images/zzim.PNG" style="right: 97px; top:13px;"></a>
         <a href="#"><img src="images/cart.PNG" style="right: 50px; top:15px;" ></a>
     </div>
 </div>
 <div id="topnav">
     <div id="topmenu">
        <img src="images/menubar.PNG" style="position: relative; left:-200px; cursor: pointer" onclick="allmenu(1)">
         <a href="ezen.do?command=index"><span style="position: relative; left:-120px; top:10px;"><img src="images/logo.PNG" style="width: 100px; height: 40px;"></span></a>
         <a href="#"><span style="margin-left: -60px;" onmouseover="menuover(1)" onmouseout="menuout(1)">전자제품</span></a>
         <div id="menu1" class="menu" style="position: absolute; left:520px; top:60px;width: 1100px; height: 150px;" onmouseover="menuover(1)" onmouseout="menuout(1)">
            <span>노트북</span><span>데스크탑</span><span>스피커</span><span>전기면도기</span>
         </div>
         <a href="#"><span style="margin-left: 15px;" onmouseover="menuover(2)" onmouseout="menuout(2)">가전제품</span></a>
         <div id="menu2" class="menu" style="position: absolute; left:520px; top:60px;width: 1100px; height: 150px;" onmouseover="menuover(2)" onmouseout="menuout(2)">
            <span>청소기</span><span>냉장고</span><span>김치냉장고</span><span>에어컨</span>
         </div>
         <a href="#"><span style="margin-left: 15px;" onmouseover="menuover(3)" onmouseout="menuout(3)">주방용품</span></a>
             <div id="menu3" class="menu" style="position: absolute; left:520px; top:60px;width: 1100px; height: 150px;" onmouseover="menuover(3)" onmouseout="menuout(3)">
            <span>믹서기</span><span>식기세척기</span><span>칼/도마</span><span>유리제품</span>
         </div>
         <a href="#"><span style="margin-left: 15px;" onmouseover="menuover(4)" onmouseout="menuout(4)">침구류</span></a>
             <div id="menu4" class="menu" style="position: absolute; left:520px; top:60px;width: 1100px; height: 150px;" onmouseover="menuover(4)" onmouseout="menuout(4)">
            <span>침대</span><span>이불</span><span>베개+커버</span><span>매트리스</span>
         </div>
         <a href="#"><span style="margin-left: 15px;" onmouseover="menuover(5)" onmouseout="menuout(5)">오피스</span></a>
            <div id="menu5" class="menu" style="position: absolute; left:520px; top:60px;width: 1100px; height: 150px;" onmouseover="menuover(5)" onmouseout="menuout(5)">
            <span>스탠드</span><span>책상</span><span>의자</span><span>빔프로젝트</span>
         </div>
         <a href="#"><span style="margin-left: 15px;">고객문의</span></a>
         <div id="se">
             <a href="#"><img src="images/se.PNG"></a>
             <input type="text" name="ser" id="ser" placeholder="SEARCH">
         </div>
     </div>
 </div>
 <div id="join">
    <div id="view">
        <div id="view1">
            <div id="sub">
            <div id="subl">
                IKEAFAMILY
            </div>
            <div id="subr">
                회원가입
            </div>
            <div id="subl2">
                이미 가입을 하셨나요?<a href="https://www.ikea.com/kr/ko/customer-service/terms-conditions/" style="color: black;">로그인하기</a><br>
            </div>
        </div>
        <div id="images1">
        <div class="rectangle">
            <img src="images/left1.png">
        </div>
         <div class="rectangle">
            <img src="images/left2.png">
        </div>   
          <div class="square">
        <img src="images/left3.png">
        </div>     
           <div class="rectangle">
            <img src="images/left4.png">
        </div>  
            </div> 
            
       <div id="images2">    
              <div class="square">
        <img src="images/right1.png">     
           </div>            
              <div class="square">
          
        <img src="images/right2.png">     
           </div>                         
       <div class="rectangle">
            <img src="images/right3.png">
        </div>                     
            <div class="square">
        <img src="images/right4.png">     
           </div>
        <div class="rectangle">
            <img src="images/right5.png">
        </div>                                                                                       
    </div>
        
 </div> 
        
        <div id="view2">
           <div class="rect">
                <h5>IKEA Family에 가입하시겠어요?</h5> 
                <input type="radio" id="ra1" name ="family" value="y" checked="checked"/>예, IKEA Family의 다양한 혜택 및 할인을 즐기고 싶습니다!IKEA Family 혜택<br>
                <input type="radio" id="ra1" name ="family" value="n"/>아니요, 추가 혜택 없이 온라인 몰만 가입하고 싶습니다. 
                IKEA 온라인몰 혜택</div>
                    
        <div class="title" style="margin-top: 25px;">
        <div class="in">
        <input type="text" id="firstname"class="inputFocus" name="firstname">
        <label for="firstname" class="Label">성</label>
        <div class="guide">성 필드는 필수 필드입니다.</div> 
        </div>
        </div>
  
        <div class="title" style="margin-top: 40px;">
        <div class="in">
        <input type="text" id="lastname" class="inputFocus" name="lastname">
        <label for="lastname" class="Label">이름</label>
        <div class="guide">이름필드는 필수 필드입니다.</div> 
        </div>
        </div>
           
            
        <div class="title" style="margin-top: 40px;">
        <div class="in">
        <input type="text" id="birth" class="inputFocus" name="birth" onfocus="this.placeholder = 'YYYY-MM-DD'" onblur="this.placeholder=''"/>
        <label for="birth" class="Label">생일</label>
        <div class="guide">생일은 YYYY-MM-DD 형식이어야 합니다.</div> 
        </div>
        </div>
          
           
            
        <div class="title" style="margin-top:40px;"><h5>휴대폰</h5>
        <div class="input_div3"style=" border-bottom: 1px solid black; height: 30px; ">KR(+82)
            <input type="text" class="inputFocus"style="position:absolute; top:-21px; right:0px; border: none;"
            name="phone" id="phone">   <div class="guide" style="position:absolute; top:40px; left:0px;">휴대폰필드는 필수 필드입니다.(-는 제외)</div>  
            </div>  
        </div>    
   
        
           
        
        
        <div class="title" style="margin-top:40px;">
        <div class="input_div2">
        <select class="se" style="border: none; font-size: 15px; width:100%; height: 30px; " name="gender" id="gender">
        <option value="">
        성별
        </option>
        <option value="m">
        남성
        </option>
        <option value="f">
        여성
        </option>
       </select>       
      <ul>
        IKEA의 홈퍼니싱 아이디어와 신상품 소식, 그리고 할인 혜택 정보를 제공하고, 여러분을
        더욱 잘 이해할 수 있도록 세부 정보를 입력해 주시기 바랍니다.
     </ul>
       </div>          
    </div>
    
    <div id="button1" style="margin-top: 10px;">
    <button type="button" id="bt1">주소찾기</button>  
     </div>
     
     
   <div class="title" style="margin-top: 40px;">
        <div class="in">
        <input type="text" class="inputFocus2" placeholder="도로명주소" readonly style="cursor: default;" name="doroaddress" onfocus="this.blur();">       
        </div>
    </div>
     
     <div class="title" style="margin-top: 40px;">
        <div class="in">
        <input type="text" id="address"class="inputFocus" name="address ">
        <label for="address" class="Label">상세주소</label>
        <div class="guide">상세주소는 필수 필드입니다.</div> 
        </div>
        </div>
           
      
   <div class="title" style="margin-top: 40px;">
        <div class="in">
        <input type="text" class="inputFocus2" placeholder="우편번호" readonly style="cursor: default;"
        name="postnum" onfocus="this.blur();">
               
        </div>
    </div>
    
    <div class="title" style="margin-top:40px;">
        <div class="input_div2">
        <select class="se" style="border: none; font-size: 15px; width:100%; height: 30px;"
        name="prefershop" id="prefershop">
        <option>
       선호하는 매장
        </option>
        <option value="고양">
        고양
        </option>
        <option value="기흥">
        기흥
        </option>
        <option value="광명">
       광명
        </option>
         <option value="동부산">
       동부산
        </option>
       </select>
        </div>
            </div>  
            
        <div class="title" style="margin-top: 40px;">
        <div class="in" style="width: 85%;">
        <input type="email" id="email"class="inputFocus inputEmail" name="email">
        <input type="hidden" name="reemail" value="" id="reemail">
        <input type="button" class="img-button"  onclick="emailcheck()"><br>
        <label for="email " class="Label">이메일</label>
        <div class="guide">이메일은 필수 필드입니다.</div>
        </div>
      </div>
    
   <div class="title" style="margin-top: 40px;">
        <div class="in" style="width: 85%;">
        <input type="password" id="pwd"class="inputFocus" name="pwd" onkeyup="joinpwdcheck()">
        <label for="pwd " class="Label">비밀번호</label>
        
        <div class="guide">비밀번호필드는 필수 필드입니다.
            <div id="guide_2" style="color: black; font-size:11px;">
            <h4>비밀번호에는 다음이 포함되어야 합니다.</h4><br>
            <pre>
      	   <span id="joinpwdcheck1">8-20자를 입력해야 합니다.</span>
           <span id="joinpwdcheck2">한 줄에 동일한 문자를 3개 이상 포함할 수 없습니다.</span>
           <span id="joinpwdcheck3">소문자 (a-z)</span>
           <span id="joinpwdcheck4">대문자 (A-Z)</span>
           <span id="joinpwdcheck5">숫자 또는 특수 문자</span></pre></div></div>
        </div>
   </div>  
    
    
     <div class="title" style="margin-top:60px; border: none; font-size: 15px;">
         <input type="checkbox" id="advertiseall" name ="advertiseall"/>IKEA의 홈퍼니싱 아이디어와 신상품 소식, 그리고 할인 혜택 정보를 받고 싶어요!<br>
         <input type="checkbox" id="ch1" name ="advertise1" value=""/ style="margin-left:50px;">이메일 수신<br>
         <input type="checkbox" id="ch1" name ="advertise1" value=""/ style="margin-left:50px;">SMS문자 수신<br>
         <input type="checkbox" id="ch1" name ="advertise1" value=""/ style="margin-left:50px;">우편물 수신</div>
        
     <div class="title" style="margin-top:20px; border: none;">
     <input type="checkbox" id="ch1" name ="checkbox1" value=""/>약관을 읽고 모두 동의합니다.
     <a href="https://www.ikea.com/kr/ko/customer-service/terms-conditions/" style="color: black;">이용약관</a>
     <br>
     </div>
     
     <div class="title" style="margin-top:50px; border: none;">
     <input type="checkbox" id="ch1" name ="checkbox2" value="" style="margin-top:30px;"/>    
         <div class="right" style="margin-top:20px;">
               <p>
                모든 약관에 동의합니다.<br>
                 <a href="https://www.ikea.com/kr/ko/customer-service/terms-conditions/" style="color: black;">-이용약관</a><br>
                 <a href="https://www.ikea.com/kr/ko/customer-service/terms-conditions/" style="color: black;">-개인정보 수집이용</a><br>
                 <a href="https://www.ikea.com/kr/ko/customer-service/terms-conditions/" style="color: black;">-개인정보 처리위탁</a><br>
                 <a href="https://www.ikea.com/kr/ko/customer-service/terms-conditions/" style="color: black;">-개인정보 국외이전</a>                  
               </p>
                
               
        </div>
     </div>
     
        <div id="button2" style="margin-top:85px;">
        <button type="button" id="bt2" onclick="sign()">가입하기</button>  
        </div>
        
        </div>
    </div>
</div>
 
  <%@ include file="../footer.jsp"%>