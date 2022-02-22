<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style type="text/css">
/* 전체틀 */
.plist_detail_main {
	position: relative;
	width: 1200px;
	height: 1500px; /*border:1px solid black;*/
	margin: 0 auto;
	margin-top: 200px;
}

/* 이미지 */
.plist_detail_imgbigbox {
	position: relative;
	width: 800px;
	height: 800px; /*border-bottom:1px solid red;*/
	float: left;
}

.plist_detail_imgbox {
	width: 350px;
	height: 350px; /*border:1px dashed blue;*/
	float: left;
	margin-right: 45px;
	margin-bottom: 45px;
}

.plist_detail_img {
	width: 350px;
	height: 350px;
}

/* 오른쪽메뉴 */
.plist_detail_right {
	position: sticky;
	width: 400px;
	height: 450px; /*border-bottom:1px solid red;*/
	float: left;
	top: 4rem;
}

.plist_detail_right_titlebox {
	width: 400px;
	height: 80px;
	border-bottom: 1px solid gray;
}

.plist_detail_right_titlebox_title {
   width: 250px;
   height: 40px; /*border:1px dashed blue;*/
   float: left;
   font-size: 150%;
   font-weight: bold;
   line-height: 40px;
}

.plist_detail_right_titlebox_price {
   width: 150px;
   height: 40px; /*border:1px dashed blue;*/
   float: left;
   font-size: 150%;
   font-weight: bold;
   line-height: 40px;
   text-align: center;
}

.plist_detail_right_titlebox_detail {
	width: 270px;
	height: 30px; /*border:1px dashed blue;*/
	float: left;
	font-size: 90%;
	color: #484848;
	line-height: 30px;
}

.plist_detail_right_countbox {
	width: 130px;
	height: 30px;
	float: left;
}

.plist_detail_right_count {
	width: 100px;
	height: 30px;
	float: right;
}

.plist_detail_right_nonbox {
	width: 400px;
	height: 40px;
}

/* 오른쪽메뉴 버튼 */
.plist_detail_right_buttonbox {
	width: 400px;
	height: 50px; /*border:1px solid red;*/
}

.plist_detail_right_button1box {
	width: 320px;
	height: 50px; /*border:1px dashed blue;*/
	float: left;
}

.plist_detail_right_button2box {
	width: 50px;
	height: 50px; /*border:1px dashed blue;*/
	float: left;
	margin-left: 25px;
}

.plist_detail_right_button1 {
	width: 320px;
	height: 50px;
	background-color: #0058A3;
	border-style: none;
	border-radius: 25px 25px 25px 25px;
	color: white;
	font-weight: bold;
	font-size: 90%;
}

.plist_detail_right_button2 {
	width: 50px;
	height: 50px;
	background-color: white;
	border: 1px solid gray;
	border-radius: 25px;
}

/* 오른쪽메뉴 안내문구 */
.plist_detail_right_guidebox1 {
	width: 400px;
	height: 50px;
	border-bottom: 1px solid #888888;
	margin-top: 10px;
}

.plist_detail_right_guidebox2 {
	width: 400px;
	height: 50px;
	margin-top: 10px;
}

.plist_detail_right_guidebox1_imgbox {
	width: 35px;
	height: 50px;
	float: left;
	line-height: 50px;
	font-size: 80%;
}

.plist_detail_right_guidebox1_textbox {
	width: 350px;
	height: 50px;
	float: right;
	line-height: 50px;
	font-size: 80%;
}

.plist_detail_right_guidebox1_textbox3_mart {
	text-decoration: underline;
}

.plist_detail_right_guidebox2_textbox {
	width: 350px;
	height: 50px;
	float: right;
	line-height: 20px;
	font-size: 80%;
	margin-top: 5px;
}

.plist_detail_right_guidebox1_textbox1 {
	width: 350px;
	height: 50px;
	float: right;
	line-height: 50px;
	font-size: 80%;
}

.plist_detail_right_guidebox1_textbox2 {
	width: 350px;
	height: 50px;
	float: right;
	line-height: 50px;
	font-size: 80%;
	display: none;
}

.plist_detail_right_guidebox1_textbox3 {
	width: 350px;
	height: 50px;
	float: right;
	line-height: 50px;
	font-size: 80%;
}

/* 제품 설명 */
.plist_detail_contentbox {
	width: 750px;
	height: 200px; /*border:1px solid blue;*/
	float: left;
	margin-top: 30px;
}

.plist_detail_content_title {
	width: 750px;
	height: 50px;
	border-bottom: 1px solid #888888;
	line-height: 50px;
	font-weight: bold;
	font-size: 110%;
}

.plist_detail_content {
	width: 700px;
	height: 500px; /*border:1px solid red;*/
	font-weight: bold;
	font-size: 90%;
	margin-top: 10px;
	color: #666666;
}

.plist_detail_right_button1:hover {
	cursor: pointer;
}

.plist_detail_right_button2:hover {
	cursor: pointer;
}

.plist_detail_right_guidebox1_textbox span:hover {
	cursor: pointer;
}

.admin_updatepro_box {
	width: 1200px;
	margin: 0 auto;
	height: 50px;
}

