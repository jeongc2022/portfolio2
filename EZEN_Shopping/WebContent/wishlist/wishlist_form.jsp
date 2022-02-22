<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style type="text/css">
/* 전체 박스 */
.wlist_main1 {
   position: relative;
   width: 750px;
   height: 1500px;
   margin: 0 auto; /*border:1px solid black;*/
   margin-top: 200px;
}

.wlist_main2 {
   position: relative;
   width: 750px;
   height: 1500px;
   margin: 0 auto; /*border:1px solid black;*/
   display: none;
   margin-top: 200px;
}

.wlist_main_title {
   width: 750px;
   height: 70px; /*border:1px dashed red;*/
   text-align: center;
   line-height: 20px;
}

/* 메뉴선택 */
.wlist_main_menu {
   width: 750px;
   height: 40px;
   border-bottom: 1px solid #CCCCCC;
}

.wlist_main_menutab {
   width: 350px;
   height: 40px; /*border:1px dashed blue;*/
   margin: 0 auto;
}

.wlist_main_tab1 {
   width: 173px;
   height: 40px; /*border:1px dashed purple;*/
   float: left;
}

.main_tap_button1 {
   width: 173px;
   height: 40px;
   border-style: none;
   background-color: white;
   font-weight: bold;
   text-align: center;
   border-bottom: 2px solid #407AB1;
}

.main_tap_button2 {
   width: 173px;
   height: 40px;
   border-style: none;
   background-color: white;
   font-weight: bold;
   text-align: center;
}

/* 메뉴선택 밑 빈박스 */
.wlist_nonbox1 {
   width: 750px;
   height: 40px; /*border:1px solid green;*/
}

/* 상품위시리스트 틀 */
.wlist_plist_main {
   position: relative;
   width: 750px;
   height: 180px; /*border:1px solid red;*/
   margin-bottom: 30px;
}

.wlist_plist_imgbox {
   position: relative;
   width: 160px;
   height: 180px; /*border:1px solid blue;*/
   float: left;
}

.wlist_plist_titlebox {
   position: relative;
   width: 250px;
   height: 180px; /*border:1px solid blue;*/
   float: left;
}

.wlist_plist_bigpricebox {
   position: relative;
   width: 330px;
   height: 180px; /*border:1px solid blue;*/
   float: left;
}

/* 상품위시리스트 틀내부 */
.wlist_plist_img {
   width: 150px;
   height: 150px;
}

.wlist_plist_title {
   margin: 0;
}

.wlist_plist_titlebox ul {
   margin: 5px;
   padding: 0px;
}

.wlist_plist_title_detail {
   list-style: none;
   margin: 0px;
   padding: 0px;
   font-size: 80%;
}

.wlist_plist_pricebox {
   position: relative;
   width: 330px;
   height: 120px; /* border:1px solid red;*/
   text-align: right;
   font-weight: bold;
   line-height: 30px;
}

.wlist_plist_pricebutton {
   position: relative;
   width: 330px;
   height: 60px; /*border:1px solid red;*/
}

.wlist_plist_delete {
   position: relative;
   width: 42px;
   height: 42px;
   border: 1px solid #666666;
   float: left;
   margin-right: 10px;
   border-radius: 3px 3px 3px 3px;
}

.wlist_plist_number {
   position: relative;
   width: 85px;
   height: 42px;
   border: 1px solid #666666;
   float: left;
   margin-right: 10px;
   border-radius: 3px 3px 3px 3px;
}

.wlist_plist_addcart {
   position: relative;
   width: 170px;
   height: 42px; /*border:1px solid blue;*/
   float: left;
}

.wlist_plist_delete_checkbox {
   width: 330px;
   height: 60px; /*border:1px solid black;*/
   display: none;
}

.wlist_plist_delete2 {
   position: relative;
   width: 42px;
   height: 42px;
   border: 1px solid #666666;
   float: right;
   margin-right: 10px;
   border-radius: 3px 3px 3px 3px;
}

.wlist_plist_number2 {
   position: relative;
   width: 85px;
   height: 42px;
   border: 1px solid #666666;
   float: right;
   margin-right: 10px;
   border-radius: 3px 3px 3px 3px;
}

/* 상품위시리스트 pricebox안 버튼 */
.wlist_plist_delete_btn {
   width: 42px;
   height: 42px;
   background-color: white;
   border-style: none;
}

.wlist_plist_addcart_btn {
   width: 170px;
   height: 42px;
   background-color: #0058A3;
   border-style: none;
   line-height: 42px;
}

.wlist_plist_addcart_btntext {
   width: 140px;
   height: 30px;
   background-color: #0058A3;
   color: white;
   line-height: 42px;
   font-weight: bold;
   text-align: center;
}

