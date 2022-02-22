<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../header.jsp"%>


<form name="formm" method="post" id="cartList">
	<div class="clist_main">
		<c:choose>
			<c:when test="${cartList.size()==0}">
				<div class="clist_non_main">

					<div class="clist_non_imgbigbox">
						<div class="clist_non_imgbox">
							<img src="./images/emtycart.png" class="cilst_non_img">
						</div>
					</div>
					<div id="clist_non_main_title">
						<h2>장바구니</h2>
						<img src="./images/emtycart_zero.png"
							class="clist_non_imgbigbox_zero">

					</div>
					<div class="clist_non_textbox">현재 장바구니가 비어있습니다.</div>
					<div class="clist_non_buttonbox">
						<button class="clist_non_button" Onclick="clist_main();">제품
							검색</button>
					</div>
					<div class="clist_footer_box">
						<div class="clist_footer_imgbox">
							<img src="images/clist_footer_1.png" class="clist_footer_img">
						</div>
						<div class="clist_footer_textbox">안전한 쇼핑</div>
						<div class="clist_footer_under_textbox">SSD 데이터 암호화로 안전한 쇼핑
						</div>

						<div class="clist_footer_imgbox2">
							<img src="images/clist_footer_2.png" class="clist_footer_img2">
						</div>
						<div class="clist_footer_textbox">반품 정책</div>
						<div class="clist_footer_under_textbox">365일 이내에 제품 환불 가능</div>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="clist_main_title">
					<h2>장바구니</h2>
				</div>
				<div class="clist_main_nonbox"></div>
				<c:if test="${cartList.size() != 0}">
					<div class="clist_pay_menu">
						<div class="clist_pay_menutab">
							<button type="button" class="main_pay_button" onclick="go_order()">결제하기</button>
						</div>
					</div>
				</c:if>
				<c:forEach items="${cartList}" var="list">
				<input type="hidden" id="pseq" value="${list.pseq}">
					<div class="clist_plist_main">
						<div class="clist_plist_imgbox">
							<img src="./productimages/${list.imgurl}" class="plist_plist_img">
						</div>
						<div class="clist_plist_titlebox">
							<h4 class="clist_plist_title">${list.pname}</h4>
							<ul>
								<li class="clist_plist_title_detail">${list.kind}</li>
								<li class="clist_plist_title_detail">${list.color}</li>

							</ul>
						</div>

						<div class="clist_plist_bigpricebox">
							<div class="clist_plist_pricebox">
								&#8361;
								<fmt:formatNumber value="${list.price}" pattern="#,###,###" />
							</div>
							<div class="clist_plist_wishbutton">
								<button type="button" class="clist_plist_wishbutton_btn">위시리스트로
									이동</button>
							</div>
							<div class="clist_plist_pricebutton">
								<div class="clist_plist_delete">
									<button type="button" class="clist_plist_delete_btn"
										onClick="go_cart_delete(${list.cseq});">

										<img src="./images/plist_delete_btn.png">
									</button>
								</div>
								<div class="clist_plist_number" name="clist_plist_number">${list.qty}</div>

							</div>
						</div>
					</div>
				</c:forEach>

				<div id="clist_under_box">
					<img src="./images/clist_under_box.png"
						style="position: relative; width: 17px; height: 19px; padding: 8px 5px 5px 5px; float: left">이
					금액에는 배송비가 포함되어 있지 않습니다.
				</div>

				<div id="clist_price_box">
					<div id="clist_price_box_left">총 주문금액</div>
					<div id="clist_price_box_right">
						<fmt:formatNumber value="${totalPrice}" type="currency" />
					</div>
				</div>
					<c:if test="${cartList.size() != 0}">
							<button type="button" class="main_pay_button" style="margin-top:50px; margin-left:200px;" onclick="go_order()">결제하기</button>
				</c:if>
			</c:otherwise>
		</c:choose>	
	</div>
</form>


<%@ include file="../footer.jsp"%>