.admin_updatepro_button {
	width: 100px;
	height: 50px;
	float: right;
	border: 1px solid gray;
	background-color: white;
}
</style>
<script src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
function add_wishlist() {
    var pseq = $("#pseq").val();
    var count = $("#plist_detail_right_count option:selected").val();
    location.href = "ezen.do?command=add_wishlist&qty=" + count + "&pseq="
          + pseq;
    if (count == "수량") {
       alert("수량을 선택해주세요.");
       history.go(-1);
    }
 }

 function add_cartlist() {
    var pseq = $("#pseq").val();
    var count = $("#plist_detail_right_count option:selected").val();
    location.href = "ezen.do?command=add_cartlist&qty=" + count + "&pseq="
          + pseq;
    if (count == "수량") {
       alert("재고가 없습니다.");
       history.go(-1);
    }

 }

 $(document).ready(
       function() {
          var qtycheck = ${pdto.qty};
          if (qtycheck == 0) {
             $('.plist_detail_right_guidebox1_textbox2').show();
             $('.plist_detail_right_guidebox1_textbox2').css('color',
                   'red');
             $('.plist_detail_right_guidebox1_textbox1').hide();
             $('.plist_detail_right_guidebox1_textbox3_qty').css(
                   'color', 'red');
          } else {
             $('.plist_detail_right_guidebox1_textbox3_qty').css(
                   'color', 'green');
          }
       });
 
 
 function admin_updatepro(){
    var pseq = ${pdto.pseq};
    location.href="ezen.do?command=admin_updatepro_form&pseq=" + pseq;
 }
</script>
<div class="plist_detail_main">
	<div class="plist_detail_imgbigbox">
		<div class="plist_detail_imgbox">
			<img src="productimages/${pdto.imgurl}" class="plist_detail_img">
		</div>
		<div class="plist_detail_imgbox">
			<img src="productimages/dragon1.PNG" class="plist_detail_img">
		</div>
		<div class="plist_detail_imgbox">
			<img src="productimages/dragon2.PNG" class="plist_detail_img">
		</div>
		<div class="plist_detail_imgbox">
			<img src="productimages/dragon3.PNG" class="plist_detail_img">
		</div>
	</div>
	<input type="hidden" name="pseq" id="pseq" value="${pdto.pseq}">
	<div class="plist_detail_right">
		<div class="plist_detail_right_titlebox">
			<div class="plist_detail_right_titlebox_title">${pdto.pname }</div>
			<div class="plist_detail_right_titlebox_price">
				&#8361;
				<fmt:formatNumber value="${pdto.price}" pattern="#,###,###" />
			</div>
			<div class="plist_detail_right_titlebox_detail">${pdto.kind},
				<span>${pdto.color }</span>
			</div>
			<div class="plist_detail_right_countbox">
				<select class="plist_detail_right_count"
					id="plist_detail_right_count">
					<option>수량</option>
					<c:forEach var="count" begin="1" end="${pdto.qty}"
						varStatus="status">
						<option value="${count}">${count}</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="plist_detail_right_nonbox"></div>
		<div class="plist_detail_right_buttonbox">
			<div class="plist_detail_right_button1box">
				<button class="plist_detail_right_button1" onclick="add_cartlist();">구매하기</button>
			</div>
			<div class="plist_detail_right_button2box">
				<button class="plist_detail_right_button2" onclick="add_wishlist();">
					<img src="images/zzim.PNG">
				</button>
			</div>
		</div>
		<div class="plist_detail_right_nonbox"></div>
		<div class="plist_detail_right_guidebox1">
			<div class="plist_detail_right_guidebox1_imgbox">
				<img src="images/plist_detail_truck.png">
			</div>
			<div class="plist_detail_right_guidebox1_textbox1">배송 가능</div>
			<div class="plist_detail_right_guidebox1_textbox2">배송 불가능</div>
		</div>
		<div class="plist_detail_right_guidebox1">
			<div class="plist_detail_right_guidebox1_imgbox">
				<img src="images/plist_detail_mart.png">
			</div>
			<div class="plist_detail_right_guidebox1_textbox3">
				<span class="plist_detail_right_guidebox1_textbox3_mart">${pdto.sellingarea}</span>에
				재고가 <span class=plist_detail_right_guidebox1_textbox3_qty>${pdto.qty}</span>개
				있습니다.
			</div>
		</div>
		<div class="plist_detail_right_guidebox2">
			<div class="plist_detail_right_guidebox1_imgbox">
				<img src="images/plist_detail_heart.png">
			</div>
			<div class="plist_detail_right_guidebox2_textbox">
				마음이 바뀌어도 괜찮아요. 365일 이내에 영수증과 온전한<br>상태의 제품을 가져오시면 전액 환불해드립니다.
			</div>
		</div>
	</div>
	<div class="plist_detail_contentbox">
		<div class="plist_detail_content_title">제품 설명</div>
		<div class="plist_detail_content">${pdto.content}</div>
	</div>
</div>
<c:if test="${admin.email!=null }">
<div class="admin_updatepro_box">
	<button class="admin_updatepro_button" onclick="admin_updatepro()">수정</button>
</div>
</c:if>
<%@ include file="../footer.jsp"%>