.wlist_product_count1 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count2 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count3 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count4 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count5 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count6 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count7 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count8 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count9 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count10 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count11 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count12 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count13 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count14 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count15 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count16 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count17 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count18 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count19 {
   width: 85px;
   height: 42px;
   border-style: none;
}
.wlist_product_count20 {
   width: 85px;
   height: 42px;
   border-style: none;
}

.wlist_plist_addcart_btn1 {
   float: left;
   margin-left: 10px;
}

.wlist_plist_delete_check {
   width: 160px;
   height: 42px; /*border:1px solid red;*/
   float: left;
   margin-right: 5px;
   font-size: 90%;
}

.wlist_plist_delete_checkbox_text {
   width: 330px;
   height: 18px;
   text-align: center;
   font-size: 80%; /*border:1px solid black;*/
}

.wlist_plist_alladdcart_guide {
   width: 400px;
   height: 42px;
   line-height: 55px;
   text-align: center;
   margin: 0 auto;
   margin-top: 30px;
   font-size: 90%
}

.wlist_plist_alladdcart {
   position: relative;
   width: 400px;
   height: 42px; /*border:1px solid black;*/
   margin: 0 auto;
}

.wlist_plist_alladdcart_btn {
   width: 400px;
   height: 42px;
   background-color: #0058A3;
   border-style: none;
   line-height: 42px;
   float: left;
}

.wlist_plist_alladdcart_btn1 {
   float: left;
   margin-left: 20px;
   margin-left: 100px;
}

.wlist_plist_alladdcart_btntext {
   width: 150px;
   height: 30px;
   background-color: #0058A3;
   color: white;
   line-height: 42px;
   font-weight: bold;
   text-align: center;
   float: left;
}

/* 총 주문금액 */
.wlist_totalprice_box {
   position: relative;
   width: 750px;
   height: 30px;
   border-bottom: 1px dashed #CCCCCC;
   border-top: 1px dashed #CCCCCC;
   float: left;
}

.wlist_totalprice_text {
   width: 100px;
   height: 30px;
   font-weight: bold;
   font-size: 80%;
   line-height: 30px;
   float: left;
}

.wlist_totalprice {
   width: 100px;
   height: 30px;
   line-height: 30px;
   float: right;
   font-weight: bold;
   text-align: right;
   font-size: 90%;
}

.wlist_nonbox2 {
   position: relative;
   width: 750px;
   height: 30px;
   border-bottom: 1px solid #CCCCCC;
   margin-top: 50px;
}

/* 매장 재고 확인하기 메뉴 */
.wlist_shoplist_bigbox {
   width: 750px;
   height: 50px; /*border:1px solid black;*/
   margin-top: 20px;
   margin-bottom: 20px;
}

.wlist_shoplist_box {
   width: 500px;
   height: 40px; /*border:1px solid black;*/
   margin: 0 auto;
}

.wlist_shoplist {
   width: 500px;
   height: 40px;
   border: 1px solid black;
}

.plist_stock_check {
   width: 200px;
   height: 20px; /*border:1px solid black;*/
   color: #0A8A00;
   margin-top: 20px;
}

.plist_stock_img {
   float: left;
}

.plist_stock_check_text {
   width: 150px;
   height: 20px; /*border:1px solid black;*/
   float: left;
   line-height: 20px;
}

/* 매장 재고 확인하기 메뉴 하단 가이드 */
.wlist_guidebox {
   width: 750px;
   height: 400px; /*border:1px solid black;*/
}

.wlist_nonbox3 {
   width: 750px;
   height: 30px; /*border:1px dashed red;*/
}

.wlist_guidebox_text {
   width: 750px;
   height: 50px; /*border:1px dashed blue;*/
   text-align: center;
}

.wlist_nextbtnbox {
   width: 500px;
   height: 40px;
   margin: 0 auto;
   margin-top: 15px;
}

.wlist_nextbtn {
   width: 500px;
   height: 40px;
   border-style: none;
   margin: 0 auto;
   background-color: #0058A3;
   color: white;
   text-align: center;
   line-height: 40px;
   font-weight: bold;
   font-size: 90%;
}

/* 위시리스트 비었을때 화면 */
.wlist_non_main {
   position: relative;
   width: 750px;
   height: 650px;
   margin: 0 auto; /*border:1px solid black;*/
   margin-top: 100px;
}

.wlist_non_main_title {
   width: 750px;
   height: 70px; /*border:1px dashed red;*/
   text-align: center;
   line-height: 20px;
}

.wlist_non_imgbigbox {
   width: 350px;
   height: 260px; /*border:1px dashed blue;*/
   margin: 0 auto;
}

