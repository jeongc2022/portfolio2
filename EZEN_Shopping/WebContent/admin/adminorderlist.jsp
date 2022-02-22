<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsubmenu.jsp" />
<style type="text/css">
.productList_base {
	position: relative;
	width: 1100px;
	margin: 0 auto;
	text-align: center;
}

table {
	width: 1200px;
	border-collapse: collapse;
	text-align: center;
	margin-top: 10px;
	margin-bottom: 20px;
	border: 1px solid #e8e8e8;
}

.member_list_table {
	font-family: monospace, serif;
	text-align: center;
	margin-top: 20px;
}

tr, th, td {
	border-bottom: 1px solid #e8e8e8;
	font-size: 13px;
}

td {
	text-align: left;
	border: 1px solid #f3f3f3;
}

th {
	background-color: #e8e8e8;
	margin-right: 10px;
	font-size: 13px;
}

tr, th {
	height: 20px;
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	border-bottom: 1px solid navy;
}

#product_list_head {
	text-align: left;
}

.member_list_table td {
	text-align: center;
}
</style>
<div class="productList_base">
	<article style="margin-left:120px;">
		<img src="images/zzim.PNG" style="position: relative; float:left; margin-right:10px; margin-top:3px;">
      <h2 style="text-align: left; font-style: monospace; text-decoration:underline dashed;">Order List</h2>
		<form name="frmm" method="post">
           <div style="width: 70px; height: 30px; background: green; line-height: 30px; color: white; position: relative; top:40px; left:110px; cursor: pointer;" onclick="go_reuslt()">입금처리</div>
			   <input type="text" name="key" placeholder="&nbsp;회원이름"
            style="float: center; width: 500px; height: 35px; border-top-left-radius: 15px; border-top-right-radius: 15px;
             border-bottom-right-radius: 15px; border-bottom-left-radius: 15px;  
             background-color: #e8e8e8; opacity: 0.9; border: none; margin-left:-150px; margin-top:4px;" id="key">

         <input type="button" name="search" onclick="go_search_member()"
            style="position: relative; collapse; width: 40px; height: 40px; 
            background: url(images/admin_se.png) no-repeat; border: none; cursor: pointer; float: right; 
            right: 290px; top: 8px;" id="search">

			<img src="images/admin_allview.png"
				style="position: relative; float: left; width: 20px; height: 20px; top: 8px;">
			<input type="button" name="btn_total" value="전체보기"
				onclick="go_total_member()"
				style="float: left; background-color: white; border: none; text-align: left; font-weight: bold; margin-top: 10px; font-size: 15px;">
			<br>
			<table class="member_list_table">
				<tr>
				    <th><input type="checkbox" name="allcheck" id="allcheck"></th>
				    <th width="100px;">처리상태</th>
                    <th width="100px;">주문번호</th>
					<th width="100px;">주문일자</th>
					<th width="100px;">주문상품</th>
					<th>수량</th>
					<th width="100px;">이메일</th>
					<th width="100px;">이름</th>
					<th width="100px;">핸드폰번호</th>
					<th width="100px;">도로명주소</th>
					<th width="100px;">상세주소</th>
					<th width="100px;">우편번호</th>
					
				</tr>
				<c:forEach items="${olist}" var="list">
					<tr>
						<td><c:if test="${list.result=='2'}"><input type="checkbox" name="check" id="check" value="${list.edseq}" disabled></c:if><c:if test="${list.result=='1'}"><input type="checkbox" name="check" id="check" value="${list.edseq}"></c:if></td>
						<c:if test="${list.result=='1'}"><td style="color: red;">미처리</td></c:if>
						<c:if test="${list.result=='2'}"><td style="color: blue;">처리</td></c:if>
						<td>${list.eoseq}</td>
						<td>${list.orderdate}</td>
						<td>${list.pname}</td>
						<td>${list.quantity}</td>
						<td>${list.email}</td>
						<td>${list.name}</td>
						<td>${list.phone}</td>
						<td>${list.doroaddress}</td>
						<td>${list.address}</td>
						<td>${list.postnum}</td>

					</tr>
				</c:forEach>
			</table> 
		</form>
	</article>
</div>
<jsp:include page="adminfooter.jsp" />