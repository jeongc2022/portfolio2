<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

 <div id="wrap">
    <div id="cbot" onclick="location.href='ezen.do?command=cbot&email=test.com'">
        <img src="images/cbot.PNG">
    </div>
     <div id="content">
         <div id="bn">
             <div id="bnn">
                 <img src="images/bn1.PNG"><img src="images/bn2.PNG"><img src="images/bn3.PNG"><img src="images/bn4.PNG"><img src="images/bn5.PNG">
             </div>
         </div>
         <div id="korona">
             <img src="images/korona.png">
         </div>
         <div id="monthproduct">
             <h1 style="margin-top: 50px;">이달의 제품</h1>
             <div class="monthimg" id="monthimg1">
                 <a href="#"><img src="images/monthproduct1.PNG"></a>
             </div>
             <div class="monthimg" id="monthimg2">
                 <a href="#"><img src="images/monthproduct2.PNG"></a>
             </div>
             <div class="monthimg" id="monthimg3">
                 <a href="#"><img src="images/monthproduct3.PNG"></a>
             </div>
             <div class="monthimg" id="monthimg4">
                 <a href="#"><img src="images/monthproduct4.PNG"></a>
             </div>
         </div>
         <div id="eip">
            <h1 style="margin-top: 50px;">EZEN 주요 정보</h1>
             <div class="seip">
                 <div id="seip1" class="sseip">
                    <img src="images/eip1.PNG">
                    <div class="eipbtn" onclick="#">
                        <span>2021카탈로그</span>
                    </div>
                 </div>
                 <div id="seip2" class="sseip">
                     <img src="images/eip2.PNG">
                     <div class="eipbtn" onclick="#">
                         <span>EZEN FOOD</span>
                     </div>     
                 </div>
                 <div id="seip3" class="sseip">
                     <img src="images/eip3.PNG">
                     <div class="eipbtn" onclick="#">
                         <span>라이프 엣홈</span>
                     </div>
                 </div>
             </div>
             <div class="seip">
                 <div id="seip1" class="sseip">
                    <img src="images/eip4.PNG">
                    <div class="eipbtn" onclick="#">
                        <span>고객지원센터</span>
                    </div>
                 </div>
                 <div id="seip2" class="sseip">
                     <img src="images/eip5.PNG">
                     <div class="eipbtn" onclick="#">
                         <span>제품리콜</span>
                     </div>     
                 </div>
                 <div id="seip3" class="sseip" >
                     <img src="images/eip6.PNG">
                     <div class="eipbtn" style="width: 120px;" onclick="#">
                         <span>안전사고 예방 방법</span>
                     </div>
                 </div>
             </div>
         </div>
         <div id="pickwrap">
             <h1 style="margin-top: 50px;">EZEN<strong style="color: red">PICK!</strong>인테리어</h1>
             <div id="pick1" class="pick" onmouseover="pick(1);" onmouseout="unpick(1);">
                 <img src="images/pick1.PNG">
                 <div id="pbtn1" class="pbtn" >
                     <div id="spbtn1" class="spbtn">
                         <div id="picktitle1" class="picktitle">
                             <strong style="margin-left: 5px;">뉘모네</strong><br>
                             <span style="margin-left: 5px;">벽부착등</span><br>
                             <strong style="margin-left: 5px;">￦ 69,900</strong>
                         </div>
                     </div>
                 </div>
                 <div id="pbtn2" class="pbtn" >
                     <div id="spbtn2" class="spbtn">
                         <div id="picktitle2" class="picktitle">
                             <strong style="margin-left: 5px;">앵슐리아</strong><br>
                             <span style="margin-left: 5px;">베개+커버</span><br>
                             <strong style="margin-left: 5px;">￦ 29,800</strong>
                         </div>
                     </div>
                 </div> 
             </div>
             
             <div id="pick2" class="pick" onmouseover="pick(2);" onmouseout="unpick(2);">
                 <img src="images/pick2.PNG" >
                <div id="pbtn3" class="pbtn" >
                     <div id="spbtn3" class="spbtn">
                         <div id="picktitle3" class="picktitle">
                             <strong style="margin-left: 5px;">플랏사</strong><br>
                             <span style="margin-left: 5px;">벽수납장</span><br>
                             <strong style="margin-left: 5px;">￦ 239,900</strong>
                         </div>
                     </div>
                 </div>
                 <div id="pbtn4" class="pbtn" >
                     <div id="spbtn4" class="spbtn">
                         <div id="picktitle4" class="picktitle">
                             <strong style="margin-left: 5px;">리가드</strong><br>
                             <span style="margin-left: 5px;">Led작업등+무선충전</span><br>
                             <strong style="margin-left: 5px;">￦ 99,900</strong>
                         </div>
                     </div>
                 </div> 
             </div>
             
             
             <div id="pick3" class="pick" onmouseover="pick(3);" onmouseout="unpick(3);">
                 <img src="images/pick3.PNG" >
                <div id="pbtn5" class="pbtn" >
                     <div id="spbtn5" class="spbtn">
                         <div id="picktitle5" class="picktitle">
                             <strong style="margin-left: 5px;">랑에순드</strong><br>
                             <span style="margin-left: 5px;">거울</span><br>
                             <strong style="margin-left: 5px;">￦ 19,900</strong>
                         </div>
                     </div>
                 </div>
                 <div id="pbtn6" class="pbtn" >
                     <div id="spbtn6" class="spbtn">
                         <div id="picktitle6" class="picktitle">
                             <strong style="margin-left: 5px;">롱피엘</strong><br>
                             <span style="margin-left: 5px;">회의의자</span><br>
                             <strong style="margin-left: 5px;">￦ 129,900</strong>
                         </div>
                     </div>
                 </div>
             </div>
             
             <div id="pick4" class="pick" onmouseover="pick(4);" onmouseout="unpick(4);">
                 <img src="images/pick4.PNG" >
                <div id="pbtn7" class="pbtn" >
                     <div id="spbtn7" class="spbtn">
                         <div id="picktitle7" class="picktitle">
                             <strong style="margin-left: 5px;">리에스코겐</strong><br>
                             <span style="margin-left: 5px;">침대협탁</span><br>
                             <strong style="margin-left: 5px;">￦ 49,900</strong>
                         </div>
                     </div>
                 </div>
                 <div id="pbtn8" class="pbtn" >
                     <div id="spbtn8" class="spbtn">
                         <div id="picktitle8" class="picktitle">
                             <strong style="margin-left: 5px;">말름</strong><br>
                             <span style="margin-left: 5px;">오토만침대</span><br>
                             <strong style="margin-left: 5px;">￦ 499,900</strong>
                         </div>
                     </div>
                 </div>
             </div>
             
             
             <div id="pick5" class="pick" onmouseover="pick(5);" onmouseout="unpick(5);">
                 <img src="images/pick5.PNG" >
                    <div id="pbtn9" class="pbtn" >
                     <div id="spbtn9" class="spbtn">
                         <div id="picktitle9" class="picktitle">
                             <strong style="margin-left: 5px;">리가드</strong><br>
                             <span style="margin-left: 5px;">Led작업등+무선충전</span><br>
                             <strong style="margin-left: 5px;">￦ 99,900</strong>
                         </div>
                     </div>
                 </div>
                 <div id="pbtn10" class="pbtn" >
                     <div id="spbtn10" class="spbtn">
                         <div id="picktitle10" class="picktitle">
                             <strong style="margin-left: 5px;">크비슬레</strong><br>
                             <span style="margin-left: 5px;">사무용품 정리대</span><br>
                             <strong style="margin-left: 5px;">￦ 17,900</strong>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>  
 <%@ include file="footer.jsp"%>