.wlist_non_imgbox {
   width: 230px;
   height: 230px; /*border:1px dashed red;*/
   margin: 0 auto;
}

.wlist_non_textbox {
   width: 230px;
   height: 40px; /*border:1px solid red;*/
   margin: 0 auto;
   text-align: center;
   font-size: 90%;
}

.wlist_non_buttonbox {
   width: 350px;
   height: 40px;
   margin: 0 auto; /*border:1px solid black;*/
   margin-top: 30px;
}

.wlist_non_button {
   width: 350px;
   height: 40px;
   border-style: none;
   background-color: #0058A3;
   color: white;
}
</style>

<script src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
   $(function() {
      $('.main_tap_button2').click(function() {
         $('.main_tap_button2').css('border-bottom', '2px solid #407AB1');
         $('.main_tap_button1').css('border-bottom', '1px solid #CCCCCC');
         $('.wlist_main2').css('display', 'block');
         $('.wlist_main1').css('display', 'none');
      });
      $('.main_tap_button1').click(function() {
         $('.main_tap_button1').css('border-bottom', '2px solid #407AB1');
         $('.main_tap_button2').css('border-bottom', '1px solid #CCCCCC');
         $('.wlist_main1').css('display', 'block');
         $('.wlist_main2').css('display', 'none');
      });
   });

   function add_one_cartlist(pseq1) {
      var pseq = $("#pseq").val();
      var wseq = $('#wseq').val();
      var email = $('#email').val();
      var wlist_product_count = ".wlist_product_count"+pseq1+" option:selected";
      var count = $(wlist_product_count).val();
      location.href = "ezen.do?command=add_one_cartlist&qty=" + count + "&pseq=" + pseq + "&email=" + email + "&wseq" + wseq;
   }

   $(function() {
      $('.wlist_plist_delete_btn').click(function() {
         var result = confirm('삭제하시겠습니까?');
         var wseq = $('#wseq').val();
         if (result == true) {
            location.href = "ezen.do?command=delete_wishlist&wseq=" +  wseq;
         } else {

         }
      });
   });
</script>
<form name="formm" method="post" id="wishList">
   <c:choose>
      <c:when test="${wishList.size()==0}">
         <div class="wlist_non_main">
            <div class="wlist_non_main_title">
               <h1>위시리스트</h1>
            </div>
            <div class="wlist_non_imgbigbox">
               <div class="wlist_non_imgbox">
                  <img src="images/wlist_non_pageimg.png" class="wilst_non_img">
               </div>
            </div>
            <div class="wlist_non_textbox">
               시간이 더 필요하신가요?<br>저장한 후 나중에 구매해보세요.
            </div>
            <div class="wlist_non_buttonbox">
               <button class="wlist_non_button">제품 검색</button>
            </div>
         </div>
      </c:when>
      <c:otherwise>
         <div class="wlist_main1">
            <div class="wlist_main_title">
               <h1>위시리스트</h1>
            </div>
            <div class="wlist_main_menu">
               <div class="wlist_main_menutab">
                  <div class="wlist_main_tab1">
                     <button type="button" class="main_tap_button1">온라인으로
                        구매하기</button>
                  </div>
                  <div class="wlist_main_tab1">
                     <button type="button" class="main_tap_button2">매장 재고
                        확인하기</button>
                  </div>
               </div>
            </div>
            <div class="wlist_nonbox1"></div>

            <c:forEach items="${wishList}" var="list">
               <input type="hidden" name="pseq" id="pseq" value="${list.pseq}">
               <input type="hidden" name="wseq" id="wseq" value="${list.wseq}">
               <input type="hidden" name="email" id="email" value="${list.email}">
               <div class="wlist_plist_main">
                  <div class="wlist_plist_imgbox">
                     <img src="productimages/${list.imgurl}" class="wlist_plist_img">
                  </div>
                  <div class="wlist_plist_titlebox">
                     <h4 class="wlist_plist_title">${list.pname}</h4>
                     <ul>
                        <li class="wlist_plist_title_detail">${list.kind}</li>
                        <li class="wlist_plist_title_detail">${list.color }</li>
                     </ul>
                  </div>
                  <div class="wlist_plist_bigpricebox">
                     <div class="wlist_plist_pricebox">
                        &#8361;
                        <fmt:formatNumber value="${list.price}" pattern="#,###,###" />
                     </div>
                     <div class="wlist_plist_pricebutton">
                        <div class="wlist_plist_delete">
                           <button type="button" class="wlist_plist_delete_btn">
                              <img src="images/plist_delete_btn.png">
                           </button>
                        </div>
                        <div class="wlist_plist_number">
                           <select name="wlist_product_count" class="wlist_product_count${list.pseq}">
                              <option>수량</option>
                              <c:forEach var="count" begin="1" end="${list.qty}"
                                 varStatus="status">
                                 <option value="${count}">${count}</option>
                              </c:forEach>
                           </select>
                        </div>
                        <div class="wlist_plist_addcart">
                           <button type="button" class="wlist_plist_addcart_btn"
                              onclick="add_one_cartlist('${list.pseq}')">
                              <img src="images/plist_addcart_btn1.png"
                                 class="wlist_plist_addcart_btn1">
                              <div class="wlist_plist_addcart_btntext">장바구니에 추가</div>
                           </button>
                        </div>
                     </div>
                  </div>
               </div>
            </c:forEach>

            <div class="wlist_nonbox1"></div>
            <div class="wlist_totalprice_box">
               <div class="wlist_totalprice_text">총 주문금액</div>
               <div class="wlist_totalprice">
                  &#8361;
                  <fmt:formatNumber value="${totalPrice}" pattern="#,###,###" />
               </div>
            </div>
            <div class="wlist_nonbox2"></div>
         </div>


         <div class="wlist_main2">
            <div class="wlist_main_title">
               <h1>위시리스트</h1>
            </div>
            <div class="wlist_main_menu">
               <div class="wlist_main_menutab">
                  <div class="wlist_main_tab1">
                     <button type="button" class="main_tap_button1">온라인으로
                        구매하기</button>
                  </div>
                  <div class="wlist_main_tab1">
                     <button type="button" class="main_tap_button2">매장 재고
                        확인하기</button>
                  </div>
               </div>
            </div>
            <div class="wlist_shoplist_bigbox">
               <div class="wlist_shoplist_box">
                  <select name="wlist_shoplist" class="wlist_shoplist">
                     <option>매장 선택</option>
                     <option>고양</option>
                     <option>광명</option>
                     <option>기흥</option>
                     <option>동부산</option>
                  </select>
               </div>
            </div>

            <c:forEach items="${wishList}" var="list">
               <div class="wlist_plist_main">
                  <div class="wlist_plist_imgbox">
                     <img src="productimages/${list.imgurl}" class="wlist_plist_img">
                  </div>
                  <div class="wlist_plist_titlebox">
                     <h4 class="wlist_plist_title">${list.pname }</h4>
                     <ul>
                        <li class="wlist_plist_title_detail">${list.kind }</li>
                        <li class="wlist_plist_title_detail">${list.color }</li>
                     </ul>
                     <div class="plist_stock_check">
                        <img src="images/plist_stock_yes.png" class="plist_stock_img">
                        <div class="plist_stock_check_text">재고 있음 : 92</div>
                     </div>
                  </div>
                  <div class="wlist_plist_bigpricebox">
                     <div class="wlist_plist_pricebox">
                        &#8361;
                        <fmt:formatNumber value="${list.price}" pattern="#,###,###" />
                     </div>
                     <div class="wlist_plist_pricebutton">
                        <div class="wlist_plist_number2">
                           <select name="wlist_product_count" class="wlist_product_count${list.pseq}">
                              <option>수량</option>
                              <c:forEach var="count" begin="1" end="${list.qty}"
                                 varStatus="status">
                                 <option value="${count}">${count}</option>
                              </c:forEach>
                           </select>
                        </div>
                        <div class="wlist_plist_delete2">
                           <button type="button" class="wlist_plist_delete_btn">
                              <img src="images/plist_delete_btn.png">
                           </button>
                        </div>
                     </div>
                  </div>
               </div>
            </c:forEach>
            <div class="wlist_nonbox1"></div>
            <div class="wlist_totalprice_box">
               <div class="wlist_totalprice_text">총 주문금액</div>
               <div class="wlist_totalprice">
                  &#8361;
                  <fmt:formatNumber value="${totalPrice}" pattern="#,###,###" />
               </div>
            </div>
            <div class="wlist_nonbox2"></div>


            <div class="wlist_guidebox">
               <div class="wlist_nonbox3"></div>
               <div class="wlist_guidebox_text">
                  <h3>쇼핑에 지치셨나요? IKEA가 도와드릴게요!</h3>
               </div>
               <img src="images/wlist_guidebox.png">
               <div class="wlist_shoplist_bigbox">
                  <div class="wlist_shoplist_box">
                     <select name="wlist_shoplist" class="wlist_shoplist">
                        <option>매장 선택</option>
                        <option>고양</option>
                        <option>광명</option>
                        <option>기흥</option>
                        <option>동부산</option>
                     </select>
                  </div>
                  <div class="wlist_nextbtnbox">
                     <button class="wlist_nextbtn">다음</button>
                  </div>
               </div>
            </div>
         </div>
      </c:otherwise>
   </c:choose>
</form>

<%@ include file="../footer.jsp"%>